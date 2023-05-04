# coding=utf-8
import os

def get_id_txt(txt):
    id = ''
    if txt.find("android:id=\"@id/") != -1:
        id = (txt.split("android:id=\"@id/")[1]).split("\"")[0]
    elif txt.find("android:id=\"@android:id/") != -1:
        id = (txt.split("android:id=\"@android:id/")[1]).split("\"")[0]
    elif txt.find(":id=\"@id/") != -1:
        id = (txt.split(":id=\"@id/")[1]).split("\"")[0]
    elif txt.find(":id=\"@android:id/") != -1:
        id = (txt.split(":id=\"@android:id/")[1]).split("\"")[0]
    return id

def get_text_txt(txt):
    text =''
    # if txt.find("android:text=\"@string/") != -1:
    #     text = (txt.split("android:text=\"@string/")[1]).split("\"")[0]
    # elif txt.find("android:text=\"") != -1:
    #     text = (txt.split("android:text=\"")[1]).split("\"")[0]
    if txt.find(":text=\"") != -1:
        text = (txt.split(":text=\"")[1]).split("\"")[0]
    elif txt.find(":text=\"@string/") != -1:
        text = (txt.split(":text=\"@string/")[1]).split("\"")[0]
    elif txt.find(":title=\"@string/") != -1:
        text = (txt.split(":title=\"@string/")[1]).split("\"")[0]
    elif txt.find(":title=\"") != -1:
        text = (txt.split(":title=\"")[1]).split("\"")[0]
    return text

def get_title_txt(txt):
    title =''
    if txt.find(":title=\"") != -1:
        title = (txt.split(":title=\"")[1]).split("\"")[0]
    return title

def changeLayout_decompileAPK(decom_Path, issuesIds_notClass, ids_bounds_inOneAPK):
    issue_layoutXml = {}
    for layoutFloder in os.listdir(os.path.join(decom_Path, "res")):
        if not layoutFloder.startswith("layout"):
            continue
        if layoutFloder != 'layout':
            continue
        # print(layoutFloder)
        for xmlFile in os.listdir(os.path.join(decom_Path, "res", layoutFloder)):
            f = open(os.path.join(decom_Path, "res", layoutFloder, xmlFile), "r")
            allTXT = f.read()
            allTXT = allTXT.split("<")
            layoutXmlPath = os.path.join(decom_Path, "res", layoutFloder, xmlFile)
            for txt in allTXT:
                # print txt
                if txt.find(":id=") == -1 and txt.find(":text=") == -1 and txt != "" and txt.find(":title=") == -1:
                    continue
                if get_id_txt(txt) in issuesIds_notClass:
                    if get_id_txt(txt) not in issue_layoutXml:
                        issue_layoutXml[get_id_txt(txt)] = []
                    issue_layoutXml[get_id_txt(txt)].append(layoutXmlPath)
                elif get_text_txt(txt) in ids_bounds_inOneAPK:
                    # print('hhh')
                    if ids_bounds_inOneAPK[get_text_txt(txt)][1] not in issue_layoutXml:
                        issue_layoutXml[ids_bounds_inOneAPK[get_text_txt(txt)][1]] = []
                    issue_layoutXml[ids_bounds_inOneAPK[get_text_txt(txt)][1]].append(layoutXmlPath)
                elif get_title_txt(txt) in ids_bounds_inOneAPK:
                    if ids_bounds_inOneAPK[get_title_txt(txt)][1] not in issue_layoutXml:
                        issue_layoutXml[ids_bounds_inOneAPK[get_title_txt(txt)][1]] = []
                    issue_layoutXml[ids_bounds_inOneAPK[get_title_txt(txt)][1]].append(layoutXmlPath)
    return issue_layoutXml

