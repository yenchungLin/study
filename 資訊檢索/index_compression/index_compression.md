# index compression
## compression(壓縮)
![compression]()
### in general
1. use less disk space    
2. keep more stuff in memory    
3. increase speed of data transfer from disk to memory  
壓縮比解壓縮慢   
### for inverted index
1. dictionary    
變小存在記憶體    
poating list也放到記憶體    
2. postings file(s)    
壓縮空間   
減少時間去讀從disk的postings list    
## term statistics
1. index parameters vs what we index    
2. lossless vs lossy compression    
lossless compression(無失真壓縮):解壓縮後資料不變，把空白地方拿來利用   
lossy compression(失真壓縮):解壓縮後資料改變，保留重要的字    
3. vocabulary vs collection size    
heaps' law    
![heaps' law alg]()
![heaps' law]()
zipf's law    
![zipf's law alg]()
![[zipf's law]()
## dictionary compression
the dictionary is smaller compared to the postings file   
memory footprint competition with other application   
1. dictionary storage - first cut
2. fixed-width terms are wasteful
3. compressing the term list:dictionary-as-a-string
4. space for dictionary as a string with blocking
block 會影響搜尋速度，k越大表示搜尋次數變大   
5. front coding
## postings compression
1. two conflicting forces
2. postings file entry
3. store gaps instead of docIDs
4. gap encoding: three postings entries
5. variable length encoding
例如：一個位元組以8bits為一組，用7bits有效位元與1bit做記號，最後一組的標記開頭為1    
unary code    
gamma code(length(有幾個一，就在零之後讀幾位) + offset(去掉第一個一))，對於儲存空間友善    
