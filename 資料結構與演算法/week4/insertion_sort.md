# insertion_sort   
## 原理說明：   
從第一個元素，認為第一個元素已經被排序。   
取出下一個元素，在已經排序的元素中從後往前找。   
若已排序元素大於新元素，將元素一到下一個。   
直到已排序元素小於等於新元素，則將新元素插入後，重複執行上一個步驟。  
* 平均時間複雜度：O(n^2)   
* 最佳時間複雜度：O(n)   
* 最差時間複雜度：O(n^2) 
* 空間複雜度：O(1)   
* 穩定度：不穩定      
## 流程圖：   
![流程圖](https://github.com/yenchungLin/study/blob/master/picture/insertion_sort.gif)  
## 參考資料：   
http://alrightchiu.github.io/SecondRound/comparison-sort-insertion-sortcha-ru-pai-xu-fa.html   
https://zh.wikipedia.org/zh-tw/插入排序   
