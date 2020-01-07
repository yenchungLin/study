# Kruskal   
## 原理說明   
一種用來尋找最小生成樹的演算法，是貪婪演算法的應用。    
Kruskal是依照weight由小到大排列，並且不能形成一個環圈的概念。日常生活中的例子為：我要從甲地到乙地，中間可能會經過許多過路城市，但是我必須走最短距離到乙地，且中途的過路城市只能夠經過一次。        
平均時間複雜度： O(|E|log|V|) (E:圖的邊、V:點)
## 流程圖            
![MST_picture](https://github.com/yenchungLin/study/blob/master/picture/MST_picture.jpg)   
1.將所有路徑從小到大排序。    
2.建立一格parent表格，每一個點的parent目前先存-1，之後parent的點會存parent。    
3.由最短路徑開始，也就是(2,3)=4，假設2是parent，在parent表格3的-1改成2，因為2是3的parent。     
4.(0,3)=5，因為3是0的parent，2是3的parent。在parent表格0的-1改成2。    
5.(0,2)=6，因為0的parent是2，但是若將0與2連接起來，會形成circle，所以這條路徑不通。     
6.(0,1)=10，因為0是1的parent，2是0的parent。在parent表格1的-1改成2。    
7.(1,3)=15，因為2是1的parent，2也是3的parent，若將他們連接起來，會形成circle，所以這條路徑不通。     
8.得到MTS=4+5+10=19   
## 程式碼學習歷程           
還在努力中
## 參考資料：     
https://www.geeksforgeeks.org/python-convert-a-list-to-dictionary/     
https://pythonnote.wordpress.com/2014/04/03/python技巧漂亮又通順的程式碼/      
https://www.runoob.com/python/python-dictionary.html        
https://www.geeksforgeeks.org/dijkstras-shortest-path-algorithm-greedy-algo-7/      
https://zh.wikipedia.org/wiki/戴克斯特拉算法     
http://alrightchiu.github.io/SecondRound/single-source-shortest-pathdijkstras-algorithm.html     
https://wiki.mbalib.com/zh-tw/Dijkstra算法       
https://zh.wikipedia.org/wiki/克鲁斯克尔演算法         
http://alrightchiu.github.io/SecondRound/minimum-spanning-treekruskals-algorithm.html     
