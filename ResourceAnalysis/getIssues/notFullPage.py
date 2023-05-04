# coding=utf-8
from resourceAnalysis.xmlToTree import nodeTree

def checkSizeSameOrNot(boundsList):
    x_y = []
    for bound in boundsList:
        y0 = int(bound.split(',')[1].split(']')[0])
        y1 = int(bound.split(',')[2].split(']')[0])
        x0 = int(bound.split(',')[0].split('[')[1])
        x1 = int(bound.split(',')[1].split('[')[1])
        x = x1 - x0
        y = y1 - y0
        x_y.append((x, y))
    x_y0 = x_y[0]
    for i in range(0, len(x_y)):
        if x_y[i] != x_y0:
            if x_y[i][0] != x_y0[0] and x_y[i][1] != x_y0[1]:
                return 0
            return 1
    return 0

def getContrastIdsAct(issuesIds):
    contrastIdsAct = []
    for issuesIdTag in issuesIds:
        for issueId in issuesIds[issuesIdTag]:
            # print(issuesIds[issuesIdTag][issueId])
            if issuesIds[issuesIdTag][issueId][0] == 'Text contrast' or issuesIds[issuesIdTag][issueId][0] == 'Image contrast':
                contrastIdsAct.append(issueId)
    # print(contrastIdsAct)
    return contrastIdsAct


# # notFullPage1
# def getErrorContrastIds(contrastIdsAct, issue_layoutXml):
#     errorContrastIds = []
#
#     for issueId in contrastIdsAct:
#         # print(issueId)
#         id_bounds = {}
#         for idsList in sameLevelNodes:
#             for id in idsList:
#                 if id == 0:
#                     continue
#                 if id.split('+')[0] != 'NULL':
#                     if id.split('+')[0] not in id_bounds:
#                         id_bounds[id.split('+')[0]] = []
#                     bound = id.split('+')[1]
#                     id_bounds[id.split('+')[0]].append(bound)
#         print(id_bounds)
#
#         if issueId.find(':id/') != -1:
#             # print(id_bounds[issueId])
#             # print(checkSizeSameOrNot(id_bounds[issueId]))
#             if checkSizeSameOrNot(id_bounds[issueId]) == 1:
#                 print(issueId)
#                 errorContrastIds.append(issueId)
#     return errorContrastIds

# notFullPage
def getErrorContrastIds(sameLevelNodes, sameParentNodes, contrastIdsAct):
    errorContrastIds = []

    for issueId in contrastIdsAct:
        # print(issueId)
        issueId_id_bounds = {}
        if issueId.find(':id/') != -1:
            for idsList in sameParentNodes:
                for id in idsList:
                    if id.split('+')[0] != 'NULL' and id.split('+')[0] == issueId:
                        if str(idsList) not in issueId_id_bounds:
                            issueId_id_bounds[str(idsList)] = []
                        issueId_id_bounds[str(idsList)].append(id.split('+')[1])
        # print(issueId_id_bounds)
        if issueId.startswith('['):
            for idsList in sameParentNodes:
                for id in idsList:
                    if id.split('+')[1] == issueId:
                        if str(idsList) not in issueId_id_bounds:
                            issueId_id_bounds[str(idsList)] = []
                        issueId_id_bounds[str(idsList)].append(id.split('+')[1])
        for issueId_id_bound in issueId_id_bounds:
            if checkSizeSameOrNot(issueId_id_bounds[issueId_id_bound]) == 1:
                # print(issueId_id_bound)
                # print(issueId)
                errorContrastIds.append(issueId)
    return errorContrastIds
