# coding=utf-8
from resourceAnalysis.xmlToTree import getXmlTree
from resourceAnalysis.xmlToTree import stackStr
class Tree:
    def __init__(self, value, parent=None):
        if isinstance(value, list):
            self.value = 0
            self.parent = None
            self.children = []
            # 获取列表里每个路径
            for path in value:
                # 构建父结点和孩子结点
                parent = self
                for i, v in enumerate(path):
                    node = None
                    for child in parent.children:
                        if v == child.getValue():
                            node = child
                            break
                    if node == None:
                        node = Tree(v, parent)
                        parent.children.append(node)
                    parent = node
        else:
            # 该逻辑一般只由此构造器执行，而不由外部创建对象时直接执行
            self.value = value
            self.parent = parent
            self.children = []

    def getValue(self):
        """获取结点值"""
        return self.value

    def getChildren(self):
        """获取孩子结点"""
        return self.children

    def getParent(self):
        """获取父结点"""
        return self.parent

def levelOrder(root):
    if root == None:
        return []
    # same level nodes
    list1 = []
    # same parent nodes
    list2 = []
    # parent + childs
    list3 = {}
    queue = [root]
    while queue and queue[0]:
        list1.append([a.getValue() for a in queue])
        # print(list1)
        childroot = []
        for node in queue:
            tempList2 = []
            for child in node.children:
                childroot.append(child)
                tempList2.append(child.getValue())
            list2.append(tempList2)
            if tempList2 != []:
                list3[node.getValue()] = tempList2
            # if node.getValue() == 'NULL+[13,1676][276,1781]':
            #     print(node.children)
            #     print("hhh")
            # print(tempList2)
        # queue = [child for node in queue for child in node.children]
        queue = childroot
    # print(list2)
    list2 = [ele for ele in list2 if ele != []]
    return list1, list2, list3

def removeVal(lists, val):
    finalLists = []
    for list in lists:
        for i in list:
            if i == val:
                list.remove(i)
        finalLists.append(list)
    return finalLists

def xmlToTree(xmlPath):
    treeStr = getXmlTree.getTreeStr(xmlPath)
    # print(treeStr)

    tempLists = stackStr.splitList(stackStr.getAllList(treeStr))
    # print(len(tempLists))
    # print(tempLists)

    tempLists = removeVal(tempLists, '{')
    tempTree = Tree(tempLists)
    # print(tempTree.getValue())
    # print(tempTree.children[0].value)
    sameLevelNodes, sameParentNodes, childsFromParent = levelOrder(tempTree)
    # print(sameLevelNodes)
    # print(sameParentNodes)
    return sameLevelNodes, sameParentNodes, childsFromParent

def layoutXmlToTree(layoutXmlPath):
    treeStr = getXmlTree.getLayoutTreeStr(layoutXmlPath)
    # print(treeStr)

    tempLists = stackStr.splitList(stackStr.getAllList(treeStr))
    # print(len(tempLists))
    # print(tempLists)

    tempLists = removeVal(tempLists, '{')
    tempTree = Tree(tempLists)
    # print(tempTree.getValue())
    # print(tempTree.children[0].value)
    sameLevelNodes, sameParentNodes, childsFromParent = levelOrder(tempTree)
    # print(sameLevelNodes)
    # print(sameParentNodes)
    return sameLevelNodes, sameParentNodes, childsFromParent

