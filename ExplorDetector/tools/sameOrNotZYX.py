
def ifSame(xml1,xml2):
        xmlList1 = xml1.split('\n')
        xmlList2 = xml2.split('\n')
    # if len(xmlList1) == len(xmlList2):
    #     n = len(xmlList1)
    #     for i in range(0, n):
    #         if xmlList1[i] != xmlList2[i]:
    #             if xmlList1[i].split('content-desc="')[1].split('"')[0] != xmlList2[i].split('content-desc="')[1].split('"')[0] and xmlList1[i].split('package="')[1].split('"')[0].startswith('com.android.systemui') and xmlList2[i].split('package="')[1].split('"')[0].startswith('com.android.systemui'):
    #                 continue
    #             else:
    #                 print(xmlList1[i])
    #                 print(xmlList2[i])
    #                 print("000")
    #                 # return 0
    # else:
        tmpL1 = []
        for xml in xmlList1:
            if xml.find('resource-id="') != -1 and not xml.split('package="')[1].split('"')[0].startswith('com.android.systemui') and not xml.split('package="')[1].split('"')[0].startswith('com.github.uiautomator'):
                tmpL1.append(xml)
        tmpL2 = []
        for xml in xmlList2:
            if xml.find('resource-id="') != -1 and not xml.split('package="')[1].split('"')[0].startswith('com.android.systemui') and not xml.split('package="')[1].split('"')[0].startswith('com.github.uiautomator'):
                tmpL2.append(xml)
        if len(tmpL1) !=len(tmpL2):
            print("vvv")
            return 0
        else:
            n = len(tmpL1)
            for i in range(0, n):
                if tmpL1[i] != tmpL2[i]:
                    # print(tmpL1[i])
                    # print(tmpL2[i])
                    print("aaa")
                    return 0
        return 1
# with open('/home/yuxin/code/rebuild1/result/a2dp.Vol-133/layout/d551b519b4b62ac8ec138b458145e47d_3.xml') as f:
#     xml1 = f.read()
# with open('/home/yuxin/code/rebuild1/result/a2dp.Vol-133/layout/d551b519b4b62ac8ec138b458145e47d_4.xml') as f:
#     xml2 = f.read()
# print(ifSame(xml1,xml2))
# with open('/home/yuxin/code/rebuild1/result/ac.robinson.mediaphone-48/layout/5f8177b27a4bcb312f920d91db95308d_20.xml') as f:
#     xml1 = f.read()
# with open('/home/yuxin/code/rebuild1/result/ac.robinson.mediaphone-48/layout/5f8177b27a4bcb312f920d91db95308d_17.xml') as f:
#     xml2 = f.read()
# print(ifSame(xml1,xml2))