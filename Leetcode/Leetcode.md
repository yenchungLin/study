# Leetcode   
## [326.Power of Three](https://github.com/yenchungLin/study/blob/master/Leetcode/326%23_Power%20of%20Three_06170130.py)   
因為是要找某數是否是3的指數次方，想法為：
> 整除：為3的倍數 (繼續除以3)  
>> 當最後輸入值為1，表示為3的指數次方   
>> 當最後輸入值為0、2，表示不為3的指數次方   
> 不整除：不為3的倍數   