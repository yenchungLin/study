# 程式碼學習歷程    
##  python defaultdict    
defaultdictr接受一個factory_function(例如：list、set、str)，弱勢key不存在時，factory_function會回傳默認值([]、set()、0)。   
想法1：因為BFS的暫存是採用先進先出(queue)的概念，而DFS的暫存是採用先進先出(stack)的概念>而且老師在上課的時候有提到，「演算法有兩個重點，1.增加他的速度 2.減少記憶空間」所以我想說BTS跟hash_table很像，差別在BFS的暫存是使用queue儲存。     
  
# DFS流程圖     
1.先畫出關係圖，並決定起始點A    
2.建立兩個list，一個為走訪順序的list，另一個會暫存準備走訪的list。A進入走訪list，BD進入暫存list    
3.D進入走訪list，F進入暫存list     
4.F進入走訪list，A進入暫存list。但是A已經走訪過了，不需要再存放在暫存list中      
5.B進入走訪list，CF進入暫存list。F已經在暫存list中，不需要再存一次      
6.C進入走訪list，EG進入暫存list     
7.E進入走訪list，BF進入暫存list。但是BF都走訪過了，不需要存放到暫存list中    
8.G進入走訪list，E進入暫存list。但是E已經走訪過了，所以不需要再放入暫存點          
9.走訪順序為ADFBCGE     
![DFS](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/DFS.jpg)   

# DFS流程     
1.先建立一個list(order)，可以放走訪的順序。   
2.一開始在加入節點的時候，因為order與暫存的空間皆為空值，所以可以將起始點直接加入到order中，並將其始點周圍的節點放到暫存中。  
![DFS_step1](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/DFS_step1.png)    
增加周圍的結點進暫存中會用到增加節點(insertNode)，所以有特別寫進程式中。     
![BFS_insert](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/BFS_insert.png)      
3.接下來要從暫存中的節點加入order   
> (1)先判斷暫存存不存在   
> (2)將暫存中尾的值，存起來(temp)加入order中，然後刪除   
> (3)將temp附近的節點判斷是否要加入到暫存中    
>> (i)跟order比，如果有找到的話，就跳出。(ii)如果比到order結尾都為有找到的話，要去搜尋暫存中有沒有，有的話就跳出；沒有則需要加入新節點到暫存中。這裡寫了一個searchNode方便搜尋。    
![BFS_search](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/BFS_search.png)   
![DFS_step2](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/DFS_step2.png)    
![DFS_fin](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/DFS_fin.jpg)  
![DFS_paper](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/DFS_paper.jpg)
心得：我覺得跟BFS寫寫起來差不多，不同的地方是暫存方式類似stack。寫的時候遇到的問題是刪除最後一個暫存問題。第一次寫的時候，只有將暫存的尾變成空直，但是後來發現，這個節點還是存在的，而且在之後的走訪話加入一堆None。第二次的時候，我將到數第二個的next指向None，但是我如果暫存中只有self.head的時候就會出錯，也就是說會加入一堆self.head進入order。第三次寫的時候，再判斷暫存是有東西後，下一步再看說暫存中的節點是不是不只一個。這次寫完後，覺得對節點的刪除有更進一步的理解。   
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