def getErrorContrastIds0(sameLevelNodes, sameParentNodes, contrastIdsAct):
    errorContrastIds = []

    id_bounds = {}
    for idsList in sameLevelNodes:
        for id in idsList:
            if id == 0:
                continue
            if id.split('+')[0] != 'NULL':
                if id.split('+')[0] not in id_bounds:
                    id_bounds[id.split('+')[0]] = []
                bound = id.split('+')[1]
                id_bounds[id.split('+')[0]].append(bound)
    print(id_bounds)

    for issueId in contrastIdsAct:
        # print(issueId)
        if issueId.find(':id/') != -1:
            # print(id_bounds[issueId])
            # print(checkSizeSameOrNot(id_bounds[issueId]))
            if checkSizeSameOrNot(id_bounds[issueId]) == 1:
                print(issueId)
                errorContrastIds.append(issueId)
        # ### zyx
        # elif issueId.startswith('['):
        #     for idsList in sameLevelNodes:
        #         for id in idsList:
        #             if id == 0:
        #                 continue
        #             if id.split('+')[1] == issueId:
        #                 nodesNum = len(idsList)
        #                 print(nodesNum)
        #     textBound = bound_text[issueId][0]
        #     print(textBound)
        #     for idsList1 in sameLevelNodes1:
        #         for id1 in idsList1:
        #             if id1 == 0:
        #                 continue
        #             if id1.split('+')[2] == textBound:
        #                 nodesNum1 = len(idsList1)
        #                 print(nodesNum1)
        #
        #     if nodesNum != nodesNum1:
        #         print(issueId)
        #         errorContrastIds.append(issueId)
    return errorContrastIds

