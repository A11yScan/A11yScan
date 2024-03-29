import pandas as pd
import os
import re

# 系统路径分隔符
sysSep = os.sep
# 此处路径为result文件夹的位置
resultDir = os.getcwd() + sysSep + "result"
# 遍历result文件夹
for root, dirs, files in os.walk(resultDir):
    for file in files:
        if file.endswith(".csv"):
            csvPath = root + sysSep + file
            try:
                data = pd.read_csv(csvPath, header=None)
            except:
                pass
            allinfo = ""
            # 对于data的每一行开始处理
            tmpInfoList = []
            for i in range(len(data)):
                info = ""
                rectLoc = re.findall(r"\d+", data.iloc[i, 8])
                bound = "[%s, %s] [%s, %s]\n" % (rectLoc[0], rectLoc[1], rectLoc[2], rectLoc[3])
                tmpInfo = data.iloc[i, 2].split(".")[-1] + " + " + bound  + " + " + data.iloc[i, 3]
                # 添加检查的类型
                info += data.iloc[i, 2].split(".")[-1] + "\n"
                # 添加位置或这组件信息
                if pd.isnull(data.iloc[i, 7]):
                    # rectLoc = re.findall(r"\d+", data.iloc[i, 8])
                    # info += "[%s, %s] [%s, %s]\n" % (rectLoc[0], rectLoc[1], rectLoc[2], rectLoc[3])
                    info += "idIsNull" + "\n"
                    info += bound
                else:
                    info += data.iloc[i, 7] + "\n"
                    info += bound
                    # rectLoc = re.findall(r"\d+", data.iloc[i, 8])
                    # info += "[%s, %s] [%s, %s]\n" % (rectLoc[0], rectLoc[1], rectLoc[2], rectLoc[3])
                # 添加检查结果
                info += data.iloc[i, 3] + "\n"
                info += "\n"
                # if info not in allinfo:
                if tmpInfo not in tmpInfoList:
                    allinfo += info
                    tmpInfoList.append(tmpInfo)
            # 创建和写入txt文件
            txtPath = csvPath.replace(".csv", ".txt")
            # if os.path.exists(txtPath):
                # os.remove(txtPath)
            with open(txtPath, "w") as txtFile:
                txtFile.write(allinfo)
