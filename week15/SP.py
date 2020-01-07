from collections import defaultdict 
#Class to represent a graph 
class Graph(): 

    def __init__(self, vertices): 
        self.V = vertices 
        self.graph = [] 
        self.graph_matrix = [[0 for column in range(vertices)]  
                    for row in range(vertices)]  
        #是否已經走訪過 
        self.visit = [False] * vertices 
        #最短路徑
        self.SP = []

    def adddict(self,a):
        index = []
        for i in range(self.V):
            index.append(str(i))
        data = dict(zip(index,a))
        return data
        
    #SP
    #s為起始點
    def Dijkstra(self, s):
        #從第一個點開始
        n = 0
        #一個很大的正數
        maxnum = (self.V*100)**(self.V*100)
        #暫時存放最短路徑
        minpoint = []
        #若是第一個點
        if self.SP == []:
            #目前的最佳路徑
            self.SP = self.graph[s]
            #表示已經走過
            self.visit[s] = True    
            #在尋找下一個最佳路徑時
            while n < len(self.SP):
                #某點已有走最短路徑
                if self.visit[n] == True:
                    minpoint.append(maxnum)
                    n = n+1
                #某點尚未有走最短路徑
                elif self.visit[n] == False:
                    #有到某得點
                    if self.SP[n] != 0:
                        minpoint.append(self.SP[n])
                        n = n+1
                    #沒有到某得點
                    else:
                        minpoint.append(maxnum)                            
                        n = n+1
            #找出最短路徑的點
            n = minpoint.index(min(minpoint))
            return self.Dijkstra(n)
        #非起始點
        else:
            #表示已經走過
            if self.visit[s] == False:
                self.visit[s] = True
                #在尋找下一個最佳路徑時
                while n < len(self.SP):
                    #若已經還沒走訪過
                    if self.visit[n] != True:
                        #目前距離
                        now = self.SP[s] + self.graph[s][n]
                        #如果可以到某個點
                        if self.graph[s][n] != 0:
                            #若SP中沒有此路徑
                            if self.SP[n] == 0:
                                self.SP[n] = now
                                minpoint.append(self.SP[n])
                                n = n+1
                            #若原本有路徑，但是now較小
                            elif self.SP[n] != 0 and now < self.SP[n]:
                                self.SP[n] = now
                                minpoint.append(self.SP[n])
                                n = n+1
                            #若原本有路徑，但是now較大
                            else:
                                minpoint.append(self.SP[n])
                                n = n+1
                        #若已經走訪過
                        else:
                            #無法到某個點
                            if self.SP[n] == 0:
                                minpoint.append(maxnum)
                                n = n+1
                            #目前路徑    
                            else:
                                minpoint.append(self.SP[n])
                                n = n+1
                    #已經走訪過
                    else:
                        minpoint.append(maxnum)
                        n = n+1
                n = minpoint.index(min(minpoint))
                return self.Dijkstra(n)
        return self.adddict(self.SP)
       

"""
執行程式碼
"""
g = Graph(10)
g.graph = [[0,4,0,0,0,0,0,8,0,0],[4,0,8,0,0,0,0,11,0,0],[0,8,0,7,0,4,0,0,2,0],[0,0,7,0,9,14,0,0,0,0],[0,0,0,9,0,10,0,0,0,0],[0,0,4,14,10,0,2,0,0,0],[0,0,0,0,0,2,0,1,6,0],[8,11,0,0,0,0,1,0,7,0],[0,0,2,0,0,0,6,7,0,3],[0,0,0,0,0,0,0,0,3,0]]
print("Dijkstar",g.Dijkstra(0))


"""
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