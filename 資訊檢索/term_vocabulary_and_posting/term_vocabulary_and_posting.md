# Term vocabulary and posting 
## step in inverted index construction   
![term_vocabulary_and_posting](https://github.com/yenchungLin/study/blob/master/資訊檢索/picture/term_vocabulary_and_posting.jpg)
1. 定義文件index   
>* 來源(pdf、word、excel)   
>* 語言(中文、英文、數字)   
>* 編碼(UTF-8、big5)   
>* 文章單位(通常一篇文章為一個單位)   
2. 分開文字/斷詞(tokenize)  
>* 每個token會對應到一個index，再做詞性標記   
>* 標點符號問題、空格   
>* 數字表示(日期、數學運算)、大小寫、詞幹、專有名詞(地名)、語言使用方式
>* stop word(介詞)   
>* normalization(ex.U.S.A = USA、台灣大學 台大、日期格式、專有名詞)   
>* Thesauri and Soundex(color = colour、同義字)   
>* Lemmatization(還原字根)    
3. linguistic modules(大小寫、單複數轉換)   
4. 字出現在哪篇索引   
## Positional index   
文章中位置的索引
![term_vocabulary_and_posting_porter's](https://github.com/yenchungLin/study/blob/master/資訊檢索/picture/term_vocabulary_and_posting_porter's.jpg)   
![term_vocabulary_and_posting_ex](https://github.com/yenchungLin/study/blob/master/資訊檢索/picture/term_vocabulary_and_posting_ex.jpg)     
# 如何標記    
