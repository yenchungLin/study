 Binary_Search_Tree(BTS)：    
 * 類似binary_tree   
 * 一個縛結點最多有兩個子節點    
 * 節點可以為空值      
 * 左子節點的值 < 父節點的值 < 右子節點的值     
 學習歷程：   
 > * 增新節點：   
 >> 一慨始在想增加節點的時候，只有想到說要跟基準點比大小，   
 >>                    新加入 > root值：    
 >>                       root.right = 新加入    
 >>                    新加入 <= root值：   
 >>                       root.left = 新加入  
 >> 這邊的問題就是只有在root進行判斷，跟節點比完大小後，並沒有將新的節點移到下一個要比較的節點。然後為了要將節點移到應該要加入的正確位置，所以寫了一個while迴圈進行判斷，    
 >>                    while 比較基準點存在：   
 >>                       if 新加入 > 比較基準值：     
 >>                          將比較基準點移向右子節點的方向    
 >>                       if 新加入 <= 比較基準值：    
 >>                          將比較基準點移向左子節點的方向  
 >> 找到位置後，在節點增加新節點。     
 >> 就是在寫的時候，其實不時很瞭解說，增加新節點是不是讓節點從root開始整個走一遍，還是說它可以直接加到想要指定的節點位置。後來想想，增加節點好像還是要從root開始進行，因為如果從中間增加節點可能就不符合binary_search_tree的條件了。
 ![BST_insert](https://github.com/yenchungLin/study/blob/master/picture/BST_insert.jpg)    
 > * 刪除節點：         
 >> 刪除節點的時候，有想到三中方法：刪除為葉子、刪除為一顆子樹、刪除為兩顆子樹。    
 >> 刪除為葉子時較簡單，直接將葉子的節點指向空值。   
 >> 刪除一顆子樹時與兩顆子樹時，要考慮哪個點來補刪除的節點。那我之前想得太簡單了，我只有考慮到說刪除的父節點只有一個或是兩個節點，沒有考慮到說子節點是否還有子節點的問題。     
 >> 而且要搜尋哪個節點當刪除節點的值也沒有想到。
 ![BTS_delete](https://github.com/yenchungLin/study/blob/master/picture/BTS_delete.jpg)      
 > * 搜尋節點：        
 >> search說的是我要搜尋的值，是否在樹上有出現。   
 >> 其實跟增新節點真的差不多。在剛開始寫的時候，也只有寫出跟root搜尋出來，沒有寫出比較值要往下面移。     
 ![BTS_search](https://github.com/yenchungLin/study/blob/master/picture/BST_search.jpg)     
 > * 修改節點：             
 >> 修改節點的時候，因為修改的節點可能不只一個，所以當改完一個後，要重新回去看說還有沒有要修改的節點。然後再修改的時候，可能會因為修改節點不符合binary_search_tree的形式，所以可能要衝新建樹。   
 >> 但是，因為是新樹的層數需要小於等於原樹的階層，則選基準值也很重要。因為如果基準值選不好的話，可能會造成binary_search_tree退化成linked_list。      
 ![BTS_修改](https://github.com/yenchungLin/study/blob/master/picture/BST_修改.jpg)    