# ids_bounds_inOneAPK = {'*If you want to re-set the start date or to re-set “Current alcohol amount per week,” uninstall the app, then re-install.': (['Text contrast', "The item's text contrast ratio is 2.52. This ratio is based on an estimated foreground color of #A3A3A3 and an estimated background color of #FFFFFF. Consider increasing this item's text contrast ratio to 3.00 or greater."], '[8,1053][1072,1087]'), 'Back': (['Touch target', "This item's height is 40dp. Consider making the height of this touch target 48dp or larger."], '[435,1113][645,1218]')}
# issuesIds_notClass = {'button7': ['Touch target', "This item's height is 40dp. Consider making the height of this touch target 48dp or larger."], 'stime_v1': ['Text contrast', "The item's text contrast ratio is 4.18. This ratio is based on an estimated foreground color of #696969 and an estimated background color of #F5DEB3. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."], 'Text02': ['Text contrast', "The item's text contrast ratio is 4.18. This ratio is based on an estimated foreground color of #696969 and an estimated background color of #F5DEB3. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."], 'Text00': ['Text contrast', "The item's text contrast ratio is 4.18. This ratio is based on an estimated foreground color of #696969 and an estimated background color of #F5DEB3. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."], 'Text04': ['Text contrast', "The item's text contrast ratio is 4.18. This ratio is based on an estimated foreground color of #696969 and an estimated background color of #F5DEB3. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."], 'Text1': ['Item descriptions', 'This non-clickable item\'s speakable text: "0" is identical to that of 5 other item(s).'], 'Text2': ['Text contrast', "The item's text contrast ratio is 4.18. This ratio is based on an estimated foreground color of #696969 and an estimated background color of #F5DEB3. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."], 'Text3': ['Text contrast', "The item's text contrast ratio is 4.18. This ratio is based on an estimated foreground color of #696969 and an estimated background color of #F5DEB3. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."], 'Text4': ['Text contrast', "The item's text contrast ratio is 4.18. This ratio is based on an estimated foreground color of #696969 and an estimated background color of #F5DEB3. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."], 'Text5': ['Text contrast', "The item's text contrast ratio is 4.18. This ratio is based on an estimated foreground color of #696969 and an estimated background color of #F5DEB3. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."], 'Text6': ['Text contrast', "The item's text contrast ratio is 4.18. This ratio is based on an estimated foreground color of #696969 and an estimated background color of #F5DEB3. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."]}
# # layoutXmlPath = '/home/zyx/Desktop/work-all/work0/apktool/jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2/res/layout/setumei.xml'
#
# ids_bounds_inOneAPK = {'Beer-flavored drink': (['Text contrast', "The item's text contrast ratio is 1.49. This ratio is based on an estimated foreground color of #F5DEB3 and an estimated background color of #EDAC67. Consider increasing this item's text contrast ratio to 3.00 or greater."], '[5,1080][399,1146]'), 'Back': (['Touch target', "This item's height is 40dp. Consider making the height of this touch target 48dp or larger."], '[16,249][226,354]'), 'Beer / Low-malt beer': (['Text contrast', "The item's text contrast ratio is 3.26. This ratio is based on an estimated foreground color of #FFFFFF and an estimated background color of #E46C0A. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."], '[5,386][399,452]'), 'Large jug / Large bottle': (['Text contrast', "The item's text contrast ratio is 4.18. This ratio is based on an estimated foreground color of #696969 and an estimated background color of #F5DEB3. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."], '[453,483][783,526]'), 'Medium jug / Medium bottle': (['Text contrast', "The item's text contrast ratio is 4.18. This ratio is based on an estimated foreground color of #696969 and an estimated background color of #F5DEB3. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."], '[382,588][786,631]'), 'Tumbler': (['Text contrast', "The item's text contrast ratio is 4.18. This ratio is based on an estimated foreground color of #696969 and an estimated background color of #F5DEB3. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."], '[668,690][786,733]'), 'Glass': (['Text contrast', "The item's text contrast ratio is 4.18. This ratio is based on an estimated foreground color of #696969 and an estimated background color of #F5DEB3. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."], '[705,792][786,835]'), '350ml cans': (['Text contrast', "The item's text contrast ratio is 4.18. This ratio is based on an estimated foreground color of #696969 and an estimated background color of #F5DEB3. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."], '[619,894][786,937]'), '500ml cans': (['Text contrast', "The item's text contrast ratio is 4.18. This ratio is based on an estimated foreground color of #696969 and an estimated background color of #F5DEB3. Consider using a contrast ratio greater than 4.50 for small text, or 3.00 for large text."], '[619,996][786,1039]')}
# issuesIds_notClass = {'button7': ['Touch target', "This item's height is 40dp. Consider making the height of this touch target 48dp or larger."], 'editText1': ['Touch target', "This item's height is 35dp. Consider making the height of this touch target 48dp or larger."], 'editText2': ['Item descriptions', 'This clickable item\'s speakable text: "2.6" is identical to that of 1 other item(s).'], 'editText3': ['Touch target', "This item's height is 35dp. Consider making the height of this touch target 48dp or larger."], 'editText4': ['Touch target', "This item's height is 35dp. Consider making the height of this touch target 48dp or larger."], 'editText5': ['Touch target', "This item's height is 35dp. Consider making the height of this touch target 48dp or larger."], 'editText6': ['Touch target', "This item's height is 35dp. Consider making the height of this touch target 48dp or larger."]}
#
# decom_Path = '/home/zyx/Desktop/work-all/work0/apktool/jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2'
# issue_layoutXml = changeLayout_decompileAPK(decom_Path, issuesIds_notClass, ids_bounds_inOneAPK)
# print(issue_layoutXml)