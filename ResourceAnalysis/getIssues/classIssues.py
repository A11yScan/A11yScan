# coding=utf-8
import os.path
import foldedPage
import notFullPage
from resourceAnalysis.xmlToTree import nodeTree
import intentInfo
import getSceneAct

def get_stringText(txt):
    return (txt.split(">")[1]).split("</string")[0]

def findInString(decom_Path, issuesIds_bound):
    bounds_inOneAPK = {}
    stringText = {}
    for file in os.listdir(os.path.join(decom_Path, "res")):
        if not file.startswith("values"):
            continue
        if "strings.xml" in os.listdir(os.path.join(decom_Path, "res", file)):
            f = open(os.path.join(decom_Path, "res", file, "strings.xml"), "r")
            allTXT = f.read()
            allTXT = allTXT.split("<string ")
            for txt in allTXT:
                if not txt.startswith("name"):
                    continue
                # print(txt)
                if get_stringText(txt) in issuesIds_bound or get_stringText(txt) in stringText:
                    stringName = (txt.split("name=\"")[1]).split("\"")[0]
                    if get_stringText(txt) in stringText:
                        bounds_inOneAPK[(txt.split("name=\"")[1]).split("\"")[0]] = bounds_inOneAPK[stringText[get_stringText(txt)]]
                        # stringText[get_stringText(txt)] = (stringText[get_stringText(txt)][0], stringText[get_stringText(txt)][1] + stringName + ',')
                    else:
                        stringText[get_stringText(txt)] = stringName
                        bounds_inOneAPK[stringName] = issuesIds_bound[get_stringText(txt)]
                        del issuesIds_bound[get_stringText(txt)]
    # print stringText
                    # print get_stringText(txt)
                    # print (txt.split("name=\"")[1]).split("\"")[0]
    # print ids_inOneAPK
    # print bounds_inOneAPK
    ids_bounds_inOneAPK = dict(list(issuesIds_bound.items()) + list(bounds_inOneAPK.items()))
    # print("hhh")
    # print(ids_bounds_inOneAPK)
    return ids_bounds_inOneAPK, issuesIds_bound, bounds_inOneAPK, stringText

def get_color_issueInfo(txt):
    color_info = []
    tempTxt = (txt.split("foreground color of ")[1]).split(" and an estimated background color of ")
    foreColor = tempTxt[0]
    backColor = tempTxt[1].split('.')[0]
    color_info.append(foreColor)
    color_info.append(backColor)
    return color_info

def get_bounds(txt):
    bound = (txt.split("bounds=\"")[1]).split("\"")[0]
    return bound
def get_package(txt):
    package = (txt.split("package=\"")[1]).split("\"")[0]
    return package
def get_text(txt):
    if txt.find("text=\"") == -1:
        return ""
    # if txt.fing('title="@string/') != -1:
    #     text = (txt.split('title="@string/')[1]).split("\"")[0]
    if txt.find("text=\"@string/") != -1:
        text = (txt.split("text=\"@string/")[1]).split("\"")[0]
    else:
        text = (txt.split("text=\"")[1]).split("\"")[0]
    return text
def get_textCmponent(txt):
    if txt.find("class=\"") == -1:
        return ""
    compon = (txt.split("class=\"")[1]).split("\"")[0]
    return compon.split(".")[len(compon.split(".")) - 1]

def find_text_for_location(APKName, actName, outputsPath):
    bound_text = {}
    bound_id = {}
    package = ''
    layoutsPath = os.path.join(outputsPath, APKName, "layout")
    if os.path.exists(layoutsPath):
        if (actName + '.xml') in os.listdir(layoutsPath):
            # print(os.path.join(layoutsPath, (actName + '.xml')))
            f = open(os.path.join(layoutsPath, (actName + '.xml')), "r")
            allTXT = f.read()
            allTXT = allTXT.split("<")
            for txt in allTXT:
                if txt.find("bounds") == -1:
                    continue
                # print(txt)
                if txt.find("text") != -1:
                    bound_text[get_bounds(txt)] = (get_text(txt), get_textCmponent(txt))
                    # print(bound_text[get_bounds(txt)])
                if txt.find("resource-id") != -1:
                    id  = (txt.split("resource-id=\"")[1]).split("\"")[0]
                    if id.find(':id/') != -1:
                        bound_id[id.split(':id/')[1]] = (get_bounds(txt), get_textCmponent(txt))
                    elif id != '':
                        bound_id[id] = (get_bounds(txt), get_textCmponent(txt))
                package = get_package(txt)
                # print get_text(txt)

    # print(bound_text)
    return bound_text, bound_id, package

