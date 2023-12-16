import os

def get_actScreen(resultPath):
    act_screen = {}
    actScreenPath = os.path.join(resultPath, "actScreen.txt")
    with open(actScreenPath, 'r') as f:
        lines = f.readlines()
    for line in lines:
        line = line.split("\n")[0]
        if line != '':
            act_screen[line.split(' : ')[0]] = line.split(' : ')[1]
    # print(act_screen)
    return act_screen
# resultPath = "/home/yuxin/code/rebuild/result/11a2dp.Vol-169"
# act_screen = get_actScreen(resultPath)

def get_screentrans(resultPath):
    connections = []
    act_screen = get_actScreen(resultPath)
    screentransPath = os.path.join(resultPath, "screentrans.txt")
    try:
        with open(screentransPath, 'r') as f:
            lines = f.readlines()
        for line in lines:
            line = line.split("\n")[0]
            if line != '':
                # print(line)
                connections.append((line.split('->')[0], line.split('->')[1]))
    except:
        print('No such file or directory: screentrans.txt')
    acttransPath = os.path.join(resultPath, "iccbot.txt")
    with open(acttransPath, 'r') as f:
        lines = f.readlines()
    for line in lines:
        line = line.split("\n")[0]
        if line != '' and line.split('->')[0] in act_screen and line.split('->')[1] in act_screen:
            connections.append((act_screen[line.split('->')[0]], act_screen[line.split('->')[1]]))
    # print(connections)
    return connections

def get_graph(connections):
    graph = {}
    # connections = [(1, 2), (2, 3), (1, 4)]
    for connection in connections:
        start_node, end_node = connection
        if start_node not in graph:
            graph[start_node] = []
        graph[start_node].append(end_node)
    # print(graph)
    return graph

# graph = get_graph(connections)
def find_paths(graph, start, path=[]):
    path = path + [start]
    if start not in graph:
        return [path]

    paths = []
    for neighbor in graph[start]:
        new_paths = find_paths(graph, neighbor, path)
        paths.extend(new_paths)

    return paths

def count_paths(graph, start):
    all_paths = find_paths(graph, start)
    path_count = {}

    for path in all_paths:
        for node in path:
            path_count[node] = path_count.get(node, 0) + 1

    return path_count



def dfs(graph, node, path, paths):
    if node not in graph:
    # 如果节点不在图中，将当前路径添加到路径列表
        paths.append("->".join(path))
        return

    for neighbor in graph[node]:
    # 递归调用DFS，探索从邻居节点出发的路径
        dfs(graph, neighbor, path + [neighbor], paths)

def checkWeight(resultPath):
    connections = get_screentrans(resultPath)

    graph = {}
    # 添加连接关系到图中
    for connection in connections:
        start_node, end_node = connection
        if start_node not in graph:
            graph[start_node] = []
        graph[start_node].append(end_node)

    all_paths = {}
    node_weight = {}
    for node in graph:
        paths_from_node = []
        dfs(graph, node, [node], paths_from_node)
        all_paths[node] = paths_from_node
    # print(all_paths)
    for node in all_paths:
        node_weight[node] = len(all_paths[node])
        # print(node + ':' + str(len(all_paths[node])))
    # print(node_weight)
    # # 输出结果
    # for node, paths in all_paths.items():
    #     print(f"{node}: {','.join(paths)}")
    return node_weight
# resultPath = "/home/yuxin/code/rebuild/result/be.uhasselt.privacypolice-13"
# node_weight = checkWeight(resultPath)
# print(node_weight)