# # 1
# # sameLevelNodes = [[0], ['NULL+[0,0][1080,1794]'], ['NULL+[0,0][1080,1794]', 'android:id/statusBarBackground+[0,0][1080,63]'], ['android:id/content+[0,0][1080,1794]'], ['NULL+[0,0][1080,1794]'], ['com.edvard.gringosho:id/tit+[0,0][1080,210]', 'android:id/list+[26,236][1054,1663]', 'com.edvard.gringosho:id/Banner+[0,1663][1080,1794]'], ['com.edvard.gringosho:id/ads+[26,92][118,184]', 'com.edvard.gringosho:id/share+[171,92][263,184]', 'com.edvard.gringosho:id/menu+[988,105][1054,171]', 'com.edvard.gringosho:id/panel_content+[26,236][1054,499]', 'com.edvard.gringosho:id/panel_content+[26,499][1054,762]', 'com.edvard.gringosho:id/panel_content+[26,762][1054,1025]', 'com.edvard.gringosho:id/panel_content+[26,1025][1054,1288]', 'com.edvard.gringosho:id/panel_content+[26,1288][1054,1551]', 'com.edvard.gringosho:id/panel_content+[26,1551][1054,1663]', 'NULL+[0,1663][1080,1794]', 'NULL+[0,1663][20,1683]'], ['com.edvard.gringosho:id/fave+[65,328][144,407]', 'com.edvard.gringosho:id/cardView+[144,262][818,473]', 'com.edvard.gringosho:id/la+[844,288][1002,446]', 'com.edvard.gringosho:id/fave+[65,591][144,670]', 'com.edvard.gringosho:id/cardView+[144,525][818,736]', 'com.edvard.gringosho:id/la+[844,551][1002,709]', 'com.edvard.gringosho:id/fave+[65,854][144,933]', 'com.edvard.gringosho:id/cardView+[144,788][818,999]', 'com.edvard.gringosho:id/la+[844,814][1002,972]', 'com.edvard.gringosho:id/fave+[65,1117][144,1196]', 'com.edvard.gringosho:id/cardView+[144,1051][818,1262]', 'com.edvard.gringosho:id/la+[844,1077][1002,1235]', 'com.edvard.gringosho:id/fave+[65,1380][144,1459]', 'com.edvard.gringosho:id/cardView+[144,1314][818,1525]', 'com.edvard.gringosho:id/la+[844,1340][1002,1498]', 'com.edvard.gringosho:id/fave+[65,1643][144,1663]', 'com.edvard.gringosho:id/cardView+[144,1577][818,1663]', 'com.edvard.gringosho:id/la+[844,1603][1002,1663]'], ['com.edvard.gringosho:id/label+[144,262][818,473]', 'com.edvard.gringosho:id/img+[844,288][1002,446]', 'NULL+[883,327][962,406]', 'com.edvard.gringosho:id/label+[144,525][818,736]', 'com.edvard.gringosho:id/img+[844,551][1002,709]', 'NULL+[883,590][962,669]', 'com.edvard.gringosho:id/label+[144,788][818,999]', 'com.edvard.gringosho:id/img+[844,814][1002,972]', 'NULL+[883,853][962,932]', 'com.edvard.gringosho:id/label+[144,1051][818,1262]', 'com.edvard.gringosho:id/img+[844,1077][1002,1235]', 'NULL+[883,1116][962,1195]', 'com.edvard.gringosho:id/label+[144,1314][818,1525]', 'com.edvard.gringosho:id/img+[844,1340][1002,1498]', 'NULL+[883,1379][962,1458]', 'com.edvard.gringosho:id/label+[144,1577][818,1663]', 'com.edvard.gringosho:id/img+[844,1603][1002,1663]', 'NULL+[883,1642][962,1663]']]
# # #
# # # sameParentNodes = [['NULL+[0,0][1080,1794]'], ['NULL+[0,0][1080,1794]', 'android:id/statusBarBackground+[0,0][1080,63]'], ['android:id/content+[0,0][1080,1794]'], ['NULL+[0,0][1080,1794]'], ['com.edvard.gringosho:id/tit+[0,0][1080,210]', 'android:id/list+[26,236][1054,1663]', 'com.edvard.gringosho:id/Banner+[0,1663][1080,1794]'], ['com.edvard.gringosho:id/ads+[26,92][118,184]', 'com.edvard.gringosho:id/share+[171,92][263,184]', 'com.edvard.gringosho:id/menu+[988,105][1054,171]'], ['com.edvard.gringosho:id/panel_content+[26,236][1054,499]', 'com.edvard.gringosho:id/panel_content+[26,499][1054,762]', 'com.edvard.gringosho:id/panel_content+[26,762][1054,1025]', 'com.edvard.gringosho:id/panel_content+[26,1025][1054,1288]', 'com.edvard.gringosho:id/panel_content+[26,1288][1054,1551]', 'com.edvard.gringosho:id/panel_content+[26,1551][1054,1663]'], ['NULL+[0,1663][1080,1794]', 'NULL+[0,1663][20,1683]'], ['com.edvard.gringosho:id/fave+[65,328][144,407]', 'com.edvard.gringosho:id/cardView+[144,262][818,473]', 'com.edvard.gringosho:id/la+[844,288][1002,446]'], ['com.edvard.gringosho:id/fave+[65,591][144,670]', 'com.edvard.gringosho:id/cardView+[144,525][818,736]', 'com.edvard.gringosho:id/la+[844,551][1002,709]'], ['com.edvard.gringosho:id/fave+[65,854][144,933]', 'com.edvard.gringosho:id/cardView+[144,788][818,999]', 'com.edvard.gringosho:id/la+[844,814][1002,972]'], ['com.edvard.gringosho:id/fave+[65,1117][144,1196]', 'com.edvard.gringosho:id/cardView+[144,1051][818,1262]', 'com.edvard.gringosho:id/la+[844,1077][1002,1235]'], ['com.edvard.gringosho:id/fave+[65,1380][144,1459]', 'com.edvard.gringosho:id/cardView+[144,1314][818,1525]', 'com.edvard.gringosho:id/la+[844,1340][1002,1498]'], ['com.edvard.gringosho:id/fave+[65,1643][144,1663]', 'com.edvard.gringosho:id/cardView+[144,1577][818,1663]', 'com.edvard.gringosho:id/la+[844,1603][1002,1663]'], ['com.edvard.gringosho:id/label+[144,262][818,473]'], ['com.edvard.gringosho:id/img+[844,288][1002,446]', 'NULL+[883,327][962,406]'], ['com.edvard.gringosho:id/label+[144,525][818,736]'], ['com.edvard.gringosho:id/img+[844,551][1002,709]', 'NULL+[883,590][962,669]'], ['com.edvard.gringosho:id/label+[144,788][818,999]'], ['com.edvard.gringosho:id/img+[844,814][1002,972]', 'NULL+[883,853][962,932]'], ['com.edvard.gringosho:id/label+[144,1051][818,1262]'], ['com.edvard.gringosho:id/img+[844,1077][1002,1235]', 'NULL+[883,1116][962,1195]'], ['com.edvard.gringosho:id/label+[144,1314][818,1525]'], ['com.edvard.gringosho:id/img+[844,1340][1002,1498]', 'NULL+[883,1379][962,1458]'], ['com.edvard.gringosho:id/label+[144,1577][818,1663]'], ['com.edvard.gringosho:id/img+[844,1603][1002,1663]', 'NULL+[883,1642][962,1663]']]
# # issuesIds = {'initTag': {'com.edvard.gringosho:id/ads': ['Touch target', "This item's size is 35dp x 35dp. Consider making this touch target 48dp wide and 48dp high or larger."], 'com.edvard.gringosho:id/share': ['Touch target', "This item's size is 35dp x 35dp. Consider making this touch target 48dp wide and 48dp high or larger."], 'com.edvard.gringosho:id/menu': ['Touch target', "This item's size is 25dp x 25dp. Consider making this touch target 48dp wide and 48dp high or larger."], 'com.edvard.gringosho:id/fave': ['Touch target', "This item's size is 30dp x 30dp. Consider making this touch target 48dp wide and 48dp high or larger. A parent container may be handling touch events for this item. If selecting the larger container performs the same action as selecting this item, consider defining this item as not clickable. If a different action is performed, consider increasing the size of this item."]}, 'errorIssue': {'com.edvard.gringosho:id/label': ['Text contrast', "The item's text contrast ratio is 1.00. This ratio is based on an estimated foreground color of #FAF9FD and an estimated background color of #FAF9FD. Consider increasing this item's text contrast ratio to 3.00 or greater."], 'com.edvard.gringosho:id/share': ['Image contrast', "The image's contrast ratio is 1.62. This ratio is based on an estimated foreground color of #2026CB and an estimated background color of #066A9D. Consider increasing this ratio to 3.00 or greater."]}}
#
# sameLevelNodes = [[0], ['NULL+[0,0][1080,1794]'], ['NULL+[0,0][1080,1794]'], ['android:id/content+[0,63][1080,1794]'], ['jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/allview+[0,63][1080,1794]'], ['jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/textView1+[8,71][1072,142]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/textView1+[15,158][1064,209]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/textView1+[8,225][1072,288]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/scrollView1+[0,296][1080,821]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/textView1+[8,829][1072,892]', 'NULL+[0,900][1080,998]', 'NULL+[192,1006][888,1133]', 'NULL+[435,1146][645,1251]'], ['NULL+[0,296][1080,821]', 'NULL+[8,908][1080,990]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button7+[203,1017][413,1122]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button7+[435,1017][645,1122]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button7+[667,1017][877,1122]'], ['jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/textView1+[8,304][402,370]', 'NULL+[145,389][934,507]', 'NULL+[145,526][934,592]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/textView1+[8,608][402,674]', 'NULL+[145,690][934,808]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[16,916][147,982]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button3+[163,916][294,982]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[310,916][441,982]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button3+[457,916][588,982]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[604,916][735,982]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[751,916][882,982]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button3+[898,916][1029,982]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[1045,916][1080,982]'], ['jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[145,389][408,507]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button3+[408,389][671,507]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[671,389][934,507]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[145,526][408,592]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button3+[408,526][671,592]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button3+[671,526][934,592]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[145,690][408,808]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button3+[408,690][671,808]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[671,690][934,808]']]
#
# sameParentNodes = [['NULL+[0,0][1080,1794]'], ['NULL+[0,0][1080,1794]'], ['android:id/content+[0,63][1080,1794]'], ['jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/allview+[0,63][1080,1794]'], ['jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/textView1+[8,71][1072,142]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/textView1+[15,158][1064,209]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/textView1+[8,225][1072,288]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/scrollView1+[0,296][1080,821]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/textView1+[8,829][1072,892]', 'NULL+[0,900][1080,998]', 'NULL+[192,1006][888,1133]', 'NULL+[435,1146][645,1251]'], ['NULL+[0,296][1080,821]'], ['NULL+[8,908][1080,990]'], ['jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button7+[203,1017][413,1122]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button7+[435,1017][645,1122]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button7+[667,1017][877,1122]'], ['jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/textView1+[8,304][402,370]', 'NULL+[145,389][934,507]', 'NULL+[145,526][934,592]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/textView1+[8,608][402,674]', 'NULL+[145,690][934,808]'], ['jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[16,916][147,982]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button3+[163,916][294,982]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[310,916][441,982]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button3+[457,916][588,982]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[604,916][735,982]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[751,916][882,982]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button3+[898,916][1029,982]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[1045,916][1080,982]'], ['jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[145,389][408,507]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button3+[408,389][671,507]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[671,389][934,507]'], ['jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[145,526][408,592]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button3+[408,526][671,592]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button3+[671,526][934,592]'], ['jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[145,690][408,808]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button3+[408,690][671,808]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6+[671,690][934,808]']]
#
# issuesIds = {'initTag': {'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button6': ['Text contrast', "The item's text contrast ratio is 4.48. This ratio is based on an estimated foreground color of #955423 and an estimated background color of #F5DEB3. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."], 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button3': ['Item descriptions', 'This clickable item\'s speakable text: "Medium jug Medium bottle" is identical to that of 1 other item(s).'], 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/button7': ['Touch target', "This item's height is 40dp. Consider making the height of this touch target 48dp or larger."], 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/textView1': ['Text contrast', "The item's text contrast ratio is 3.26. This ratio is based on an estimated foreground color of #FFFFFF and an estimated background color of #E46C0A. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."]}, 'bound': {'[435,1146][645,1251]': ['Touch target', "This item's height is 40dp. Consider making the height of this touch target 48dp or larger."]}}
#
# contrastIdsAct = getContrastIdsAct(issuesIds)
# print(contrastIdsAct)
# errorContrastIds = getErrorContrastIds(sameLevelNodes, sameParentNodes, contrastIdsAct)
# print(errorContrastIds)
def findXml(actName, issue_layoutXml):
    layoutXmlPaths = issue_layoutXml[0]
    for xml in issue_layoutXml:
        if actName == xml.split('/')[-1].split('.')[0]:
            layoutXmlPaths = xml
    return layoutXmlPaths

