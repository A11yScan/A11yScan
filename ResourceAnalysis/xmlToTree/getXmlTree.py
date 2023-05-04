# coding=utf-8
import ast
import json


def getResourceId(node):
    resourceId = "NULL"
    if node.find('resource-id="') != -1:
        resourceId = node.split('resource-id="')[1].split('"')[0]
        if resourceId == '':
            resourceId = "NULL"
    return resourceId
def getBounds(node):
    bounds = "NULL"
    if node.find('bounds="') != -1:
        bounds = node.split('bounds="')[1].split('"')[0]
    return bounds
def getEndState(node, treeStr):
    tag = ''
    if node.endswith('/>'):
        if treeStr.endswith('{') or treeStr.endswith(','):
            tag = 3
        else:
            tag = 1
    elif node.endswith('>') and node.count('</node>') == 0:
        if treeStr.endswith(','):
            tag = 3
        else:
            tag = 0
    elif node.endswith('</node>') or node.count('</node>') != 0:
        # print(node.count('</node>'))
        tag = 2
    else:
        tag = 'NULL'
    return tag

def getEndTag(node, treeStr):
    tag = ''
    node = node.split('\n')[0]
    if node.endswith('">'):
        tag = 'start'
        # print("{")
    elif node.endswith('/>'):
        tag = 'node'
    elif node.count('</node>') != 0:
        # print(node.count('</node>'))
        tag = 'end'
    else:
        tag = 'else'
    return tag


def getTreeStr(xmlPath):
    with open(xmlPath, 'r', encoding='utf-8') as xmlfile:
        content = xmlfile.read()
        # print(content.rstrip())  ##rstrip()删除字符串末尾的空行
    treeStr = ''
    # tagPairs = {'start': ':{', 'end': '}', 'else': ''}
    tagPairs = {'start': '{', 'end': '}', 'else': ''}
    nodes = content.split('<node ')
    nodes = content.split('\n')
    nodesLen = len(nodes)
    # print(nodesLen)
    for i in range(0, nodesLen):
        if nodes[i].find('bounds="') == -1 and nodes[i].find('</node>') == -1 and nodes[i].find('<node>') == -1:
            continue
        # print(nodes[i])
        # print(getEndTag(nodes[i], treeStr))
        nodeId = '"' + getResourceId(nodes[i]) + '+' + getBounds(nodes[i]) + '"'
        # print(nodes[i])
        # print(getEndTag(nodes[i], treeStr))
        if getEndTag(nodes[i], treeStr) == 'end':
            treeStr = treeStr + tagPairs['end']
        #     if getEndTag(nodes[i].split('</node>')[0], treeStr) == 'node':
        #         treeStr = treeStr + nodeId
        #     else:
        #         treeStr = treeStr + nodeId + tagPairs[getEndTag(nodes[i].split('</node>')[0], treeStr)]
        #     for i1 in range(0, nodes[i].count('</node>')):
        #         treeStr = treeStr + tagPairs['end']
        #     if i != nodesLen - 1:
        #         treeStr = treeStr + ','
        elif getEndTag(nodes[i], treeStr) == 'node':
            if nodes[i].endswith('</hierarchy>'):
                continue
            if getEndTag(nodes[i + 1].split('</node>')[0], treeStr) == 'node' or getEndTag(nodes[i + 1].split('</node>')[0], treeStr) == 'start':
                treeStr = treeStr + nodeId + ','
            elif getEndTag(nodes[i + 1], treeStr) == 'end':
                treeStr = treeStr + nodeId + ''
        else:
            treeStr = treeStr + nodeId + tagPairs[getEndTag(nodes[i], treeStr)]
        # print(treeStr)
    # print(treeStr.count('{'))
    # print(treeStr.count('}'))

    # treeStr = '{"NULL+[0,0][1080,1794]":{"android:id/decor_content_parent+[0,0][1080,1794]":{"android:id/action_bar_container+[0,63][1080,210]":{"android:id/action_bar+[0,63][1080,210]":{"NULL+[42,101][739,172]","NULL+[975,63][1080,210]"}},"android:id/content+[0,210][1080,1794]":{"NULL+[0,210][1080,514]":{"a2dp.Vol:id/TableRow02+[26,236][1054,362]":{"a2dp.Vol:id/Locationbtn+[26,236][422,362]","a2dp.Vol:id/Button01+[422,236][732,362]","a2dp.Vol:id/ServButton+[732,236][1054,362]"},"a2dp.Vol:id/ListView01+[0,388][1080,514]":{"android:id/text1+[0,388][1080,514]"}}}}}}'
    # # print(demjson.decode('{' + treeStr + '}'))
    # print(demjson.decode(treeStr))
    # for ele in treeStr.split('"'):
    #     print(ele)
    return treeStr
# pairs = {0: '{', 1: ',', 2: '}', 3: ''}

###
# # xmlPath = '/media/zyx/Elements SE/IRIS/Xbot-main-all/Xbot-main/main-folder/results/outputs0/a2dp.Vol_133/layouts/a2dp.Vol.CustomIntentMaker.xml'
# xmlPath = '/home/yuxin/code/rebuild1/result_230428/a2dp.Vol-133/layout/1c45be5a33b2fcc396204a4dcb2286bc.xml'
# treeStr = getTreeStr(xmlPath)
# print(treeStr)







def getXmlTag(node):
    xmlTag = node.lstrip().split('<')[1].split(' ')[0]
    if node.find('android:id="') != -1:
        xmlTag = xmlTag + '+' + node.split('android:id="')[1].split('"')[0]
    else:
        xmlTag = xmlTag + '+'
    if node.find('android:text="') != -1:
        xmlTag = xmlTag + '+' + node.split('android:text="')[1].split('"')[0]
    else:
        xmlTag = xmlTag + '+'
    return xmlTag

def getLayoutTreeStr(layoutXmlPath):
    with open(layoutXmlPath, 'r', encoding='utf-8') as xmlfile:
        nodeI = 0
        content = xmlfile.readlines()
        # print(content)
        # print(len(content))
        layoutTreeStr = ''
        tempContent = []
        i = 0
        while i < len(content):
            # print(i)
            node = ''
            if content[i].lstrip().startswith('<?xml') or not content[i].split('\n')[0].lstrip().startswith('<'):
                i = i + 1
                continue
            if i != len(content) - 1 and not content[i + 1].split('\n')[0].lstrip().startswith('<'):
                node = content[i + 1].split('\n')[0]
                # print(node)
            tempContent.append((content[i].split('\n')[0] + node).lstrip())
            i = i + 1
        # print(tempContent)
        for j in range(0, len(tempContent)):
            xmlNode = tempContent[j]
            # print(xmlNode)
            xmlTag = '"' + getXmlTag(xmlNode) + '+' + str(nodeI) + '"'
            nodeI = nodeI + 1
            # print(xmlTag)

            if xmlNode.startswith('</'):
                layoutTreeStr = layoutTreeStr + '}'
            elif xmlNode.endswith('/>') or xmlNode.endswith('/>"'):
                if j < len(tempContent) -1 and tempContent[j + 1].startswith('</'):
                    layoutTreeStr = layoutTreeStr + xmlTag
                else:
                    layoutTreeStr = layoutTreeStr + xmlTag + ','
            else:
                layoutTreeStr = layoutTreeStr + xmlTag + '{'
            # print(layoutTreeStr)
    return layoutTreeStr

###
# layoutXmlPath = '/home/zyx/Desktop/work-all/work0/apktool/a2dp.Vol_133/res/layout/main.txt'
# layoutTreeStr = getLayoutTreeStr(layoutXmlPath)
# print(layoutTreeStr)