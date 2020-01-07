# Dijkstra     
## 原理說明       
Dijkstra利用BFS解決有像圖的最短路徑問題，「每次挑選當前最加選則」。每一次新擴展一個距離最短的點，並更新與其相鄰點的距離。日常生活中的例子：我要從甲地到乙地中間會經過一些城市，每到一個城市都會收過路費，但是我希望能達到過路費的最小值。其中，每個城市就是圖中的節點，點與點之間的過路費也就是權重。    
時間複雜度：    
若不採用最小優先級佇列，為O(|V|^2)      
採用斐波那契堆，O(|E|+|V|log|V|)     
![path](https://github.com/yenchungLin/study/blob/master/picture/path.jpg)            
## 流程圖    
![table](https://github.com/yenchungLin/study/blob/master/picture/table.jpg)  
假設起始點是0，先建立一個表格，直的欄位表示由此點開始行走，橫的表示終點，中間的對應表格為其起始點到終點的短路徑。如果起始點無法到達該點，則以無限大表示。    
1.由0開始走，在橫欄的地方標示已經走過，是最短路徑。0可以到1距離為4，0可以到7距離為8。然後我們找出表格中，除了已經揍過點以外的最小路徑，也就是4，表示說接下來由1開始尋找最短路徑。      
2.0透過1的方式來找最短路徑，已經走點的距離不動，1可以走到2距離是4+8=12、1可以走到7距離是4+11=15，但是0直接走到7的距離是8，小於0經過1在走到7來得短，所以表格中依然存8。目前表格中最短路徑為8，所以由7找附近的點。         
3.0透過7的方式來找最短路徑，已經走點的距離不動，7可以走到6距離是8+1=9、7可以走到8距離是8+7=15，目前表格中最短路徑為9，所以由6找附近的點。       
4.0透過6的方式來找最短路徑，已經走點的距離不動，6可以走到5距離是9+2=11、6可以走到8距離是9+6=15，因為與原本距離相同，所以不需要變動。目前表格中最短路徑為11，所以由5找附近的點。   
5.0透過5的方式來找最短路徑，已經走點的距離不動，5可以走到2距離是11+4=16，但是比原路徑來得長，所以保持不變，5可以走到3距離是11+14=25，5可以走到4距離是11+10=21。目前表格中最短路徑為12，所以由2找附近的點。     
6.0透過2的方式來找最短路徑，已經走點的距離不動，2可以走到3距離是12+7=19，但是比原路徑來得短，表格要改成19。2可以走到8距離是12+2=14，比原來路徑短所以存14。目前表格中最短路徑為14，所以由8找附近的點。   
7.0透過8的方式來找最短路徑，已經走點的距離不動。因為8附近的點已經被都是最短路徑了，所以不用管。目前表格中最短路徑為19，所以由3找附近的點。   
8.0透過3的方式來找最短路徑，已經走點的距離不動，3可以走到4距離是19+9=28，比原路徑長，所以不動。目前表格中最短路徑為21，所以由4找附近的點。     
9.0透過4的方式來找最短路徑，已經走點的距離不動。但是我們發現點都已經有最短路徑了，所以結束。     
![SP_picture](https://github.com/yenchungLin/study/blob/master/picture/SP_picture.jpg)      
## 程式碼學習歷程      
想法一：因為在測值發現，起始點如果沒有到達的點，距離存的是0，但是這個如果存在minpoint(也就是暫時存起始點到其他點的最短距離)會出現問題，就是說無法從下一個點找到其它最短距離。所以要設一個超大的數字(maxnum)。     
想法二：因為要判斷說點是不是最短路徑，所以會用到走訪的概念，也就是如果從起始點揍到某一點已經是最小值的，就不需要揍走一次的概念。    
想法三：SP(存目前最短路徑)是list的形式，之後直接轉換成dict形式。    
程式碼解說：    
會先設定s為起始點、n為跑到第幾位、maxnum是一個很大很大的正數、minpoint是用來找下一個點的最短路徑。   
![SP1](https://github.com/yenchungLin/study/blob/master/picture/SP1.jpg)   
分成兩個狀況，   
* 一開始的起始點進入   
1.將起始點的路經存進SP，作為目前的最佳路徑。visit[起始點]改成True，表示已經走過有最短路徑。         
2.尋找下一個最佳路徑時，也就是說要去找出起始點到各個點中的最短距離，    
(1)如果某個點已經有走訪過，則存一個maxnum進minpoint    
(2)如果某個點還沒有走訪過，    
(I)若起始點有到某得點，則minpoint要增加SP[n](也就是那個點的距離)     
(II)若起始點沒有到某得點，則minpoint要增加maxnum     
3.從minpoiont中找到下一個最短路徑，並找到對應的點後，回傳下一個最短路徑的點再執行一次程式    
![SP2](https://github.com/yenchungLin/study/blob/master/picture/SP2.jpg)   
* 非起始點   
1.visit[n]改成True，表示已經走過有最短路徑。   
2.尋找下一個最佳路徑時，也就是說要去找出起始點到各個點中的最短距離，    
若已經還沒走訪過的點，now就是目前距離(也就是最短路徑到下個點距離)   
(1)如果可以到某個點，
(i)原本到不了的話，直接把now存入SP，並將路徑存到minpoint   
(ii)若原本有路徑，但是now小於原本路徑，把now存入SP，並將路徑存到minpoint    
(iii)若原本有路徑，但是now大於原本路徑，SP不變，並將路徑存到minpoint    
(2)若已經走訪過的點，     
(i)如果無法到某個點，則maxnum存入minpoint中      
(ii)如果可以到某個點，則目前路徑存入minpoint中    
若已經走訪過的點，則maxnum存入minpoint中    
3.從minpoiont中找到下一個最短路徑，並找到對應的點後，回傳下一個最短路徑的點再執行一次程式    
4.若是全部點都走過了就將SP變成dict   
![SP3](https://github.com/yenchungLin/study/blob/master/picture/SP3.png)     
![SP4](https://github.com/yenchungLin/study/blob/master/picture/SP4.png)    
![adddict](https://github.com/yenchungLin/study/blob/master/picture/adddict.png)     
![SP_final](https://github.com/yenchungLin/study/blob/master/picture/SP_final.jpg)    
![path](https://github.com/yenchungLin/study/blob/master/picture/path.jpg)       
心得：    
我覺得在寫Dijkstra的時候，存放一個超大的正數是一個很大的問題，因為如果怎麼設定超大的正數都有問題。    
再寫BFS、DFS的時候，我不適用True跟False的方式來判斷節點是否有被走訪過，所以在寫走訪的問題時會需要考慮說，這個點的最佳路徑是不是要修改。    
在搜尋下一個點的最佳路徑時，一開始會懷疑說，我可以找到最佳路徑，但是對於要如何找到下一個點，會不太知道說要怎麼下指令，這個時候發現有index()這個函式能幫助我找到下一個最佳路徑的點。     
在處理最後一個點的問題，因為在寫的時候，一直跳不出迴圈，一直在想辦法說要怎麼樣才能結束。    
最後，我覺得最大的困難就是輸出值為dict的形式，因為以前都是用正烈的形式輸出，dict的使用機會很少，所以覺得遇得很不順，但是這次寫完有比之前更了解怎麼建立key、value的見直呼叫等等。    

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
