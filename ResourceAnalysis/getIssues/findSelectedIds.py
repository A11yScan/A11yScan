# coding=utf-8
import os

# jarFPath = '/home/zyx/Desktop/work0/jarF1'

def findfiles(path, fileList):
    # 首先遍历当前目录所有文件及文件夹
    file_list = os.listdir(path)
    # 循环判断每个元素是否是文件夹还是文件，是文件夹的话，递归
    for file in file_list:
    	# 利用os.path.join()方法取得路径全名，并存入cur_path变量，否则每次只能遍历一层目录
        cur_path = os.path.join(path, file)
        # 判断是否是文件夹
        if os.path.isdir(cur_path):
            findfiles(cur_path, fileList)
        elif file.endswith(".java"):
            fileList.append(cur_path)
            # print(cur_path)
    return list(set(fileList))

def getColorId(allText):
    # print(allText)
    idList = []
    txtList = allText.split(".setTextColor")
    i = 0
    while i < len(txtList)-1:
        txt = txtList[i]
        i = i + 1
        id = txt.split(" ")[-1].split(".")[-1]
        # print(txt)
        # print(id)
        idList.append(id)
    # print(list(set(idList)))
    return list(set(idList))

def getColorIdOriginal(javaFile, idList):
    idO_idR = {}
    file_object1 = open(javaFile, 'r')
    javaFileList = []
    while True:
        line = file_object1.readline()
        if line:
            # print(line)
            for idR in idList:
                if line.find(idR) != -1 and line.find("findViewById(") != -1:
                    idO = line.split("findViewById(")[1].split(")")[0].split(".")[-1]
                    javaFileList.append(javaFile)
                    idO_idR[idO] = (idR, javaFileList)
                # else:
                #     idO_idR[idR] = ""
        else:
            break
    # print(idO_idR)
    return idO_idR

# javaFile = "/home/zyx/Desktop/work0/jarF1/com.polaz.fxcash/sources/com/polaz/fxcashapp/OutputsActivity.java"
# idList = ['tvStatus']
# getColorIdOriginal(javaFile, idList)

def hasColorSetting0(javaFile):
    file_object = open(javaFile, 'r')  # 创建一个文件对象，也是一个可迭代对象
    all_the_text = file_object.read()  # 结果为str类型
    # print(type(all_the_text))
    # print(all_the_text)
    idO_idR = {}
    # if all_the_text.find("setTextColor") != -1:
    if all_the_text.find(".setSelected(") != -1 or all_the_text.find("setColorFilter") != -1:
    # if all_the_text.find("setColorFilter") != -1:
        # idList = getColorId(all_the_text)
        # idO_idR = getColorIdOriginal(javaFile, idList)
        print(all_the_text)
        print(javaFile)
        # print(idList)
        # print(idO_idR)
        # print(all_the_text)
        # return 1, javaFile, idO_idR
        return 1, javaFile
    # else:
    #     print(javaFile)
    # return 0, javaFile, idO_idR
    return 0, javaFile

# javaFile = "/home/zyx/Desktop/work0/jarF1/com.polaz.fxcash/sources/com/polaz/fxcashapp/OutputsActivity.java"
# hasColorSetting(javaFile)
def hasColorSetting(javaFile, selectedIds, selectedIdsTemp, idsInJavaSet):
    # selectedIds = []
    # idsInJavaSet = {}
    # selectedIdsTemp = []
    file_object = open(javaFile, 'r')
    all_the_text = file_object.readlines()
    # print(all_the_text)
    for line in all_the_text:
        # print(line)
        if line.find(".findViewById(") != -1:
            if line.split(".findViewById(")[1].split(")")[0].find(".") == -1:
                continue
            if line.find(".setSelected(") != -1:
                colorId = line.split(".setSelected(")[0]
                selectedIds.append(colorId.split(".findViewById(")[1].split(")")[0])
                # print(colorId.split(".findViewById(")[1].split(")")[0])
                # print(javaFile)
            elif line.find(".setColorFilter") != -1:
                colorId = line.split(".setColorFilter(")[0]
                selectedIds.append(colorId.split(".findViewById(")[1].split(")")[0])
                # print(colorId.split(".findViewById(")[1].split(")")[0])
                # print(javaFile)
            elif line.find(" = ") != -1:
                # print("else ids")
                # print(line.split(".findViewById(")[1].split(")")[0])
                # print(line.split(" = ")[0])
                idsInJavaSet[line.split(" = ")[0].split(" ")[-1].split(".")[-1]] = line.split(".findViewById(")[1].split(")")[0]
            # print(line.split(" = ")[0].split(" ")[-1])
        if line.find(".setSelected(") != -1:
            colorId = line.split(".setSelected(")[0]
            # print(colorId)
            # print(javaFile)
            selectedIdsTemp.append(colorId.split(" ")[-1].split(".")[-1])
        if line.find(".setColorFilter") != -1:
            colorId = line.split(".setColorFilter(")[0]
            # print(colorId)
            # print(javaFile)
    return selectedIds, selectedIdsTemp, idsInJavaSet

def splitList(id_apk):
    id_apkT = {}
    for apk in id_apk:
        id_apkT[apk] = {}
        idO_idRT = {}
        for idO in id_apk[apk]:
            idO_idRT[idO] = (id_apk[apk][idO][0], list(set(id_apk[apk][idO][1])))
        id_apkT[apk] = idO_idRT
    return id_apkT

def main(apkPath):
    num = 0
    for apk in os.listdir(apkPath):
        # print(apk)
        selectedIds = []
        idsInJavaSet = {}
        selectedIdsTemp = []

        fileList = []
        fileList = findfiles(os.path.join(apkPath, apk), fileList)
        for javaFile in fileList:
            selectedIds, selectedIdsTemp, idsInJavaSet = hasColorSetting(javaFile, selectedIds, selectedIdsTemp, idsInJavaSet)
        for idTemp in selectedIdsTemp:
            if idTemp in idsInJavaSet:
                # print(idsInJavaSet[idTemp])
                selectedIds.append(idsInJavaSet[idTemp])
        # print(apk)
        # print(selectedIds)
        selectedIds = [sId.split(".")[-1] for sId in selectedIds]
        # print(selectedIds)
        if selectedIds != []:
            print(apk)
            print(selectedIds)
            num = num +1
    print(num)


# main(jarFPath)

def getSelectedIds(jarFPath, apkName):
    selectedIds = []
    idsInJavaSet = {}
    selectedIdsTemp = []

    fileList = []
    fileList = findfiles(os.path.join(jarFPath, apkName), fileList)
    for javaFile in fileList:
        selectedIds, selectedIdsTemp, idsInJavaSet = hasColorSetting(javaFile, selectedIds, selectedIdsTemp,
                                                                     idsInJavaSet)
    for idTemp in selectedIdsTemp:
        if idTemp in idsInJavaSet:
            # print(idsInJavaSet[idTemp])
            selectedIds.append(idsInJavaSet[idTemp])
    # print(apk)
    # print(selectedIds)
    selectedIds = [sId.split(".")[-1] for sId in selectedIds]
    print(selectedIds)
    return selectedIds

# apkName = "com.eventyay.organizer_17"
# selectedIds = getSelectedIds(jarFPath, apkName)

# TextView textView = (TextView) toolbar.findViewById(R.id.toolbar_title);
# textView.setTextColor(this.mToolbarWidgetColor);
# textView.setText(this.mToolbarTitle);