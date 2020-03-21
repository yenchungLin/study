# Hash_Table     
舉例來說，有一個四層的衣櫃，第一層放衣服配件、第二層放上衣、第三層放下著、第四層放大衣。Hash_table也是這樣子的概念，我們會有一個capacity來決定說有多少個buckets，然後存入的數值除以capacity的餘數，也就會對應到相同餘數的buckets。原本Hash_table有點像是一個櫃子只能放一件物品的概念，但是有的時候會有很多輸入值有相同的餘數，為了要解決「碰撞」的問題，我們可以linked-list的方式來解決問題。     
Hash_table的使用時機，通常為資料量大，需要快速搜尋某個值時。    
Hash_table的時間複雜度為O(1)   
<比較> Binary_search_tree的時間複雜度為O(log N)
![hash_table](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/hash_table.jpg)
# Hash_function     
Hash_function指的是將東西輸入後，經過函數的轉換再輸出，有點像 y = f(x)。然而，Hash_function的輸入與輸出直不是一對一的關係，意思是說A這個東西進入函式變成C，B這個東西樹入函式會變成C，我們將不同的直產出相同的雜湊值稱為「碰撞」。雜湊值需要符合：     
> *   雜湊值無法反推原值     
> *   雜湊值會隨時間改變      
![hash_function](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/hash_function.jpg)
Hash_function的種類很多，例如：MD5、SHA-1、MD2等等。雖然Hash_function是進行加密的方法，但是因為不同的Hash_function的加密形式固定，因此如果找到加密的形式，那Hash_function就會失去意義。破解Hash_function的方法有：   
> *   生日攻擊法  
> *   中途攻擊法
## 流程圖    
### 增加(有新的值要加入hash_table中)     
增加新節點，先找出在哪個buckets，狀況分為兩種：      
 *   狀況一：當bukets為空值時，直接將要加入的直指向bukets中    
 *   狀況二：當bukets為有值時，要找到bukets中最後一個點，     
 *   若在中間值時，要存現在的節點，並指向下一個進行迴圈     
 *   若為最後一個時，將剛剛存的結點的下一個指向新結點      
![hash_table_add](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/hash_table_add.jpg)    
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
![hash_table_remove](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/hash_table_remove.jpg)     
### 查詢(hash_table中是否有存放)   
想知道hash_table中有沒有搜尋值，     
* 狀況一：要搜尋的bucket是空值，表示hash_table沒有搜尋值    
* 狀況二：要搜尋的bucket是有值，
*   1.節點值不等於搜尋值，要看下個節點值    
*   2.節點值等於搜尋值，表示有找到     
*   3.若搜到最後的節點值也不等於搜尋值，表示沒有存放這個值
![hash_table_contains](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/hash_table_contains.jpg)    
## 學習歷程   
*   增加、查詢     
在寫增加的時候，遇到的問題不大，因為用VS code去看之前有人寫過的邏輯，了解別人是怎麼寫的之後，再利用作業三的binary_search_tree進行修改，hash_table不需要比大小再決定節點要放哪裡，而且再增加的方面，hash_table跟binary_search_tree是一直接下去的形式，不用考慮說加在中間或是加在頭的問題。   
![hash_table_add_p](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/hash_table_add_p.jpg)   
![hash_table_contains_p](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/hash_table_contains_p.jpg)   
*   刪除    
因為上次作業三沒有正確的執行出delete功能，所以這次remove遇到了一些問題。      
第一次，寫出搜尋值與將刪除值變成空值，我在做測試時，發現兩個問題：     
> * 不能直接把刪除節點變成空值，因為會造成後面的儲存值不見     
> * return德位置放錯    
![hash_table_remove_p1](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/hash_table_remove_p1.jpg) 
接下來，我寫的時候有考慮到說如果刪的勢頭的情況下，我犯了一個錯，就是將將暫存值得下一個刪除了，造成後面的值全部不見，但是我原本是想要把指標移到第二位在把頭刪掉。     
![hash_table_remove_p2](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/hash_table_remove_p2.jpg) 
在刪除頭沒有問題後，我試圖刪除中間值，然後我沒有想到說，如果跑到最後一個到時候應該要直間跳出迴圈。  
![hash_table_remove_p3](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/hash_table_remove_p3.jpg)   
然後我將判斷是吼為空值一到最後面一起執行，成功！！！
![hash_table_remove_p4](https://github.com/yenchungLin/study/blob/master/資料結構與演算法/picture/hash_table_remove_p4.jpg)    
這次利用debug程式寫作業，我覺得有很大的收穫，我覺得我更了解誠實的執行順序，讓我了解自己的邏輯有沒有出錯。以前常常搞不清楚return是怎麼回傳的，現在也變得更清楚一些。
## 參考資料：   
http://www.tsnien.idv.tw/Security_WebBook/第四章%20雜湊與亂數演算法.html  
https://zh.wikipedia.org/wiki/散列函數    
https://zh.wikipedia.org/wiki/哈希表    
http://alrightchiu.github.io/SecondRound/hash-tableintrojian-jie.html   
https://blog.techbridge.cc/2017/01/21/simple-hash-table-intro/    
