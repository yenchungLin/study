# _**DSA**_
目錄：
[WEEK1:linked_list](https://github.com/yenchungLin/study/tree/master/WEEK%201)
[WEEK2:stack、queue](https://github.com/yenchungLin/study/tree/master/WEEK%202)
[WEEK3insertion_sort、quick_sort](https://github.com/yenchungLin/study/tree/master/WEEK%203)
## WEEK 1
### linked_list
[linked_list](https://github.com/yenchungLin/study/blob/master/WEEK%201/linked_list.py)
利用電腦中記憶體是不連續的、隨機的方式，已結點連結的方式進行資料儲存。
優點是插入即刪除資料方便。
缺點是無法像靜態資料隨機讀取資料，需要透過依循的方式找到資料。
Linked_list的運作方式可分為：1.走訪2.增加節點3.刪除節點
## WEEK 2
### stack
[stack](https://github.com/yenchungLin/study/blob/master/WEEK%202/stack.py)
後進先出的資料型態結構。像自助餐盤一樣，餐盤疊起來後，使用時會拿最上端的那個。五個基本工作定義：1.create:建立一個空堆2.push:存放頂端資料，回傳新堆疊3.pop:刪除頂端資料，並回傳新堆疊4.isEmpty:判斷堆疊是否為空堆疊5.full:判斷堆疊是否已滿
### queue
[queue](https://github.com/yenchungLin/study/blob/master/WEEK%202/queue.py)
先進先出的資料型態結構。像過票一樣，前面的人通過，後面的人才能通過。五個基本工作定義：1.create:建立一個空佇列2.add:將資料加入尾端，回傳新佇列3.delete: :將資料尾端刪除，回傳新佇列4.front:回傳前端的值5.empty:佇列是否為空集合
## WEEK 3
### sort

### insertion_sort(插入排序法)
[insertion_sort](https://github.com/yenchungLin/study/blob/master/WEEK%203/SetMismatch.py)
在一串數列中，找出缺少的數字與重複的數字。
[流程圖](https://github.com/yenchungLin/study/blob/master/picture/insertion_sort.png)

### quick_sort
[quick_sort](https://nbviewer.jupyter.org/github/yenchungLin/study/blob/master/WEEK%203/HW1_quick_sort.ipynb)
在一串數列中找一個基準值，然後將數列中的數值與基準值進行比大小，將小於基準值歸類在基準值到左邊，大於基準值歸類在基準值到右邊，就能夠找出基準值在數列中的哪個位置。然後將心分好的這兩群中，在各別選新的基準值，重複上輪的比較。
[流程圖](https://github.com/yenchungLin/study/blob/master/picture/quick_sort.png)
[流程圖2](https://github.com/yenchungLin/study/blob/master/picture/quick_sort2.png)
[心得](https://github.com/yenchungLin/study/blob/master/心得/quick_sort心得.txt)
## WEEK 4
### heap_sort
[heap](https://github.com/yenchungLin/study/blob/master/WEEK4/heap.py)可分為min heap與max heap。
min heap:頂端的樹根最小，且母節點的直橫小於等於子結點。
max heap:頂端的樹根最大，且母節點的直橫大於等於子結點。
## WEEK 5
### merge_sort

