# scoring_term_weighting_and_the_vector_space_model
## word representation
給予編碼，不一定有關係  
## bag_of_word(詞帶)
相同的字，雖然排序不同，但編碼可能相同   
binary incidence matrix(二元編碼)    
## term_frequency(tf：詞頻)
正規化：轉成指數取對數    
找常常出現的字
count matrix(tf-matrix)   
## document_frquency(df)
文章出現幾篇    
idf weight = log(N/df)(估算稀有性)    
## term frequency inverse documentfrequency(tfidf)
w = log(1+tf)*log(N/df)    
  or = tf * (1+log(N/df))   
## vector space similarity
1. document as vector
2. queries as vector   
(1)算向量的距離(ex.歐幾里德距離)   
(2)算角度(length normalization)：利用cos   
