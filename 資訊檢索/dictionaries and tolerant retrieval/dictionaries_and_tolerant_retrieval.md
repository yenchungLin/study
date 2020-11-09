# Dictionaries and tolerant retrieval
## Dictionaries
![dic](https://github.com/yenchungLin/study/blob/master/資訊檢索/picture/dic.jpg)
* data:term vocabulary   
* data structure:dictionary    
### dictionary as arrary of fixed_width entries   
儲存一個字要多少的大小   
* 排序
### data structure for looking up term   
* 常見方式：hash and trees   
1. hash
* 優點：插找速度快O(1)    
* 缺點：無法做容錯搜尋    
2. trees
* B-tree
## wildcard queries(萬用字元)
問題：   
(1)可能會找到不同語言的文字   
(2)使用者不喜歡打字   
1. *
使用"mon*"，表示找mon開頭的    
方便查找，時間複雜度高   
* Permutern index($在左邊為開頭、右邊為結尾)   
假釋要找hello(hello$、ello$h、llo$he、lo$hel、o$hell)   
> queries   
> 移到右邊   
> 使用B-tree   
> 缺點：佔記憶體
* K-gram index(k為數字)
> 比permutern index更space-efficient   
> 切越細，找到候選越多，但查找時間多   
> 可以照到反向索引   
> 需要後處理   
## edit distance(容錯檢索)
兩種方法：
* isolated word   
* context-sensitive   
關聯式query   
alternatives to using the term vocabulary     
![edit_dis]()   
Levenshtein Distance   
![weight_edit_distance]()
![using_eidt_distance]()
## spelling correction(容錯檢索)
* k-gram 用在isloated word   
>可以用樹狀比對
* context sebsitive 用上下文   
>隨機找東西做比對     
* general issues in spelling correction
> 自動更正   
> interface：很強的UI   
> cost：成本、時間   
## soudex(發音容錯檢索)
ex.破音字、同音不同字    
Typical algorithm:   
>1.保留第一個字元(ex.apple 的 a)   
>2.遇到A E I O U H W Y改成0    
>3.其他根據規則(1:ＢＦＰＶ、2:ＣＧＪＫＱＳＸＺ、3:ＤＴ、4:Ｌ、5:ＭＮ、6:R) (ex.a1140)   
>4.去除重複的字(ex.a140)     
>5.0的部分刪掉(ex.a14)     
>6.一個英文字母要加上三個數字，少的會則補0，多的話就刪後面(ex.a140)    
有相近的發音，可以算出編輯距離    
更正的時候可以看有沒有編輯在原字典中    
找出正確的東西比較耗能    
發音檢索不常使用    
## What queries can we process?   
1. wilde_card index   
2. spell_correction   
3. soundex 