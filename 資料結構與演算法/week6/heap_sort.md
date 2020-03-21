# heap_sort   
## 原理說明：   
heap可分為min heap與max heap。heap_sort則是利用母節點與子結點進行大小比較排序。   
*   min heap:頂端的樹根最小，且母節點的直橫小於等於子結點。    
*   max heap:頂端的樹根最大，且母節點的直橫大於等於子結點。   
heap sort是一個節點要先長滿兩個子節點，才能再往下長，這表示說陣列中，不能有空值的現象。   
母節點要比子結點大，若比到樹根時，將樹根與最後一個葉子節點交換，再刪除最右一個葉子節點。   
 
* 平均時間複雜度：O(n log n)   
* 最佳時間複雜度：O(n log n)   
* 最差時間複雜度：O(n log n) 
* 空間複雜度：O(1)   
* 穩定度：不穩定      
## 流程圖：   
![流程圖](https://github.com/yenchungLin/study/blob/master/picture/heap_sort/heap_sort.png)    
## 參考資料：   
https://alrightchiu.github.io/SecondRound/comparison-sort-heap-sortdui-ji-pai-xu-fa.html    
