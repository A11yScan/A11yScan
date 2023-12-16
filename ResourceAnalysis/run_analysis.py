# coding=utf-8
import shutil
import os
from resourceAnalysis.getIssues import classIssues

# A11yScan
def remove_file(old_path, new_path):
    print(old_path)
    print(new_path)
    filelist = os.listdir(old_path) #列出该目录下的所有文件,listdir返回的文件列表是不包含路径的。
    print(filelist)
    for file in filelist:
        src = os.path.join(old_path, file)
        dst = os.path.join(new_path, file)
        # print('src:', src)
        # print('dst:', dst)
        shutil.move(src, dst)

def decompile(eachappPath, decompileAPKPath):
    print ("decompiling...")
    cmd = "apktool d {0} -f -o {1}".format(eachappPath, decompileAPKPath)
    os.system(cmd)

def de_re_pack(apksPath, apkname, workPath):
    decompilePath = os.path.join(workPath, "apktool", apkname)
    if not os.path.exists(decompilePath):
        os.makedirs(decompilePath)
    decompile(apksPath, decompilePath)

def analyseApk(apksPath, workPath, jadxPath):
    jadxCMD = "jadx -d out classes.dex"
    unzipFPath = os.path.join(workPath, 'unzipF')
    jarFPath = os.path.join(workPath, 'jarF1')
    if not os.path.exists(unzipFPath):
        os.makedirs(unzipFPath)
    if not os.path.exists(jarFPath):
        os.makedirs(jarFPath)
    for apk in os.listdir(apksPath):
        print(apk)
        if not apk.endswith('.apk'):
            continue
        apkName = apk.split('.apk')[0]
        os.rename(os.path.join(apksPath, apk), os.path.join(apksPath, apkName + '.zip'))
        unzipCMD = 'unzip -d {0} {1}'.format(os.path.join(unzipFPath, apkName), os.path.join(apksPath, apkName + '.zip'))
        os.system(unzipCMD)
        classesDexPath = os.path.join(unzipFPath, apkName, 'classes.dex')
        shutil.copyfile(classesDexPath, os.path.join(jadxPath, 'classes.dex'))
        os.system(jadxCMD)
        shutil.move(os.path.join(jadxPath, "out"), jarFPath)
        os.rename(os.path.join(jarFPath, "out"), os.path.join(jarFPath, apkName))
        os.remove(os.path.join(jadxPath, 'classes.dex'))
        # break
        de_re_pack(apksPath, apkName, workPath)


def run(results_folder, outputsPath):
    errorContrastIdsAll = {}
    foldedIdsAll = {}
    intentIdAll = {}
    issuesIdsAll = {}

    for apkName in os.listdir(outputsPath):
        print(apkName)
        # apkName = apkName.replace('-', '_')
        # outputsPath, apkName = getOutPath(apkName)
        otherAppAct, errorContrastIdsApk, foldedIdsApk, intentIdApk, issuesIdsApk = classIssues.classIssuesApp(outputsPath, results_folder, apkName)
        errorContrastIdsAll[apkName] = errorContrastIdsApk
        foldedIdsAll[apkName] = foldedIdsApk
        intentIdAll[apkName] = intentIdApk
        issuesIdsAll[apkName] = issuesIdsApk
    return errorContrastIdsAll, foldedIdsAll, intentIdAll, issuesIdsAll

if __name__ == '__name__':
    pwd_dir = os.getcwd()
    apksPath = '/ExplorDetector/apks'
    workPath = os.path.join(pwd_dir, 'workAccess')
    jadxPath = "/home/software/jadx-1.3.0/bin"
    outputsPath = "/ExplorDetector/result"
    analyseApk(apksPath, workPath, jadxPath)
    errorContrastIdsAll, foldedIdsAll, intentIdAll, issuesIdsAll = run(workPath, outputsPath)
    print(errorContrastIdsAll)
    print(foldedIdsAll)
    print(intentIdAll)
    print(issuesIdsAll)
