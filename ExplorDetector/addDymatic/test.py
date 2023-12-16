def count_paths(graph, start, visited=None):
    if visited is None:
        visited = set()
    visited.add(start)

    paths_count = 1 # 初始路径数为1，表示从当前节点到自身的路径

    for neighbor in graph.get(start, []):
        if neighbor not in visited:
            paths_count += count_paths(graph, neighbor, visited)

    visited.remove(start) # 在返回之前将当前节点从已访问集合中移除，以允许其他路径访问该节点
    return paths_count

def calculate_paths(input_str):
    connections = [tuple(line.split('->')) for line in input_str.split('\n') if line.strip()]
    graph = {}

    for connection in connections:
        start_node, end_node = connection
        if start_node not in graph:
            graph[start_node] = []
        graph[start_node].append(end_node)

    paths_counts = {}
    for node in graph:
        visited = set()
        paths_counts[node] = count_paths(graph, node, visited)

    return paths_counts

input_str = "a->b\nb->c\na->d\nb->e"
result = calculate_paths(input_str)
print(result)