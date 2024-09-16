#DFS using python list dectionary 
graph={
    1:[3,2,4],
    2:[4,1],
    3:[1,5],
    4:[2,1,7],
    5:[3,6],
    6:[7,5],
    7:[4,6]
}

visited = set() 
stack=[]

def dfs(visited,stack, graph): 
  
    while (len(stack)):
        node= stack[-1]
        # print(stack)
        stack.pop()
        if node not in visited:
            print (node,end=' ')
            visited.add(node)
            for i in graph[node]:
                stack.append(i)
        
print("Following is the Depth-First Search",end=": ")
stack.append(1)
dfs(visited,stack, graph)