import os
import pprint
import random

import uiautomator2 as u2
import xmltodict as xmltodict

def get_basic_info(e_component: dict):
    key_list = ['id', 'text', 'label', 'text-hint', 'app_name']
    key_at_list = ['resource-id', 'text', 'label', 'content-desc', 'package']
    dict_info = {}

    for i in range(len(key_list)):
        dict_info[key_list[i]] = None
        for e_property in e_component:
            if key_at_list[i] in e_property.lower():
                dict_info[key_list[i]] = e_component[e_property]
                break
    return dict_info


def chooseFromPos(all_components: list, bounds: list):
    same_horizon_components = []
    same_vertical_components = []

    for e_component in all_components:
        e_bounds = e_component['@bounds']
        if e_bounds == bounds:
            continue
        if (e_bounds[1], e_bounds[3]) == (bounds[1], bounds[3]) and e_component['@text'] != '':
            same_horizon_components.append(e_component)
        if (e_bounds[0], e_bounds[2]) == (bounds[0], bounds[2]) and e_component['@text'] != '':
            same_vertical_components.append(e_component)

    return same_horizon_components, same_vertical_components

def chooseFromList(all_components: list, bounds: list):
    list_components = []
    list_set = {}
    for e_component in all_components:
        if e_component['@bounds'] == bounds:
            continue
        e_text = e_component['@text']
        e_id = e_component['@resource-id']
        if e_text != '':
            list_components.append(e_component)
            if e_id not in list_set:
                list_set[e_id] = []
            if e_id != '':
                list_set[e_id].append(e_component)
            else:
                if "none" not in list_set:
                    list_set["none"] = []
                list_set["none"].append(e_component)
    if list_set != {}:
        max_key = max(list_set, key=lambda k: len(list_set[k]))
        print(max_key)
        if len(list_set[max_key]) > 1:
            list_components = list_set[max_key]
    return list_components

def getAllComponents(jsondata: dict):
    root = jsondata['hierarchy']
    queue = [root]
    res = []
    while queue:
        currentNode = queue.pop(0)
        if 'node' in currentNode:
            if type(currentNode['node']).__name__ == 'dict':
                queue.append(currentNode['node'])
            else:
                for e in currentNode['node']:
                    queue.append(e)
        else:
            if ('com.android.systemui' not in currentNode['@resource-id']) and (
                    'com.android.systemui' not in currentNode['@package']):
                res.append(currentNode)
    return res

def find_EditText(jsondata: dict):
    all_components = getAllComponents(jsondata)
    ans = []
    for e_component in all_components:
        if '@class' in e_component and (e_component['@class'] == 'android.widget.EditText' or e_component['@class'] == 'android.widget.AutoCompleteTextView'):
            ans.append(e_component)
    return ans

def get_final_text(jsondata: dict):
    textList = []
    final_text = ''
    if len(jsondata['list-text']) > 0:
        for e in jsondata['list-text']:
            textList.append(e['text'])
        num = random.randint(0, len(textList) - 1)
        final_text = textList[num]
    elif len(jsondata['same-vertical']) > 0:
        for e in jsondata['same-vertical']:
            textList.append(e['text'])
        num = random.randint(0, len(textList) - 1)
        final_text = textList[num]
    elif len(jsondata['same-horizon']) > 0:
        for e in jsondata['same-horizon']:
            textList.append(e['text'])
        num = random.randint(0, len(textList) - 1)
        final_text = textList[num]
    return final_text

def posSameOrNot(bound1, bound2):
    # y0 = int(bound1.split(',')[1].split(']')[0])
    # y1 = int(bound1.split(',')[2].split(']')[0])
    # x0 = int(bound1.split(',')[0].split('[')[1])
    # x1 = int(bound1.split(',')[1].split('[')[1])
    # # print((x0,x1,y0,y1))
    # if (x0,x1,y0,y1) == (bound2['left'], bound2['right'], bound2['top'], bound2['bottom']):
    #     return 1
    # return 0
    bounds = bound2
    bounds_str = "["
    tmp_x = []
    tmp_y = []
    bounds_str = bounds_str + str(bounds['left']) + ","
    bounds_str = bounds_str + str(bounds['top']) + ']['
    bounds_str = bounds_str + str(bounds['right']) + ','
    bounds_str = bounds_str + str(bounds['bottom']) + ']'
    # print(bounds_str)
    if bound1 == bounds_str:
        return 1
    return 0


def findInUI(dxml, info):
    final_text = ''
    data_dict = xmltodict.parse(dxml)
    all_components = getAllComponents(data_dict)
    # print(all_components)
    # print('All components nums:' + str(len(all_components)))
    #
    components_with_edit_text = find_EditText(data_dict)
    # print(components_with_edit_text)
    # print('EditText components nums:' + str(len(components_with_edit_text)))

    no_hint_text = []
    for e in components_with_edit_text:
        if e['@content-desc'] == '':
            no_hint_text.append(e)
    print(no_hint_text)
    # print('EditText with no hint nums:' + str(len(no_hint_text)))
    #
    for e_component in no_hint_text:
        # print('---------------')
        # pprint.pprint(e_component)
        # print('---------------')
        bounds = e_component['@bounds']
        # print(bounds)
        # print(info['bounds'])
        if not posSameOrNot(bounds, info['bounds']):
            continue
        dict_info = get_basic_info(e_component)

        (same_horizon_components, same_vertical_components) = chooseFromPos(all_components, bounds)
        dict_info['same-horizon'] = []
        dict_info['same-vertical'] = []
        for e_hor_component in same_horizon_components:
            dict_info['same-horizon'].append(get_basic_info(e_hor_component))
        for e_ver_component in same_vertical_components:
            dict_info['same-vertical'].append(get_basic_info(e_ver_component))
        dict_info['activity_name'] = ''

        dict_info['list-text'] = []
        list_components = chooseFromList(all_components, bounds)
        for e_list_component in list_components:
            dict_info['list-text'].append(get_basic_info(e_list_component))

        # pprint.pprint(dict_info)
        final_text = get_final_text(dict_info)
        if final_text != '':
            print("Find in UI")
    return final_text

# print('Connect to device...')
# d = u2.connect("emulator-5556")
# print('Device connected.')
# print(d.info)
# dxml = d.dump_hierarchy()
# # print(page_source)
# current_path = os.getcwd()
# # print(current_path)
# save_path = os.path.join(current_path, 'hierarchy.xml')
# xml_file = open(save_path, 'w', encoding='utf-8')
# xml_file.write(dxml)
# xml_file.close()
#
# info = {'bounds': {'bottom': 194, 'left': 189, 'right': 933, 'top': 99}, 'childCount': 0, 'className': 'android.widget.EditText', 'contentDescription': '', 'packageName': 'a2dp.Vol', 'resourceName': None, 'text': '', 'visibleBounds': {'bottom': 349, 'left': 13, 'right': 589, 'top': 223}, 'checkable': False, 'checked': False, 'clickable': True, 'enabled': True, 'focusable': True, 'focused': True, 'longClickable': True, 'scrollable': False, 'selected': False}
# final_text = findInUI(dxml, info)
# print(final_text)