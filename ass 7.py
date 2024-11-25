#BFS using python list dectionary 
graph={
    1:[3,2,4],
    2:[4,1,5],
    3:[8,7,6],
    4:[2,1],
    5:[2],
    6:[7,3],
    7:[3,6,8],
    8:[3,7]
}
queue=[]
visited = set()

def bfs(visited,queue, graph): 
  
    while (len(queue)):
        node= queue[0]
        # print(queue)
        queue.remove(node)
        if node not in visited:
            print(node,end='->')
            visited.add(node)
            for i in graph[node]:
                queue.append(i)
    print()

print("Following is the Breadth-First Search",end=": ")
queue.append(1)
bfs(visited,queue, graph)