###
# tempLists = [[1,2,3,4],[1,2,3,5],[1,2,6],[7]]
# tempLists = [['NULL+[0,0][1080,1794]', '{', 'android:id/decor_content_parent+[0,0][1080,1794]', '{', 'android:id/action_bar_container+[0,63][1080,210]', '{', 'android:id/action_bar+[0,63][1080,210]', '{', 'NULL+[42,101][739,172]'], ['NULL+[0,0][1080,1794]', '{', 'android:id/decor_content_parent+[0,0][1080,1794]', '{', 'android:id/action_bar_container+[0,63][1080,210]', '{', 'android:id/action_bar+[0,63][1080,210]', '{', 'NULL+[975,63][1080,210]', '{', 'NULL+[975,73][1080,199]'], ['NULL+[0,0][1080,1794]', '{', 'android:id/decor_content_parent+[0,0][1080,1794]', '{', 'android:id/content+[0,210][1080,1794]', '{', 'NULL+[0,210][1080,514]', '{', 'a2dp.Vol:id/TableRow02+[26,236][1054,362]', '{', 'a2dp.Vol:id/Locationbtn+[26,236][422,362]'], ['NULL+[0,0][1080,1794]', '{', 'android:id/decor_content_parent+[0,0][1080,1794]', '{', 'android:id/content+[0,210][1080,1794]', '{', 'NULL+[0,210][1080,514]', '{', 'a2dp.Vol:id/TableRow02+[26,236][1054,362]', '{', 'a2dp.Vol:id/Button01+[422,236][732,362]'], ['NULL+[0,0][1080,1794]', '{', 'android:id/decor_content_parent+[0,0][1080,1794]', '{', 'android:id/content+[0,210][1080,1794]', '{', 'NULL+[0,210][1080,514]', '{', 'a2dp.Vol:id/TableRow02+[26,236][1054,362]', '{', 'a2dp.Vol:id/ServButton+[732,236][1054,362]'], ['NULL+[0,0][1080,1794]', '{', 'android:id/decor_content_parent+[0,0][1080,1794]', '{', 'android:id/content+[0,210][1080,1794]', '{', 'NULL+[0,210][1080,514]', '{', 'a2dp.Vol:id/ListView01+[0,388][1080,514]', '{', 'android:id/text1+[0,388][1080,514]']]
#
# tempLists = [['LinearLayout++', '{', 'TableRow+@id/TableRow01+'], ['LinearLayout++', '{', 'TableRow+@id/TableRow02+', '{', 'Button+@id/Locationbtn+@string/GetLocButtonString'], ['LinearLayout++', '{', 'TableRow+@id/TableRow02+', '{', 'Button+@id/Button01+@string/FindDevices'], ['LinearLayout++', '{', 'TableRow+@id/TableRow02+', '{', 'Button+@id/ServButton+@string/StartService'], ['LinearLayout++', '{', 'ListView+@id/ListView01+']]
#
# tempLists = removeVal(tempLists, '{')
# tempTree = Tree(tempLists)
# print(tempTree.getValue())
# print(tempTree.children[0].value)
# sameLevelNodes, sameParentNodes = levelOrder(tempTree)
# print(sameLevelNodes)
# print(sameParentNodes)


# ###
# xmlPath = '/media/zyx/Elements SE/IRIS/Xbot-main-all/Xbot-main/main-folder/results/outputs0/a2dp.Vol_133/layouts/a2dp.Vol.main.xml'
# xmlPath = '/media/zyx/Elements SE/IRIS/Xbot-main-all/Xbot-main/main-folder/results/outputs0/jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2/layouts/jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2.Setumei.xml'
# # xmlPath = '/media/zyx/Elements SE/IRIS/Xbot-main-all/Xbot-main/main-folder/results/outputs1/com.edvard.gringosho/layouts/com.edvard.gringosho.ActivitySplash.xml'
# # xmlPath = ''
# sameLevelNodes, sameParentNodes = xmlToTree(xmlPath)
# print(sameLevelNodes)
# print(sameParentNodes)
# layoutXmlPath = '/home/zyx/Desktop/work-all/work0/apktool/a2dp.Vol_133/res/layout/main.txt'
# layoutXmlPath = '/home/zyx/Desktop/work-all/work0/apktool/jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2/res/layout/setumei.xml'
# sameLevelNodes1, sameParentNodes1 = layoutXmlToTree(layoutXmlPath)
# print(sameLevelNodes1)
# print(sameParentNodes1)