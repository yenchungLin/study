# _**資料結構與演算法**_    
學演算法的目的：      
*   漸少記憶體    
*   加快運算時間    
## 目錄：    
> *   [WEEK1](https://github.com/yenchungLin/study#week-1)：開學暖身週
> *   [WEEK2](https://github.com/yenchungLin/study#week-2)：linked_list
> *   [WEEK3](https://github.com/yenchungLin/study#week-3)：stack、queue
> *   [WEEK4](https://github.com/yenchungLin/study#week-4)：insertion_sort、quick_sort
> *   [WEEK5](https://github.com/yenchungLin/study#week-5)：放假
> *   [WEEK6](https://github.com/yenchungLin/study#week-6)：heap_sort
> *   [WEEK7](https://github.com/yenchungLin/study#week-7)： merge_sort
> *   [WEEK8](https://github.com/yenchungLin/study#week-8)：binary_tree
> *   [WEEK9](https://github.com/yenchungLin/study#week-9)：binary_search_tree
> *   [WEEK10](https://github.com/yenchungLin/study#week-10)：red black tree
> *   [WEEK11](https://github.com/yenchungLin/study#week-11)：hash table
> *   [WEEK12](https://github.com/yenchungLin/study#week-12)：BFS     
> *   [WEEK13](https://github.com/yenchungLin/study#week-13)：DFS  
> *   [WEEK14](https://github.com/yenchungLin/study#week-14)：shortest_path 
> *   [WEEK15](https://github.com/yenchungLin/study#week-15)：Minimum_Spanning_Tree(MST)  
> *   [WEEK16](https://github.com/yenchungLin/study#week-16)：期末考複習週
> *   [WEEK17](https://github.com/yenchungLin/study#week-17)：期末考週
> *   [WEEK18](https://github.com/yenchungLin/study#week-18)：期末考週
## [WEEK 2](https://github.com/yenchungLin/study/tree/master/WEEK%202)
### [linked_list](https://github.com/yenchungLin/study/blob/master/WEEK%202/linked_list.py)

> 利用電腦中記憶體是不連續的、隨機的方式，已結點連結的方式進行資料儲存。優點是插入即刪除資料方便。缺點是無法像靜態資料隨機讀取資料，需要透過依循的方式找到資料。     
Linked_list的運作方式可分為：     
>> *   走訪
>> *   增加節點
>> *   刪除節點
## [WEEK 2](https://github.com/yenchungLin/study/tree/master/WEEK%202)
### [stack](https://github.com/yenchungLin/study/blob/master/WEEK%202/stack.py)

> 後進先出的資料型態結構。像自助餐盤一樣，餐盤疊起來後，使用時會拿最上端的那個。     
五個基本工作定義：      
>> *   create : 建立一個空堆
>> *   push : 存放頂端資料，回傳新堆疊
>> *   pop : 刪除頂端資料，並回傳新堆疊
>> *   isEmpty : 判斷堆疊是否為空堆疊
>> *   full : 判斷堆疊是否已滿
### [queue](https://github.com/yenchungLin/study/blob/master/WEEK%202/queue.py)

> 先進先出的資料型態結構。像過票一樣，前面的人通過，後面的人才能通過。   
> 五個基本工作定義：     
>> *   create : 建立一個空佇列
>> *   add : 將資料加入尾端，回傳新佇列
>> *   delete : 將資料尾端刪除，回傳新佇列
>> *   front : 回傳前端的值
>> *   empty : 佇列是否為空集合
## [WEEK 3](https://github.com/yenchungLin/study/tree/master/WEEK%203)

### [insertion_sort](https://github.com/yenchungLin/study/blob/master/WEEK%203/SetMismatch.py)
> 在一串數列中，找出缺少的數字與重複的數字。   
>  ![流程圖](https://github.com/yenchungLin/study/blob/master/picture/insertion_sort.png)

### [quick_sort](https://nbviewer.jupyter.org/github/yenchungLin/study/blob/master/homework助教請開/HW1/HW1_quick_sort.ipynb)
> 在一串數列中找一個基準值，然後將數列中的數值與基準值進行比大小，將小於基準值歸類在基準值到左邊，大於基準值歸類在基準值到右邊，就能夠找出基準值在數列中的哪個位置。然後將心分好的這兩群中，在各別選新的基準值，重複上輪的比較。    
>  ![流程圖](https://github.com/yenchungLin/study/blob/master/homework助教請開/HW1/quick_sort.png)      
>  ![流程圖2](https://github.com/yenchungLin/study/blob/master/homework助教請開/HW1/quick_sort2.png)     
> *  [心得](https://github.com/yenchungLin/study/blob/master/homework助教請開/HW1/quick_sort心得.txt)
## [WEEK 4](https://github.com/yenchungLin/study/tree/master/WEEK%204)
### [heap_sort](https://github.com/yenchungLin/study/blob/master/homework助教請開/HW2/HW2_heap_sort.py.html)
> [heap](https://github.com/yenchungLin/study/blob/master/WEEK4/heap.py)可分為min heap與max heap。heap_sort則是利用母節點與子結點進行大小比較排序。      
>> *   min heap:頂端的樹根最小，且母節點的直橫小於等於子結點。    
>> *   max heap:頂端的樹根最大，且母節點的直橫大於等於子結點。     
>  ![流程圖](https://github.com/yenchungLin/study/blob/master/picture/heap_sort/heap_sort.png)
## WEEK 5
### merge_sort
> merge_sort先將資料進行分組，倆倆比大小後，再丟入較大的組進行大小比較。
>  ![流程圖](https://github.com/yenchungLin/study/blob/master/picture/merge_sort.png)
## WEEK 6
### binary_tree
> tree關係圖
>  ![tree](https://github.com/yenchungLin/study/blob/master/picture/Tree.jpg)
> binary_search_tree
>  ![tree](https://github.com/yenchungLin/study/blob/master/picture/BST_insert.jpg)
## WEEK 7
### red_black_tree
> red_black_tree因為當binary_search_tree弱化會變成linked_list，red_black_tree要平衡。insert、著色、旋轉（左、右）、delete、search、modify   
> 特色：
>> 1.節點為紅色或是黑色，著色動作    
>> 2.root“必為”黑色   
>> 3.父節點是red，子節點為black     
>> 4.父節點是black，子節點為black或red    
>> 5.None為black6.從頭到尾，每條路徑的black數量要相同
> 平衡：上一層要長滿，才能長下一層
## WEEK 8
### hash   
hash    
python進位轉換表
 ![python進位轉換](https://github.com/yenchungLin/study/blob/master/picture/python進位轉換.jpg)
## WEEK 9
### BFS 
graph
> graph的圖形連接類似hash_table
 ![graph](https://github.com/yenchungLin/study/blob/master/picture/graph.jpg)
BFS流程圖      
1.先畫出關係圖，並決定起始點A    
2.建立兩個list，一個為走訪順序的list，另一個會暫存準備走訪的list。A進入走訪list，BD進入暫存list   
3.B進入走訪list，CF進入暫存list    
4.D進入走訪list，F進入暫存list。因為F已經在暫存list中，不需要再存放在暫存list      
5.C進入走訪list，EG進入暫存list   
6.F進入走訪list，A進入暫存list。但是A已經被走訪過了，不需要再放入暫存list中   
7.E進入走訪list，BF進入暫存list。但是BF都走訪過了，不需要存放到暫存list中    
8.G進入走訪list，E進入暫存list。但是E已經走訪過了，所以不需要再放入暫存點    
9.走訪順序為ABDCFEG   
![BFS](https://github.com/yenchungLin/study/blob/master/picture/BFS.jpg) 
## WEEK 10
### DFS    
DFS流程
1.先畫出關係圖，並決定起始點A    
2.建立兩個list，一個為走訪順序的list，另一個會暫存準備走訪的list。A進入走訪list，BD進入暫存list    
3.D進入走訪list，F進入暫存list     
4.F進入走訪list，A進入暫存list。但是A已經走訪過了，不需要再存放在暫存list中      
5.B進入走訪list，CF進入暫存list。F已經在暫存list中，不需要再存一次      
6.C進入走訪list，EG進入暫存list     
7.E進入走訪list，BF進入暫存list。但是BF都走訪過了，不需要存放到暫存list中    
8.G進入走訪list，E進入暫存list。但是E已經走訪過了，所以不需要再放入暫存點          
9.走訪順序為ADFBCGE     
![DFS](https://github.com/yenchungLin/study/blob/master/picture/DFS.jpg)
## WEEK 11
### Minimum Spanning Tree 
> 樹不能有迴路   
> 在圖裡找出一顆子樹     
> 有weight       
> 由邊的角度去思考，而不是用腳的角度去思考      
> 應用：造路（主幹道、支線）    
> 只關心起點到終點的weight     
> weight要先去sorting    
> 任兩點逞生一個邊，所以E＝V-1     
## WEEK 12
### shortest_path