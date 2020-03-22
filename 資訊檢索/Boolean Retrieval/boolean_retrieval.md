# 布林檢索Boolean Retrieval
## 簡介
布林檢索是一種簡單的資訊檢索方式，有兩個特點:             
* 快速      
* 簡單     

舉例來說，我們可以利用電腦終端機的功能，來找尋某想搜尋的東西是否有在某個文件中出現。      
如下圖:我們先找到檔案路徑後，下grep(mac,unix)或是findstr(windows)語法，其中雙引號中圍想要找尋的字。終端機會回傳遞幾行有你ㄒ想要找的東西。   
優點:    
* 在大型文件中，搜尋快速     
* 更容易做配對操作    
* 依據排序檢索      
![br_quiz01_1](https://github.com/yenchungLin/study/blob/master/資訊檢索/picture/br_.quiz01-1.jpg)   
![br_quiz01_2](https://github.com/yenchungLin/study/blob/master/資訊檢索/picture/br_.quiz01-2.jpg)    
![br_quiz01_ans](https://github.com/yenchungLin/study/blob/master/資訊檢索/picture/br_.quiz01_ans.jpg)   
## 倒排所引(Inverted Index)
步驟:   
1. 斷句
2. 段詞     
3. 大小寫以及單複數轉換      
4. 分組     
![br_quiz02](https://github.com/yenchungLin/study/blob/master/資訊檢索/picture/br_.quiz02.jpg)    
![br_quiz02-1_ans](https://github.com/yenchungLin/study/blob/master/資訊檢索/picture/br_.quiz02-1_ans.jpg)   
![br_quiz02_2_ans](https://github.com/yenchungLin/study/blob/master/資訊檢索/picture/br_.quiz02-2_ans.jpg)
## Processing Boolean Queries
找出兩個或兩個以上的交集。
![br_quiz03](https://github.com/yenchungLin/study/blob/master/資訊檢索/picture/br_.quiz03.jpg)    
![br_quiz03_ans](https://github.com/yenchungLin/study/blob/master/資訊檢索/picture/br_.quiz03_ans.jpg) 
## Query Optimizaton
![BR](https://github.com/yenchungLin/study/blob/master/資訊檢索/picture/BR.jpg)