def classIssuesAct(outputsPath, apkName, actName, otherAppAct, bound_text, bound_id):
    issuesTxtPath = os.path.join(outputsPath, apkName, 'issues', actName, actName + '.txt')
    layoutsXmlPath = os.path.join(outputsPath, apkName, 'layout', actName + '.xml')
    issuesIds = {}
    issuesIds_bound = {}
    issuesIds_notClass = {}
    if not os.path.exists(issuesTxtPath):
        return issuesIds, otherAppAct, issuesIds_bound, issuesIds_notClass
    with open(issuesTxtPath, 'r', encoding='utf-8') as issuesfile:
        content = issuesfile.read()
        # print(content)
        for issue in content.split('\n\n'):
            issuesIdTag = 'initTag'
            issueApkName = ''
            if issue == '' or issue.startswith('The following is a list of opportunities'):
                continue
            issueId = issue.split('\n')[1]
            if issueId == 'idIsNull':
                issueId = issue.split('\n')[2]
            # print(issueId)
            if not issueId.startswith('['):
                issueApkName = issueId.split(':id/')[0]
                if issueApkName == 'android':
                    issuesIdTag = 'androidPage'
                # elif issueApkName != apkName.split('_')[0]:
                elif not apkName.startswith(issueApkName):
                    issuesIdTag = 'fromOtherApp'
                # issueId = issueId.split(':id/')[1]
                if issueId.find(':id/') != -1:
                    issueId0 = issueId.split(':id/')[1]
                else:
                    issueId0 = issueId
                if (issue.split('\n')[0] == 'TextContrastCheck' or issue.split('\n')[0] == 'ImageContrastCheck') and issueId0 in bound_id:
                    # issueId0 = issueId.split(':id/')[1]
                    # print(bound_id[issueId0])
                    issueIdText = bound_text[bound_id[issueId0][0]][0]
                    issueIdComponent = bound_text[bound_id[issueId0][0]][1]
                    # print(issueIdText)
                    color_info = get_color_issueInfo(issue.split('\n')[3])
                    if issue.split('\n')[0] == 'TextContrastCheck':
                        if issueIdComponent == 'EditText':
                            issuesIdTag = 'EditText'
                        elif issueIdText == '' or issueIdText.isspace() or color_info[0] == color_info[1]:
                            issuesIdTag = 'errorIssue'
                        else:
                            issuesIdTag = 'TextContrastCheck'
                    else:
                        if color_info[0] == color_info[1]:
                            issuesIdTag = 'errorIssue'
                        else:
                            issuesIdTag = 'ImageContrastCheck'
            else:
                issuesIdTag = 'bound'
                if issue.split('\n')[0] == 'TextContrastCheck' or issue.split('\n')[0] == 'ImageContrastCheck':
                    # zyx
                    if issueId not in bound_text:
                        issueIdText = ""
                        issueIdComponent = "TextView"
                    # zyx
                    else:
                        issueIdText = bound_text[issueId][0]
                        issueIdComponent = bound_text[issueId][1]
                    # print(issueIdText)
                    color_info = get_color_issueInfo(issue.split('\n')[3])
                    # issueIdComponent = bound_text[issueId][1]
                    if issue.split('\n')[0] == 'TextContrastCheck':
                        if issueIdComponent == 'EditText':
                            issuesIdTag = 'EditText'
                        elif issueIdText == '' or issueIdText.isspace() or color_info[0] == color_info[1]:
                            issuesIdTag = 'errorIssue'
                        else:
                            issuesIdTag = 'TextContrastCheck'
                    else:
                        if color_info[0] == color_info[1]:
                            issuesIdTag = 'errorIssue'
                        else:
                            issuesIdTag = 'ImageContrastCheck'
            # print(issueId)
            # print(issuesIdTag)
            if issuesIdTag not in issuesIds:
                issuesIds[issuesIdTag] = {}
            # if issueId not in issuesIds[issuesIdTag]:
            #     issuesIds[issuesIdTag][issueId] = []
            # issuesIds[issuesIdTag][issueId].append([issue.split('\n')[0], issue.split('\n')[3]])
            issuesIds[issuesIdTag][issueId] = [issue.split('\n')[0], issue.split('\n')[3]]

            # print(issueApkName)
        # print(issuesIds)

        # if 'fromOtherApp' in issuesIds and 'initTag' not in issuesIds:
        #     # print('otherAppIssues')
        #     otherAppAct.append(actName)

        # print(otherAppAct)
    if 'bound' in issuesIds:
        for bound in issuesIds['bound']:
            # print(issuesIds['bound'])
            # print(bound_text)
            # zyx
            if bound not in bound_text or bound_text[bound][0] == '' or bound_text[bound][0].isspace():
                continue
            # print(bound_text[bound])
            issuesIds_bound[bound_text[bound][0]] = (issuesIds['bound'][bound], bound)
    for issueT in issuesIds:
        if issueT == 'EditText' or issueT == 'errorIssue' or issueT == 'bound':
            continue
        for id_bound in issuesIds[issueT]:
            if id_bound.find(':id/') == -1:
                continue
            issuesIds_notClass[id_bound.split(':id/')[1]] = issuesIds[issueT][id_bound]
    return issuesIds, otherAppAct, issuesIds_bound, issuesIds_notClass

