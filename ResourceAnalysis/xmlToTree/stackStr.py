# coding=utf-8
class Stack:
    def __init__(self):
        self.stack = []

    def push(self, val):
        self.stack.append(val)

    def pop(self):
        return self.stack.pop()

    def top(self):
        return self.stack[-1]

    def size(self):
        return len(self.stack)

    def isEmpty(self):
        return self.stack == []


def parenthesis_matching(s):
    stack = Stack()
    if len(s) % 2 == 1:
        return False
    pairs = {
        ")": "(",
        "]": "[",
        "}": "{",
    }

    for i in s:
        if i in ("(", "{", "["):
            stack.push(i)
        else:
            if stack.isEmpty():
                return False
            elif stack.top() == pairs[i]:
                stack.pop()
            else:
                return False
    if stack.isEmpty():
        return True
    else:
        return False


# s = '{{}})'
# print(parenthesis_matching(s))
def listToStr(list):
    str = ''
    for item in list:
        str = str + item
    return str

def splitList(lists):
    tempLists = []
    for childList in lists:
        # print(childList)
        tag = 0
        for tempList in tempLists:
            # print("tempList" + str(tempList))
            if listToStr(tempList).find(listToStr(childList)) != -1:
                tag = 1
            if listToStr(childList).find(listToStr(tempList)) != -1:
                # print("zyx")
                tempLists.remove(tempList)
                tag = 2
        # print(tag)
        if tag == 2 or tag == 0:
            tempLists.append(childList)
            # print(tempLists)
    return tempLists


def getAllList(treeStr):
    tempList = []
    allList = []
    stack = Stack()
    # print(treeStr)
    for ele in treeStr.split('"'):
        # print(ele)
        if ele == '':
            continue
        if not ele.startswith(',') and not ele.startswith('}'):
            stack.push(ele)
            # if not ele.startswith('{'):
            #     tempList.append(ele)
            tempList.append(ele)
            # print(tempList)
        elif ele.startswith('}'):
            for e in ele:
                # print(e)
                if e == ',':
                    # print('hhh')
                    tempList1 = []
                    for item in tempList:
                        tempList1.append(item)
                    allList.append(tempList1)
                    # print(tempList)
                    # print(allList)
                elif not stack.isEmpty():
                    tempList1 = []
                    for item in tempList:
                        tempList1.append(item)
                    allList.append(tempList1)
                    # print(tempList)
                    # print(allList)
                    # print(stack.isEmpty())
                    if stack.top() == '{':
                        stack.pop()
                        stack.pop()
                        tempList.pop()
                        tempList.pop()
                    else:
                        while stack.top() != '{':
                            stack.pop()
                            tempList.pop()
                        stack.pop()
                        stack.pop()
                        tempList.pop()
                        tempList.pop()
        elif ele.startswith(','):
            tempList1 = []
            for item in tempList:
                tempList1.append(item)
            allList.append(tempList1)
            # print(tempList)
            # print(allList)
            if stack.top() != '{':
                stack.pop()
                tempList.pop()
                # print('pop:' + str(tempList))

    # print(allList)
    # print(len(allList))
    return allList

###
# treeStr = '"NULL+[0,0][1080,1794]"{"android:id/decor_content_parent+[0,0][1080,1794]"{"android:id/action_bar_container+[0,63][1080,210]"{"android:id/action_bar+[0,63][1080,210]"{"NULL+[42,101][739,172]","NULL+[975,63][1080,210]"{"NULL+[975,73][1080,199]"}}},"android:id/content+[0,210][1080,1794]"{"NULL+[0,210][1080,514]"{"a2dp.Vol:id/TableRow02+[26,236][1054,362]"{"a2dp.Vol:id/Locationbtn+[26,236][422,362]","a2dp.Vol:id/Button01+[422,236][732,362]","a2dp.Vol:id/ServButton+[732,236][1054,362]"},"a2dp.Vol:id/ListView01+[0,388][1080,514]"{"android:id/text1+[0,388][1080,514]"}}}}}'
# treeStr = '"LinearLayout++"{"TableRow+@id/TableRow01+","TableRow+@id/TableRow02+"{"Button+@id/Locationbtn+@string/GetLocButtonString","Button+@id/Button01+@string/FindDevices","Button+@id/ServButton+@string/StartService"}"ListView+@id/ListView01+"}'
# # print("splitList")
# tempLists = splitList(getAllList(treeStr))
# print(len(tempLists))
# print(tempLists)