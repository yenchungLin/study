# 程式碼學習歷程    
##  python defaultdict    
defaultdictr接受一個factory_function(例如：list、set、str)，弱勢key不存在時，factory_function會回傳默認值([]、set()、0)。   
想法1：因為BFS的暫存是採用先進先出(queue)的概念，而DFS的暫存是採用先進先出(stack)的概念>而且老師在上課的時候有提到，「演算法有兩個重點，1.增加他的速度 2.減少記憶空間」所以我想說BTS跟hash_table很像，差別在BTS的暫存是使用queue儲存。     
想法2.當暫存節點（A)中的節點進入走訪後，要將(A)附近的節點加入暫存中，但是因為每個點都會走訪一次，走過就不會再走一次。所以在決定要不要將附近的節點加入暫存時要判斷1.是否已經被走訪過了2.暫存中有沒有存過 
## BFS流程圖    
1.先畫出關係圖，並決定起始點A    
2.建立兩個list，一個為走訪順序的list，另一個會暫存準備走訪的list。A進入走訪list，BD進入暫存list   
3.B進入走訪list，CF進入暫存list    
4.D進入走訪list，F進入暫存list。因為F已經在暫存list中，不需要再存放在暫存list      
5.C進入走訪list，EG進入暫存list   
6.F進入走訪list，A進入暫存list。但是A已經被走訪過了，不需要再放入暫存list中   
7.E進入走訪list，BF進入暫存list。但是BF都走訪過了，不需要存放到暫存list中    
8.G進入走訪list，E進入暫存list。但是E已經走訪過了，所以不需要再放入暫存點    
9.走訪順序為ABDCFEG     
![BFS](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/BFS.jpg)
    
## BFS流程    
1.先建立一個list(order)，可以放走訪的順序。   
2.一開始在加入節點的時候，因為order與暫存的空間皆為空值，所以可以將起始點直接加入到order中，並將其始點周圍的節點放到暫存中。  
![BFS_step1](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/BFS_step1.png)    
增加周圍的結點進暫存中會用到增加節點(insertNode)，所以有特別寫進程式中。     
![BFS_insert](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/BFS_insert.png)      
3.接下來要從暫存中的節點加入order   
> (1)先判斷暫存存不存在   
> (2)將暫存中頭的值(self.head.val)，存起來(temp)加入order中，然後self.head刪除(也就是指導self.head.next)   
> (3)將temp附近的節點判斷是否要加入到暫存中    
>> (i)跟order比，如果有找到的話，就跳出。(ii)如果比到order結尾都為有找到的話，要去搜尋暫存中有沒有，有的話就跳出；沒有則需要加入新節點到暫存中。這裡寫了一個searchNode方便搜尋。     
![BFS_search](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/BFS_search.png) 
![BFS_step2](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/BFS_step2.png)    
![BFS_fin](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/BFS_fin.jpg)  
![BFS_paper](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/BFS_paper.jpg)
心得：在寫BFS的時候，我覺得我自己卡在要不要將附近節點加入暫存中，像是在比order比到結尾的時候，我沒有存到寫說如果比到結尾應該要有什麼步驟，或者是說接下來要幹嘛之類的。因為這次也是使用VS code所寫的，所以在執行程式的時候，會發現說，自己覺得寫的判斷式但根本沒有執行，或是跑了一堆無窮迴圈，跳不出去的狀況，有的時候暫存結點就一直增加重複的值，導致已經走訪過的節點就重複不停地走訪。再寫BFS的時候，除了要有hash_table的觀念，還要有queue的概念。這次在寫的時候我絕大碰到比較大的問題就是，buckets是使用list的形式串接，在寫之前會懷疑說，我取buckets的頭，是會取到list的第一個，還是會取到整個list。因為取buckets的頭是會取到整個list，所以需要個別list中的數值取出，用queue加入。   

## BFS與DFS原理比較    
BFS：     
1.空間複雜度：O(v)，v是有v個點需要進行排序    
2.時間複雜度：O(|v|＾2)，因為搜尋每個點附近的節點需要時間為O(v)，所以要搜尋的時間會是v的平方    
3.暫存以queue，先進先出    
DFS：     
1.空間複雜度：O(v)，v是有v個點需要進行排序    
2.時間複雜度：O(|v|＾2)，因為搜尋每個點附近的節點需要時間為O(v)，所以要搜尋的時間會是v的平方    
3.暫存以stack，先進後出
## 參考資料   
https://alrightchiu.github.io/SecondRound/graph-breadth-first-searchbfsguang-du-you-xian-sou-xun.html#code
https://docs.python.org/3.5/library/collections.html#collections.defaultdict
https://codertw.com/程式語言/365414/
http://alrightchiu.github.io/SecondRound/graph-breadth-first-searchbfsguang-du-you-xian-sou-xun.html
http://alrightchiu.github.io/SecondRound/graph-depth-first-searchdfsshen-du-you-xian-sou-xun.html
http://alrightchiu.github.io/SecondRound/graph-li-yong-dfshe-bfsxun-zhao-connected-component.html
https://www.itread01.com/content/1544894303.html
https://zh.wikipedia.org/zh-tw/广度优先搜索
https://zh.wikipedia.org/wiki/深度优先搜索
https://www.itread01.com/content/1549064200.html