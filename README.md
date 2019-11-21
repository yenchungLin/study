# _**資料結構與演算法**_
## 目錄：
> *   [WEEK1](https://github.com/yenchungLin/study#week-1)：linked_list
> *   [WEEK2](https://github.com/yenchungLin/study#week-2)：stack、queue
> *   [WEEK3](https://github.com/yenchungLin/study#week-3)：insertion_sort、quick_sort(HW1)
> *   [WEEK4](https://github.com/yenchungLin/study#week-4)：heap_sort
> *   [WEEK5](https://github.com/yenchungLin/study#week-5) : merge_sort
> *   [WEEK6](https://github.com/yenchungLin/study#week-6) ：binary_tree、binary_search_tree
> *   [WEEK7](https://github.com/yenchungLin/study#week-7) ：red_black_tree


## [WEEK 1](https://github.com/yenchungLin/study/tree/master/WEEK%201)
### [linked_list](https://github.com/yenchungLin/study/blob/master/WEEK%201/linked_list.py)

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
>  [心得](https://github.com/yenchungLin/study/blob/master/homework助教請開/HW1/quick_sort心得.txt)
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
