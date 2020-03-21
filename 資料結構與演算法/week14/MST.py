"""
from collections import defaultdict 
import numpy as np
import pandas as pd


#Class to represent a graph 
class Graph(): 

    def __init__(self, vertices): 
        self.V = vertices 
        self.graph = [] 
        #最短路徑
        self.SP = []

        self.parent = [-1] * vertices
        self.MST = {}
        self.data = 0
        self.u = []
        self.v = []
        self.w = []
        

    def weight(self,arr):
        return arr[2]

    def addEdge(self,u,v,w): 
        self.graph.append([u,v,w])
        if len(self.graph) >=2:
            self.graph = self.graph.sort(key = self.weight, reverse = True)
        return
        
    def k_adddict(self,u,v,w):
        path = []
        point = "%d-%d"%(u,v)
        path.append(point)
        self.MST[point] = w
        return

    #MST
    def Kruskal(self):
        #for i in range(0,len(self.graph)-1):

        return


       

執行程式碼

g = Graph(4)
g.addEdge(0,1,10)
g.addEdge(0,2,6)
g.addEdge(0,3,5)
g.addEdge(1,3,15)
g.addEdge(2,3,4)

print("Kruskal",g.Kruskal())



參考資料
https://www.geeksforgeeks.org/python-convert-a-list-to-dictionary/     
https://pythonnote.wordpress.com/2014/04/03/python技巧漂亮又通順的程式碼/      
https://www.runoob.com/python/python-dictionary.html        
https://www.geeksforgeeks.org/dijkstras-shortest-path-algorithm-greedy-algo-7/      
https://zh.wikipedia.org/wiki/戴克斯特拉算法     
http://alrightchiu.github.io/SecondRound/single-source-shortest-pathdijkstras-algorithm.html     
https://wiki.mbalib.com/zh-tw/Dijkstra算法      
https://zh.wikipedia.org/wiki/克鲁斯克尔演算法         
http://alrightchiu.github.io/SecondRound/minimum-spanning-treekruskals-algorithm.html     

"""