def checkFoldedOrNot(actName, contrastIdsAct, sameLevelNodes, sameParentNodes, issue_layoutXml, bound_text, errorContrastIds0):
    ### foldedIds may have issue
    errorContrastIds = []
    for issueId in contrastIdsAct:
        issueIdT = issueId
        if issueId.find(':id/') != -1:
            issueIdT = issueId.split(':id/')[1]
        nodeTag = 0

        if issueIdT not in issue_layoutXml:
            nodeTag = 1
            continue
        if len(issue_layoutXml[issueIdT]) != 1 and findXml(actName, issue_layoutXml[issueIdT]) != 'NULL':
            layoutXmlPaths = findXml(actName, issue_layoutXml[issueIdT])
        else:
            layoutXmlPaths = issue_layoutXml[issueIdT]
        if not isinstance(layoutXmlPaths, list):
            layoutXmlPaths = [layoutXmlPaths]
        for layoutXmlPath in layoutXmlPaths:
            sameLevelNodes1, sameParentNodes1, childsFromParent1 = nodeTree.layoutXmlToTree(layoutXmlPath)
            # print(sameLevelNodes)
            # print(sameParentNodes)
            # print(sameLevelNodes1)
            # print(sameParentNodes1)
            # print(issueId)

            if issueId.startswith('['):
                for idsList in sameLevelNodes:
                    for id in idsList:
                        if id == 0:
                            continue
                        if id.split('+')[1] == issueId:
                            nodesNum = len(idsList)
                            # print(nodesNum)
                for idsList in sameParentNodes:
                    for id in idsList:
                        if id == 0:
                            continue
                        if id.split('+')[1] == issueId:
                            nodesNumP = len(idsList)
                            # print(nodesNumP)
                textBound = bound_text[issueId][0]
                # print(textBound)
                # print(sameLevelNodes1)
                for idsList1 in sameLevelNodes1:
                    for id1 in idsList1:
                        if id1 == 0:
                            continue
                        if id1.find('+') != -1 and id1.split('+')[2] == textBound:
                            nodesNum1 = len(idsList1)
                            # print(nodesNum1)
                for idsList1 in sameParentNodes1:
                    for id1 in idsList1:
                        if id1.find('+') != -1 and id1.split('+')[2] == textBound:
                            nodesNumP1 = len(idsList1)
                            # print(nodesNum1)

                if nodesNum == nodesNum1 or nodesNumP == nodesNum1 or nodesNumP == nodesNumP1:
                    nodeTag = 1
                # if nodesNum != nodesNum1:
                #     print(issueId)
                #     errorContrastIds.append(issueId)

            elif issueId.find(':id/') != -1:
                for idsList in sameLevelNodes:
                    for id in idsList:
                        if id == 0:
                            continue
                        if id.split('+')[0] == issueId:
                            nodesNumL = len(idsList)
                            # print(nodesNumL)
                for idsList in sameParentNodes:
                    for id in idsList:
                        if id.split('+')[0] == issueId:
                            nodesNumLP = len(idsList)
                            # print(nodesNumLP)
                issueId1 = issueId.split(':id/')[1]
                # print(issueId1)
                # print(sameLevelNodes1)
                nodesNumL1 = 0
                nodesNumLP1 = 0
                nodesNumL = 0
                nodesNumLP = 0
                for idsList1 in sameLevelNodes1:
                    for id1 in idsList1:
                        if id1 == 0:
                            continue
                        if id1.find('@id/') != -1 and id1.split('+')[1].split('@id/')[1] == issueId1:
                            nodesNumL1 = len(idsList1)

                            for idsL in idsList1:
                                if idsL.split('+')[0] == 'com.google.ads.AdView':
                                    nodesNumL1 = nodesNumL1 -1
                            # print(nodesNumL1)
                for idsList1 in sameParentNodes1:
                    for id1 in idsList1:
                        if id1.find('@id/') != -1 and id1.split('+')[1].split('@id/')[1] == issueId1:
                            nodesNumLP1 = len(idsList1)

                            for idsL in idsList1:
                                if idsL.split('+')[0] == 'com.google.ads.AdView':
                                    nodesNumLP1 = nodesNumLP1 -1
                            # print(nodesNumL1)
                if nodesNumL == nodesNumL1 or nodesNumLP == nodesNumL1 or nodesNumLP == nodesNumLP1:
                    nodeTag = 1
        if nodeTag != 1:
            # print(nodesNumL, nodesNumLP, nodesNumL1, nodesNumLP1)
            # print(sameParentNodes)
            # print(sameParentNodes1)
            print(issueId)
            errorContrastIds.append(issueId)
    return errorContrastIds

