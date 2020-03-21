# linked list 
## 原理說明：    
linked list是一種常見的資料結構，用來儲存資料，並用node指向下一個node串接起來    
linked list的運作方式可分為：     
*   走訪   
![流程圖](https://github.com/yenchungLin/study/tree/master/資料結構與演算法/picture/linked_list_visit.png)   
*   增加節點   
![流程圖](https://github.com/yenchungLin/study/tree/master/資料結構與演算法/picture/linked_list_add.png)  
*   刪除節點    
![流程圖](https://github.com/yenchungLin/study/tree/master/資料結構與演算法/picture/linked_list_deletet.png)     
*   反轉      
![流程圖](https://github.com/yenchungLin/study/tree/master/資料結構與演算法/picture/linked_list_reverse.png)     
## 流程圖：    
![流程圖](https://github.com/yenchungLin/study/tree/master/資料結構與演算法/picture/linked_list.png) 
## 比較：   
linked list:   
* 優點：資料增新刪除是動態的，時間複雜度O(1)。   
* 缺點：因為linked list沒有index所以要找某個node需的搜尋時間複雜度O(n)   
* 使用時機：無法預期資料數量、資料需常常更新、不需要快速找資料    
array:  
* 優點：有index方便找資料   
* 缺點：增新刪除資料較麻煩   
* 使用時機：快速找資料、知道資料大小   
## 參考資料：   
http://alrightchiu.github.io/SecondRound/linked-list-introjian-jie.html   
http://alrightchiu.github.io/SecondRound/linked-list-xin-zeng-zi-liao-shan-chu-zi-liao-fan-zhuan.html   