# issuesIds, otherAppAct = classIssuesAct(outputsPath, apkName, actName, otherAppAct)
# print(issuesIds)
# print(otherAppAct)

def classIssuesApp(outputsPath, results_folder, apkName):
    otherAppAct = []
    issuesPath = os.path.join(outputsPath, apkName, 'issues')
    decom_Path = os.path.join(results_folder, 'apktool', apkName)
    layoutsPath = os.path.join(outputsPath, apkName, 'layout')

    errorContrastIdsApk = {}
    foldedIdsApk = {}
    intentIdApk = {}
    issuesIdsApk = {}
    act_scene = getSceneAct.getScenes(outputsPath, apkName)
    if not os.path.exists(issuesPath):
        return otherAppAct, errorContrastIdsApk, foldedIdsApk, intentIdApk, issuesIdsApk
    for actName in os.listdir(issuesPath):
        # # if actName != 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2.Setumei':
        # if actName != 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2.Konomama':
        #     continue
        print(actName)
        bound_text, bound_id, package = find_text_for_location(apkName, actName, outputsPath)
        # if package != '' and not actName.startswith(package) and actName not in otherAppAct:
        # # if package != apkName.split('_')[0] and actName not in otherAppAct:
        #     print('hhh')
        #     otherAppAct.append(actName)
        issuesIds, otherAppAct, issuesIds_bound, issuesIds_notClass = classIssuesAct(outputsPath, apkName, actName, otherAppAct, bound_text, bound_id)
        print(issuesIds)
        issuesIdsApk[actName] = issuesIds
        # print(otherAppAct)
        print(issuesIds_bound)
        print('issuesIds_notClass')
        print(issuesIds_notClass)
        ids_bounds_inOneAPK, issuesIds_bound, bounds_inOneAPK, stringText = findInString(decom_Path, issuesIds_bound)
        print("bound->string->strName")
        ### bound->string->strName
        print(ids_bounds_inOneAPK)

        ### foldedPage
        issue_layoutXml = foldedPage.changeLayout_decompileAPK(decom_Path, issuesIds_notClass, ids_bounds_inOneAPK)
        print(issue_layoutXml)
        ### notFullPage
        contrastIdsAct = notFullPage.getContrastIdsAct(issuesIds)
        print('contrastIdsAct')
        print(contrastIdsAct)
        xmlPath = os.path.join(layoutsPath, actName + '.xml')
        if os.path.exists(xmlPath):
            sameLevelNodes, sameParentNodes, childsFromParent = nodeTree.xmlToTree(xmlPath)
            print(sameLevelNodes)
            print(sameParentNodes)
            print(childsFromParent)
            errorContrastIds = notFullPage.getErrorContrastIds(sameLevelNodes, sameParentNodes, contrastIdsAct)
            print('errorContrastIds0')
            print(errorContrastIds)
            if errorContrastIds != []:
                errorContrastIdsApk[actName] = errorContrastIds

            # def checkFoldedOrNot():
            actName0 = act_scene[actName]
            foldedIds = notFullPage.checkFoldedOrNot(actName0, contrastIdsAct, sameLevelNodes, sameParentNodes, issue_layoutXml, bound_text,
                                                errorContrastIds)
            print('foldedIds')
            print(foldedIds)
            if foldedIds != []:
                foldedIdsApk[actName] = foldedIds
            intentId = intentInfo.getSelectedNodes(xmlPath, sameLevelNodes, sameParentNodes, contrastIdsAct, childsFromParent,
                                    issuesIds, issuesIds_notClass)
            print("intentId")
            print(intentId)
            if intentId != []:
                intentIdApk[actName] = intentId

    print(otherAppAct)
    # issuesIds, errorContrastIds
    return otherAppAct, errorContrastIdsApk, foldedIdsApk, intentIdApk, issuesIdsApk

outputsPath = "/home/yuxin/code/rebuild1/result_230428"
results_folder = '/home/yuxin/code/rebuild1/workAccess/'
apkName = "jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2-11"
otherAppAct, errorContrastIdsApk, foldedIdsApk, intentIdApk, issuesIdsApk = classIssuesApp(outputsPath, results_folder, apkName)