# # 2
# sameLevelNodes = [[0], ['NULL+[0,0][1080,1794]'], ['NULL+[0,0][1080,1794]'], ['android:id/content+[0,63][1080,1794]'], ['jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/allview+[0,63][1080,1794]'], ['NULL+[0,63][1080,194]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/scrollView1+[0,194][1080,1087]', 'NULL+[435,1113][645,1218]'], ['NULL+[0,194][1080,1087]'], ['NULL+[8,202][204,255]', 'NULL+[8,271][488,324]', 'NULL+[8,340][1072,439]', 'NULL+[8,455][735,508]', 'NULL+[8,524][1072,623]', 'NULL+[8,639][1072,738]', 'NULL+[8,754][1072,853]', 'NULL+[8,869][1072,968]', 'NULL+[8,984][270,1037]', 'NULL+[8,1053][1072,1087]']]
#
# # sameParentNodes = [['NULL+[0,0][1080,1794]'], ['NULL+[0,0][1080,1794]'], ['android:id/content+[0,63][1080,1794]'], ['jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/allview+[0,63][1080,1794]'], ['NULL+[0,63][1080,194]', 'jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2:id/scrollView1+[0,194][1080,1087]', 'NULL+[435,1113][645,1218]'], ['NULL+[0,194][1080,1087]'], ['NULL+[8,202][204,255]', 'NULL+[8,271][488,324]', 'NULL+[8,340][1072,439]', 'NULL+[8,455][735,508]', 'NULL+[8,524][1072,623]', 'NULL+[8,639][1072,738]', 'NULL+[8,754][1072,853]', 'NULL+[8,869][1072,968]', 'NULL+[8,984][270,1037]', 'NULL+[8,1053][1072,1087]']]
#
# sameLevelNodes1 = [[0], ['LinearLayout+@id/allview+'], ['LinearLayout++', 'ScrollView+@id/scrollView1+', 'Button++Back'], ['com.google.ads.AdView+@id/adView+', 'LinearLayout++'], ['TextView++How to use', 'TextView++1.Declare to reduce alcohol.', 'TextView++2.Enter the current drinking amount (per 1 week).(Degree of improvement is measured, compared to this amount.)', 'TextView++Enter the price of alcohol you are drinking.', 'TextView++4.Check how much fat will be increased and how much the expense will be if you keep drinking at the current pace.', 'TextView++5.Tap the appropriate date in the calendar. Enter the drinking amount on the day.', 'TextView++6.Check the degree of improvement in drinking habits in “Results Display” screen.', 'TextView++*Step 1-2 will be displayed only for the first time. They do not appear from the second time.', 'TextView++***Attention***', 'TextView++*If you want to re-set the start date or to re-set “Current alcohol amount per week,” uninstall the app, then re-install.', 'TextView++ (However, all the past data is erased.)', 'TextView++*Do not enter a date earlier than the start date. Calculation cannot be performed successfully.']]
#
# # sameParentNodes1 = [['LinearLayout+@id/allview+'], ['LinearLayout++', 'ScrollView+@id/scrollView1+', 'Button++Back'], ['com.google.ads.AdView+@id/adView+'], ['LinearLayout++'], ['TextView++How to use', 'TextView++1.Declare to reduce alcohol.', 'TextView++2.Enter the current drinking amount (per 1 week).(Degree of improvement is measured, compared to this amount.)', 'TextView++Enter the price of alcohol you are drinking.', 'TextView++4.Check how much fat will be increased and how much the expense will be if you keep drinking at the current pace.', 'TextView++5.Tap the appropriate date in the calendar. Enter the drinking amount on the day.', 'TextView++6.Check the degree of improvement in drinking habits in “Results Display” screen.', 'TextView++*Step 1-2 will be displayed only for the first time. They do not appear from the second time.', 'TextView++***Attention***', 'TextView++*If you want to re-set the start date or to re-set “Current alcohol amount per week,” uninstall the app, then re-install.', 'TextView++ (However, all the past data is erased.)', 'TextView++*Do not enter a date earlier than the start date. Calculation cannot be performed successfully.']]
#
# bound_text = {'[0,0][1080,1794]': ('', 'LinearLayout'), '[0,63][1080,1794]': ('', 'LinearLayout'), '[0,63][1080,194]': ('', 'LinearLayout'), '[0,194][1080,1087]': ('', 'LinearLayout'), '[8,202][204,255]': ('How to use', 'TextView'), '[8,271][488,324]': ('1.Declare to reduce alcohol.', 'TextView'), '[8,340][1072,439]': ('2.Enter the current drinking amount (per 1 week).(Degree of improvement is measured, compared to this amount.)', 'TextView'), '[8,455][735,508]': ('Enter the price of alcohol you are drinking.', 'TextView'), '[8,524][1072,623]': ('4.Check how much fat will be increased and how much the expense will be if you keep drinking at the current pace.', 'TextView'), '[8,639][1072,738]': ('5.Tap the appropriate date in the calendar. Enter the drinking amount on the day.', 'TextView'), '[8,754][1072,853]': ('6.Check the degree of improvement in drinking habits in “Results Display” screen.', 'TextView'), '[8,869][1072,968]': ('*Step 1-2 will be displayed only for the first time. They do not appear from the second time.', 'TextView'), '[8,984][270,1037]': ('***Attention***', 'TextView'), '[8,1053][1072,1087]': ('*If you want to re-set the start date or to re-set “Current alcohol amount per week,” uninstall the app, then re-install.', 'TextView'), '[435,1113][645,1218]': ('Back', 'Button')}
# # bound_id = {'content': ('[0,63][1080,1794]', 'FrameLayout'), 'allview': ('[0,63][1080,1794]', 'LinearLayout'), 'scrollView1': ('[0,194][1080,1087]', 'ScrollView')}
# issuesIds = {'bound': {'[8,1053][1072,1087]': ['Text contrast', "The item's text contrast ratio is 2.52. This ratio is based on an estimated foreground color of #A3A3A3 and an estimated background color of #FFFFFF. Consider increasing this item's text contrast ratio to 3.00 or greater."], '[435,1113][645,1218]': ['Touch target', "This item's height is 40dp. Consider making the height of this touch target 48dp or larger."]}}
#
# ### foldedPage
# issue_layoutXml = {'[435,1113][645,1218]': ['/home/zyx/Desktop/work-all/work0/apktool/jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2/res/layout/main.xml', '/home/zyx/Desktop/work-all/work0/apktool/jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2/res/layout/kakakuhyou.xml', '/home/zyx/Desktop/work-all/work0/apktool/jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2/res/layout/konomama.xml', '/home/zyx/Desktop/work-all/work0/apktool/jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2/res/layout/settei.xml', '/home/zyx/Desktop/work-all/work0/apktool/jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2/res/layout/setumei.xml', '/home/zyx/Desktop/work-all/work0/apktool/jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2/res/layout/eventeditor.xml'], '[8,1053][1072,1087]': ['/home/zyx/Desktop/work-all/work0/apktool/jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2/res/layout/setumei.xml']}
#
# print(issue_layoutXml)
#
#
# contrastIdsAct = getContrastIdsAct(issuesIds)
# print('contrastIdsAct')
# print(contrastIdsAct)
#
# # def getErrorContrastIds():
# errorContrastIds = getErrorContrastIds(sameLevelNodes, contrastIdsAct)
# print(errorContrastIds)
#
# # def checkFoldedOrNot():
# errorContrastIds = checkFoldedOrNot(actName, contrastIdsAct, sameLevelNodes, sameParentNodes, issue_layoutXml, bound_text, errorContrastIds)
# print(errorContrastIds)