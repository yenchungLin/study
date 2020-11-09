# index construction   
## plan   
### last lecture
* dictionaru data structures
* tolerant retrieval(wildcards、spell correction、soundex)
### index construction
pointer to postings list space needed:4 bytes   
(term space needed:20 bytes、document frequency space needed:4 bytes)    
bytes與記憶體有關    
資料與記憶體有關，做資料讀取是在主記憶體    
>hardware basic    
>>1. 資料存取在記憶體比其它硬碟(固態硬碟>機械式傳統硬碟)快，除了快取外。此外，操作速度也會影響速度。    
>>2. 與檔案碎片有關(array的概念)    
>>3. 容錯記憶體較貴(容錯可能是因為電位等錯誤的狀況)    
![hardware assumption for this lecture]()   
>>4. RCV1   
>>>* collection for this leture     
![reture_RCV1]() 
>>>* goal:index construct the inverted(sort_based index construction:利用外部排序法(external soting algorithm))        
### BSBI(區塊式)   
先將字轉為數字，對每一個block做排序    
![BSBI]()
### SMIMI   
依照字點拆，不需要排序
![SMIMI]()
### Distributed indexing   
平行運作(無運算關係)    
* parsers   
* inverters   
map and reduce
* term partitiond    
* document partition    
### Dynamic indexing    
資料是很少被刪除或是更改   
![merge]()    
