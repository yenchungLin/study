# _**資料結構與演算法**_       

## 學演算法的目的：      
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

# [WEEK 1](https://github.com/yenchungLin/study/tree/master/WEEK%201)   
開學週   
# [WEEK 2](https://github.com/yenchungLin/study/tree/master/WEEK%202)
## [linked_list](https://github.com/yenchungLin/study/blob/master/week2/linked_list.md)   
利用電腦中記憶體是不連續的、隨機的方式，已結點連結的方式進行資料儲存。優點是插入即刪除資料方便。缺點是無法像靜態資料隨機讀取資料，需要透過依循的方式找到資料。     
Linked_list的運作方式可分為：     
*   走訪   
*   增加節點   
*   刪除節點  
*   反轉     
[linked_list程式碼](https://github.com/yenchungLin/study/blob/master/week2/linked_list.py)   
# [WEEK 3](https://github.com/yenchungLin/study/tree/master/WEEK%203)
## [stack](https://github.com/yenchungLin/study/blob/master/week3/stack.md)     
 後進先出的資料型態結構。像自助餐盤一樣，餐盤疊起來後，使用時會拿最上端的那個。     
 五個基本工作定義：      
 *   create : 建立一個空堆
 *   push : 存放頂端資料，回傳新堆疊
 *   pop : 刪除頂端資料，並回傳新堆疊
 *   isEmpty : 判斷堆疊是否為空堆疊
 *   full : 判斷堆疊是否已滿    
 ### 流程圖：   
![流程圖](https://github.com/yenchungLin/study/blob/master/picture/stack.png)   
[stack程式碼](https://github.com/yenchungLin/study/blob/master/week3/stack.py)   
## [queue](https://github.com/yenchungLin/study/blob/master/week3/queue.md)   
先進先出的資料型態結構。像過票一樣，前面的人通過，後面的人才能通過。   
五個基本工作定義：     
 *   create : 建立一個空佇列
 *   add : 將資料加入尾端，回傳新佇列
 *   delete : 將資料尾端刪除，回傳新佇列
 *   front : 回傳前端的值
 *   empty : 佇列是否為空集合    
### 流程圖：   
![流程圖](https://github.com/yenchungLin/study/blob/master/picture/queue.png) 
 [queue程式碼](https://github.com/yenchungLin/study/blob/master/week3/queue.py)    
# [WEEK 4](https://github.com/yenchungLin/study/tree/master/WEEK%204)

## [insertion_sort](https://github.com/yenchungLin/study/blob/master/week4/insertion_sort.md)   
### 原理說明：   
從第一個元素，認為第一個元素已經被排序。   
取出下一個元素，在已經排序的元素中從後往前找。   
若已排序元素大於新元素，將元素一到下一個。   
直到已排序元素小於等於新元素，則將新元素插入後，重複執行上一個步驟。  
* 平均時間複雜度：O(n^2)   
* 最佳時間複雜度：O(n)   
* 最差時間複雜度：O(n^2) 
* 空間複雜度：O(1)   
* 穩定度：不穩定      
### 流程圖：   
![流程圖](https://github.com/yenchungLin/study/blob/master/picture/insertion_sort.gif)   
[insertion_sort程式碼](https://github.com/yenchungLin/study/blob/master/week4/SetMismatch.py)   
## [quick_sort](https://github.com/yenchungLin/study/blob/master/week4/quick_sort.md)      
### 原理說明：   
在一串數列中找一個基準值，然後將數列中的數值與基準值進行比大小，將小於基準值歸類在基準值到左邊，大於基準值歸類在基準值到右邊，就能夠找出基準值在數列中的哪個位置。然後將心分好的這兩群中，在各別選新的基準值，重複上輪的比較。   
* 平均時間複雜度：O(n log n)   
* 最佳時間複雜度：O(n log n)   
* 最差時間複雜度：O(n^2) 
* 空間複雜度：O(n)   
* 穩定度：不穩定      
### 流程圖：   
![流程圖](https://github.com/yenchungLin/study/blob/master/picture/quick_sort.png)      
![流程圖2](https://github.com/yenchungLin/study/blob/master/picture/quick_sort2.png)  
    
[quick_sort程式碼](https://github.com/yenchungLin/study/blob/master/week4/quick_sort.py)       
# [WEEK 5](https://github.com/yenchungLin/study/tree/master/WEEK%205)   
放假   
# [WEEK 6](https://github.com/yenchungLin/study/tree/master/WEEK%206)
## [heap_sort](https://github.com/yenchungLin/study/blob/master/homework助教請開/HW2/HW2_heap_sort.py.html)
## [heap](https://github.com/yenchungLin/study/blob/master/week6/heap_sort.md)       
### 原理說明：   
eap sort是一個節點要先長滿兩個子節點，才能再往下長，這表示說陣列中，不能有空值的現象。   
母節點要比子結點大，若比到樹根時，將樹根與最後一個葉子節點交換，再刪除最右一個葉子節點。   
 
* 平均時間複雜度：O(n log n)   
* 最佳時間複雜度：O(n log n)   
* 最差時間複雜度：O(n log n) 
* 空間複雜度：O(n)   
* 穩定度：不穩定    
### 流程圖：   
![流程圖](https://github.com/yenchungLin/study/blob/master/picture/heap_sort/heap_sort.png)    
[heap_sort程式碼](https://github.com/yenchungLin/study/blob/master/week6/heap_sort.py)    
# [WEEK 7](https://github.com/yenchungLin/study/tree/master/WEEK%207)
## [merge_sort](https://github.com/yenchungLin/study/blob/master/week7/merge_sort.md)   
### 原理說明：   
先把數列分半再分半，分到不能再分割的時候，再進行大小比較合併。   
* 平均時間複雜度：O(n log n)   
* 最佳時間複雜度：O(n log n)   
* 最差時間複雜度：O(n log n) 
* 空間複雜度：O(n)   
* 穩定度：穩定 
### 流程圖：   
![流程圖](https://github.com/yenchungLin/study/blob/master/picture/merge_sort.png)    
[merge_sort程式碼](https://github.com/yenchungLin/study/blob/master/week7/merge_sort.py)    
# [WEEK 8](https://github.com/yenchungLin/study/tree/master/WEEK%208)
## [tree](https://github.com/yenchungLin/study/blob/master/week8/tree.md)      
### 說明：   
![tree](https://github.com/yenchungLin/study/blob/master/picture/Tree.jpg)   
### 種類   
* 無序樹(自由樹)：樹的節點中沒有任何順需關係。   
* 二元樹   
* 霍夫曼樹：帶權路徑最短的二元樹。   
* Btree：對讀寫操作進行最佳化自平衡的二元搜尋樹。
## binary_tree   
### 原理說明：    
binary tree是可以用陣列或是linked list的方式儲存。滿二元樹不會浪費資料空間。   
binary tree的特殊行：   
* 完全二元樹：除了最後一層外，其他層都是排滿的狀況，或是最後一層連續缺少幾個右邊的節點。   
* 滿二元樹：每層的結點數都是最大節點數。  
* AVL tree：任兩顆子樹的高度差不大於1。   
* binary search tree     
### 特色：   
* 每個節點只能長出兩個子節點   
* 長子節點的順徐是由左到右   
* 節點個數可以為0   
# [WEEK 9](https://github.com/yenchungLin/study/tree/master/WEEK%209)
## [binary_search_tree](https://github.com/yenchungLin/study/blob/master/week9/BST.md)       
### 原理說明：
BST的優勢在於搜尋、插入的實踐複雜度交低(O n log n)。   
BST的缺點是可能會出現不平衡的現象，或是退化成linked_list。      
### 特色：
 * 類似binary_tree   
 * 一個縛結點最多有兩個子節點    
 * 節點可以為空值      
 * 左子節點的值 < 父節點的值 < 右子節點的值    
 ![BST](https://github.com/yenchungLin/study/blob/master/picture/BST.png)  
[binary_search_tree程式碼](https://github.com/yenchungLin/study/blob/master/week9/BST.py)    
# [WEEK 10](https://github.com/yenchungLin/study/tree/master/WEEK%210)
## [red_black_tree](https://github.com/yenchungLin/study/blob/master/week10/red_black_tree.md)   
### 原理：
為了解決binary_search_tree弱化會變成linked_list。   
紅黑樹的從跟到葉子最長的路徑不可比最膽路徑多兩倍長。
紅黑樹的插入、查詢、刪除節點的時間複雜度為O(n logn)。   
紅黑樹的功能有：   
* 顏色   
* 插入   
* 查詢   
* 增加   
* 旋轉
### 特色：   
* 節點為紅色或是黑色，著色動作    
* root“必為”黑色   
* 父節點是red，子節點為black     
* 父節點是black，子節點為black或red    
* None為black    
* 從頭到尾，每條路徑的black數量要相同
* 平衡：上一層要長滿，才能長下一層
### 流程圖：   
>  ![RBT](https://github.com/yenchungLin/study/blob/master/picture/RBT.png) 
# [WEEK 11](https://github.com/yenchungLin/study/tree/master/WEEK%211)
[hash](https://github.com/yenchungLin/study/blob/master/week11/hash_create.py)      
python進位轉換表
 ![python進位轉換](https://github.com/yenchungLin/study/blob/master/picture/python進位轉換.jpg)    
[hash_table](https://github.com/yenchungLin/study/blob/master/week11/hash_table.md)       
* 原理說明與流程圖：   
舉例來說，有一個四層的衣櫃，第一層放衣服配件、第二層放上衣、第三層放下著、第四層放大衣。Hash_table也是這樣子的概念，我們會有一個capacity來決定說有多少個buckets，然後存入的數值除以capacity的餘數，也就會對應到相同餘數的buckets。原本Hash_table有點像是一個櫃子只能放一件物品的概念，但是有的時候會有很多輸入值有相同的餘數，為了要解決「碰撞」的問題，我們可以linked-list的方式來解決問題。     
Hash_table的使用時機，通常為資料量大，需要快速搜尋某個值時。    
Hash_table的時間複雜度為O(1)   
<比較> Binary_search_tree的時間複雜度為O(log N)
![hash_table](https://github.com/yenchungLin/study/blob/master/picture/hash_table.jpg)  
### 增加(有新的值要加入hash_table中)     
增加新節點，先找出在哪個buckets，狀況分為兩種：      
 *   狀況一：當bukets為空值時，直接將要加入的直指向bukets中    
 *   狀況二：當bukets為有值時，要找到bukets中最後一個點，     
 *   若在中間值時，要存現在的節點，並指向下一個進行迴圈     
 *   若為最後一個時，將剛剛存的結點的下一個指向新結點      
![hash_table_add](https://github.com/yenchungLin/study/blob/master/picture/hash_table_add.jpg)    
### 刪除(有值要移除hash_table)        
刪除節點，先找出在哪個buckets，有沒有這個值。假設有找到，狀況分為三種：    
*   狀況一：bucket中不為空值，   
*   從頭開始搜尋(假設已搜尋到)，將刪除的前一個值指向刪除的下一個值，再刪除值變成空值    
*   再從頭開始，看有沒有還要刪除的值    
*   當搜尋值找到最後一個仍不為刪除值時，表示欲刪除值已刪完      
*   狀況二：刪除為頭     
*   將頭的指標一向下一個    
*   將頭的值刪除    
*   狀況三：bucket為空值，表示沒有要刪除的東西     
![hash_table_remove](https://github.com/yenchungLin/study/blob/master/picture/hash_table_remove.jpg)     
### 查詢(hash_table中是否有存放)   
想知道hash_table中有沒有搜尋值，     
* 狀況一：要搜尋的bucket是空值，表示hash_table沒有搜尋值    
* 狀況二：要搜尋的bucket是有值，
*   1.節點值不等於搜尋值，要看下個節點值    
*   2.節點值等於搜尋值，表示有找到     
*   3.若搜到最後的節點值也不等於搜尋值，表示沒有存放這個值
![hash_table_contains](https://github.com/yenchungLin/study/blob/master/picture/hash_table_contains.jpg) 
 [hash_table程式碼](https://github.com/yenchungLin/study/blob/master/week11/hash_table.py)    
# [WEEK 12](https://github.com/yenchungLin/study/tree/master/WEEK%212)
## [BFS](https://github.com/yenchungLin/study/blob/master/week12/BFS.md)   
graph
graph的圖形連接類似hash_table
 ![graph](https://github.com/yenchungLin/study/blob/master/picture/graph.jpg)
BFS      
* 原理說明：   
先遇到的vertex就後進行走訪    
空間複雜度：O(v)，v是有v個點需要進行排序    
時間複雜度：O(|v|＾2)，因為搜尋每個點附近的節點需要時間為O(v)，所以要搜尋的時間會是v的平方    
暫存以queue，先進先出   
* BFS流程圖：   
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
[BFS程式碼](https://github.com/yenchungLin/study/blob/master/week12/BFS.py)    
# [WEEK 13](https://github.com/yenchungLin/study/tree/master/WEEK%213)
## [DFS ](https://github.com/yenchungLin/study/blob/master/week13/DFS.md)      
* 原理說明：   
先遇到的vertex就先進行走訪   
空間複雜度：O(v)，v是有v個點需要進行排序    
時間複雜度：O(|v|＾2)，因為搜尋每個點附近的節點需要時間為O(v)，所以要搜尋的時間會是v的平方    
暫存以stack，先進後出
* DFS流程：   
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
[DFS程式碼](https://github.com/yenchungLin/study/blob/master/week13/DFS.py)    
        
# [WEEK 14](https://github.com/yenchungLin/study/tree/master/WEEK%21)
## [shortest_path](https://github.com/yenchungLin/study/blob/master/week14/MST.md)         
* 原理說明：   
一種用來尋找最小生成樹的演算法，是貪婪演算法的應用。    
Kruskal是依照weight由小到大排列，並且不能形成一個環圈的概念。日常生活中的例子為：我要從甲地到乙地，中間可能會經過許多過路城市，但是我必須走最短距離到乙地，且中途的過路城市只能夠經過一次。        
平均時間複雜度： O(|E|log|V|) (E:圖的邊、V:點)   
* 流程：   
1.將所有路徑從小到大排序。    
2.建立一格parent表格，每一個點的parent目前先存-1，之後parent的點會存parent。    
3.由最短路徑開始，也就是(2,3)=4，假設2是parent，在parent表格3的-1改成2，因為2是3的parent。     
4.(0,3)=5，因為3是0的parent，2是3的parent。在parent表格0的-1改成2。    
5.(0,2)=6，因為0的parent是2，但是若將0與2連接起來，會形成circle，所以這條路徑不通。     
6.(0,1)=10，因為0是1的parent，2是0的parent。在parent表格1的-1改成2。    
7.(1,3)=15，因為2是1的parent，2也是3的parent，若將他們連接起來，會形成circle，所以這條路徑不通。     
8.得到MTS=4+5+10=19 
[MST程式碼](https://github.com/yenchungLin/study/blob/master/week15/MST.py)       
# [WEEK 15](https://github.com/yenchungLin/study/tree/master/WEEK%215)
## [Short Path](https://github.com/yenchungLin/study/blob/master/week15/SP.md)   
* 原理說明：   
Dijkstra利用BFS解決有像圖的最短路徑問題，「每次挑選當前最加選則」。每一次新擴展一個距離最短的點，並更新與其相鄰點的距離。日常生活中的例子：我要從甲地到乙地中間會經過一些城市，每到一個城市都會收過路費，但是我希望能達到過路費的最小值。其中，每個城市就是圖中的節點，點與點之間的過路費也就是權重。    
時間複雜度：    
若不採用最小優先級佇列，為O(|V|^2)      
採用斐波那契堆，O(|E|+|V|log|V|)    
* 流程：   
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
[SP程式碼](https://github.com/yenchungLin/study/blob/master/week15/SP.py)   
# [WEEK 16](https://github.com/yenchungLin/study/tree/master/WEEK%216)   
資料結構與演算法複習週   
# [WEEK 17](https://github.com/yenchungLin/study/tree/master/WEEK%217)   
資料結構與演算法期末考   
# [WEEK 18](https://github.com/yenchungLin/study/tree/master/WEEK%218)   
學期末