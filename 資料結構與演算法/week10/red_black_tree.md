# red black tree   
## 原理：
為了解決binary_search_tree弱化會變成linked_list。   
紅黑樹的從跟到葉子最長的路徑不可比最膽路徑多兩倍長。
紅黑樹的插入、查詢、刪除節點的時間複雜度為O(n logn)。   
紅黑樹的功能有：   
* 顏色   
* 插入   
* 查詢   
* 增加   
* 旋轉
## 特色：   
* 節點為紅色或是黑色，著色動作    
* root“必為”黑色   
* 父節點是red，子節點為black     
* 父節點是black，子節點為black或red    
* None為black    
* 從頭到尾，每條路徑的black數量要相同
* 平衡：上一層要長滿，才能長下一層
## 流程圖：   
>  ![RBT](https://github.com/yenchungLin/study/tree/master/資料結構與演算法/picture/RBT.png) 
## 資料來源：   
https://zh.wikipedia.org/wiki/红黑树   
