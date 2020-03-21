#[流程圖](https://github.com/yenchungLin/study/blob/master/picture/heap_sort/heap_sort.png)    
# 首先，我去觀察母節點與子結點的關係是什麼，令母節點的index為i。發現左邊子結點的index為兩倍的母節點加一(2i+1)，右邊子節點為兩倍的母節點加二(2i+2)。  
#[index](https://github.com/yenchungLin/study/blob/master/picture/heap_sort/heap_sort_index.jpg) 
# 再來，我要去找說究竟有幾個母子關係，也就是說要比幾次。我發現說，總數(n)除以2可以得到說要比幾次母子節點，然後由後往前比。那可能會遇到兩種狀況，第一種是(n/2)餘數為1，表示說最後一個母子節點的關係為：一個母節點、兩個子節點。第二個狀況是(n/2)餘數為0，表示說最後一個母子節點的關係為：一個母節點、一個子節點。       
# 狀況一下面有三個小狀況：小狀況一為母節點最大，則不需要交換。小狀況二左邊子節點最大，需要與母節點交換。小狀況三右邊子節點最大，需要與母節點交換。        
#[狀況一](https://github.com/yenchungLin/study/blob/master/picture/heap_sort/heap_sort_way1.jpg)     
# 狀況二下面有兩個小狀況：小狀況一為母節點最大，則不需要交換。小狀況二左邊子節點最大，需要與母節點交換。
# 最後我將比出來最大的數移到樹枝末端，然後把它加到新的數列中，並刪除在原有數列中的值。而得到的第二個數就直接指定加在新數列的第一位。所有處理完後，回傳新數列。     
#[狀況二](https://github.com/yenchungLin/study/blob/master/picture/heap_sort/heap_sort_way2.jpg) 

#我在套上class的地方，執行上有些問題，可能是還對class於法不熟悉，還在繼續研究中。
#heap_sort
class Solution(object):
    def heap_sort(self,i):
        #若為一個或是空值
        if len(i) <2:
            return i
        #若不為一個或是空值
        if len(i)>=2:

            #算要比幾次母子節點
            for j in range(0,len(i)):
                n = (len(i)-j)//2
                #由最後一組母子節點比到第一組母子節點
                for k in range(n-1,-1,-1):
                    #表示有n組母子節點，且為一個母節點與兩個子節點
                    if k != n-1 or (k==n-1 and (len(i)-j)%2==1):
                        #若母節點大於兩個子節點，則不交換
                        if i[k] > i[2*k+1] and i[k] > i[2*k+2]:
                            i[k] = i[k]
                        #若左邊的子節點最大，則左邊子節點與母節點交換
                        elif i[2*k+1] > i[k] and i[2*k+1] > i[2*k+2]:
                            p = i[k]
                            i[k] = i[2*k+1]
                            i[2*k+1] = p
                        #若右邊的子節點最大，則右邊子節點與母節點交換
                        elif i[2*k+2] > i[k] and i[2*k+2] > i[2*k+1]:
                            p = i[k]
                            i[k] = i[2*k+2]
                            i[2*k+2] = p

                    #表示有n組母子節點，且為一個母節點與一個子節點
                    elif k == n-1 and (len(i)-j)%2==0:
                        #母節點大於子節點，則不交換
                        if i[k] > i[2*k+1]:
                            i[k] = i[k]
                        #母節點小於子節點，則交換
                        else:
                            p = i[k]
                            i[k] = i[2*k+1]
                            i[2*k+1] = p              

                p = i[0]
                i[0] = i[len(i)-j-1]
                i[len(i)-j-1] = p

            return i

#說明比較:
#資料處理的時間為O(n log n)與quick_sort比起來較穩定，因為heap_sort不會受到選到基準點的好壞影響


