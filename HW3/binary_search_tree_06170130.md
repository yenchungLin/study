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
 >>     
 ![BTS_delete](https://github.com/yenchungLin/study/blob/master/picture/BTS_delete.jpg)      
 > * 搜尋節點：        
 >>      
 ![BTS_search](https://github.com/yenchungLin/study/blob/master/picture/BST_search.jpg)     
 > * 修改節點：             
 >>       
 ![BTS_修改](https://github.com/yenchungLin/study/blob/master/picture/BST_修改.jpg)    
