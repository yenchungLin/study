#!/usr/bin/env python
# coding: utf-8

# ![流程圖](https://github.com/yenchungLin/study/blob/master/picture/heap_sort/heap_sort.png)    
# 首先，我去觀察母節點與子結點的關係是什麼，令母節點的index為i。發現左邊子結點的index為兩倍的母節點加一(2i+1)，右邊子節點為兩倍的母節點加二(2i+2)。  
# ![index](https://github.com/yenchungLin/study/blob/master/picture/heap_sort/heap_sort_index.jpg) 
# 再來，我要去找說究竟有幾個母子關係，也就是說要比幾次。我發現說，總數(n)除以2可以得到說要比幾次母子節點，然後由後往前比。那可能會遇到兩種狀況，第一種是(n/2)餘數為1，表示說最後一個母子節點的關係為：一個母節點、兩個子節點。第二個狀況是(n/2)餘數為0，表示說最後一個母子節點的關係為：一個母節點、一個子節點。       
# 狀況一下面有三個小狀況：小狀況一為母節點最大，則不需要交換。小狀況二左邊子節點最大，需要與母節點交換。小狀況三右邊子節點最大，需要與母節點交換。        
# ![狀況一](https://github.com/yenchungLin/study/blob/master/picture/heap_sort/heap_sort_way1.jpg)     
# 狀況二下面有兩個小狀況：小狀況一為母節點最大，則不需要交換。小狀況二左邊子節點最大，需要與母節點交換。
# 最後我將比出來最大的數移到樹枝末端，然後把它加到新的數列中，並刪除在原有數列中的值。而得到的第二個數就直接指定加在新數列的第一位。所有處理完後，回傳新數列。     
# ![狀況二](https://github.com/yenchungLin/study/blob/master/picture/heap_sort/heap_sort_way2.jpg) 

# In[1]:


a = [35,10,42,3,79,12,62,18,51,23]

def heap_sort(a):
    b = [] #另一個list來存放新的序列
    
    for n in range((len(a)//2) - 1 ,0):
        i = n #表示母節點的index
        
        #表示有n組母子節點，且為一個母節點與兩個子節點
        if len(a) % 2 == 1:
            
            #若母節點大於兩個子節點，則不交換
             if a[i] >= a[2*i+1] and a[i] >= a [2*i+2]:
                    a[i] = a[i]
                    
            #若左邊的子節點最大，則左邊子節點與母節點交換
             elif a[2*i+1] >= a[i] and a[2*i+1] >= a[2*i+2]:
                    p = a[2*i+1]
                    a[2*i+1] = a[i]
                    a[i] = p
            
            #若右邊的子節點最大，則右邊子節點與母節點交換
             elif a[2*i+2] >= a[i] and a[2*i+2] >= a[i]:
                    p = a[2*i+2]
                    a[2*i+2] = a[i]
                    a[i] = p
            
            
        #表示有n組母子節點，且為一個母節點與一個子節點
        if len(a) % 2 == 0:
            
            #母節點大於子節點，則不交換
            if a[i] >= a[2*i+1]:
                a[i] = a[i] 
            
            #母節點小於子節點，則交換
            else:
                p = a[2*i+1]
                a[2*i+1] = a[i]
                a[i] = p            
            
            n = n-1
        
    #將第一個母節點與最後一個子節點交換
    p = a[len(a)-1]
    a[len(a)-1] = a[0]
    a[0] = p
    #在b中的第一位增加a的最後一個子節點，並刪除a的最後一個子節點
    b.insert(0,a[len(a)-1])
    a =  a.remove(a[len(a)-1])
    return b

heap_sort(a)


# 第一、我一開始以為是因為沒有設定原數列中的最大值要加到新數列中，但是後來發現不需要新令一個list。      
# 第二、我發現我沒有考慮說數列中可能為空值或是為一個數的情形。   
#        
# 令j為要比的次數，n表示說要比幾組母子關係。我利用長度(len(a))作為判斷依據。

# In[7]:


a = [35,10,42,3,79,12,62,18,51,23]

def heap_sort(a):
    #若為一個或是空值
    if len(a) <2:
        return a
    #若不為一個或是空值
    if len(a)>=2:
        #算要比幾次母子節點
        for j in range(0,len(a)):
            n = len(a)//2
            #由最後一組模子節點比到第一組母子節點
            for k in range(n-1,-1,-1):
                #表示有n組母子節點，且為一個母節點與兩個子節點
                if len(a)%2 == 1:
                    #若母節點大於兩個子節點，則不交換
                    if a[k] > a[2*k+1] and a[k] > a[2*k+2]:
                        a[k] = a[k]
                    #若左邊的子節點最大，則左邊子節點與母節點交換
                    elif a[2*k+1] > a[k] and a[2*k+1] > a[2*k+2]:
                        p = a[k]
                        a[k] = a[2*k+1]
                        a[2*k+1] = p
                    #若右邊的子節點最大，則右邊子節點與母節點交換
                    elif a[2*k+2] > a[k] and a[2*k+2] > a[2*k+1]:
                        p = a[k]
                        a[k] = a[2*k+2]
                        a[2*k+2] = p
                #表示有n組母子節點，且為一個母節點與一個子節點
                elif len(a)%2 == 0:
                    #母節點大於子節點，則不交換
                    if a[k] > a[2*k+1]:
                        a[k] = a[k]
                    #母節點小於子節點，則交換
                    else:
                        p = a[k]
                        a[k] = a[2*k+1]
                        a[2*k+1] = p
            p = a[0]
            a[0] = a[len(a)-1]
            a[len(a)-1] = p
        return a

heap_sort(a)


# 因為不確定錯在哪裡，所以把迴圈因出來來找哪個地方有問題。      
# 發現說第二次迴圈時，少執行最尾端的比較。因為長度在執行迴圈時，應該要減少，但是我令的時候沒有注意到。     
# 而且之前用長度作為判斷依據不夠精準，所以我把判斷依據改為k、n的關聯。     
# 狀況一、一母一子，則 k == n   
# 狀況一、一母兩子，則 k != n

# In[17]:


a = [35,10,42,3,79,12,62,18,51,23]

def heap_sort(a):
    #若為一個或是空值
    if len(a) <2:
        return a
    #若不為一個或是空值
    if len(a)>=2:
        #算要比幾次母子節點
        for j in range(0,len(a)):
            n = (len(a)-j)//2
            print("(j,n) = ",j,n)
            #由最後一組模子節點比到第一組母子節點
            for k in range(n-1,-1,-1):
                print ("k = " ,k)
                #表示有n組母子節點，且為一個母節點與兩個子節點
                #if (len(a)-j)%2 == 1:
                #if k != n-1 or (len(a)-j == 2*k+2):
                if k != n-1 :
                    print ("test 2")
                    #若母節點大於兩個子節點，則不交換
                    if a[k] > a[2*k+1] and a[k] > a[2*k+2]:
                        a[k] = a[k]
                    #若左邊的子節點最大，則左邊子節點與母節點交換
                    elif a[2*k+1] > a[k] and a[2*k+1] > a[2*k+2]:
                        p = a[k]
                        a[k] = a[2*k+1]
                        a[2*k+1] = p
                    #若右邊的子節點最大，則右邊子節點與母節點交換
                    elif a[2*k+2] > a[k] and a[2*k+2] > a[2*k+1]:
                        p = a[k]
                        a[k] = a[2*k+2]
                        a[2*k+2] = p
                    print (k,a[k],a[2*k+1],a[2*k+2])
                #表示有n組母子節點，且為一個母節點與一個子節點
                elif k == n-1:
                    print ("test 1")
                    #母節點大於子節點，則不交換
                    if a[k] > a[2*k+1]:
                        a[k] = a[k]
                    #母節點小於子節點，則交換
                    else:
                        p = a[k]
                        a[k] = a[2*k+1]
                        a[2*k+1] = p
                    print (k,a[k],a[2*k+1])
                    
            p = a[0]
            a[0] = a[len(a)-j-1]
            a[len(a)-j-1] = p
            print(a[0],a[len(a)-j-1])
        return a

heap_sort(a)


# In[21]:


a = [35,10,42,3,79,12,62,18,51,23]

def heap_sort(a):
    #若為一個或是空值
    if len(a) <2:
        return a
    #若不為一個或是空值
    if len(a)>=2:
        #算要比幾次母子節點
        for j in range(0,len(a)):
            n = (len(a)-j)//2
            print("(j,n) = ",j,n)
            #由最後一組模子節點比到第一組母子節點
            for k in range(n-1,-1,-1):
                print ("k = " ,k)
                #表示有n組母子節點，且為一個母節點與兩個子節點
                #if (len(a)-j)%2 == 1:
                #if k != n-1 or (len(a)-j == 2*k+2):
                if k != n-1 :
                    print ("test 2")
                    #若母節點大於兩個子節點，則不交換
                    if a[k] > a[2*k+1] and a[k] > a[2*k+2]:
                        a[k] = a[k]
                    #若左邊的子節點最大，則左邊子節點與母節點交換
                    elif a[2*k+1] > a[k] and a[2*k+1] > a[2*k+2]:
                        p = a[k]
                        a[k] = a[2*k+1]
                        a[2*k+1] = p
                    #若右邊的子節點最大，則右邊子節點與母節點交換
                    elif a[2*k+2] > a[k] and a[2*k+2] > a[2*k+1]:
                        p = a[k]
                        a[k] = a[2*k+2]
                        a[2*k+2] = p
                    print (k,a[k],a[2*k+1],a[2*k+2])
                #表示有n組母子節點，且為一個母節點與一個子節點
                elif k == n-1:
                    print ("test 1")
                    #母節點大於子節點，則不交換
                    if a[k] > a[2*k+1]:
                        a[k] = a[k]
                    #母節點小於子節點，則交換
                    else:
                        p = a[k]
                        a[k] = a[2*k+1]
                        a[2*k+1] = p
                    print (k,a[k],a[2*k+1])
                    
            p = a[0]
            a[0] = a[len(a)-j-1]
            a[len(a)-j-1] = p
            print(a[0],a[len(a)-j-1])
        return a

heap_sort(a)


# In[22]:


a = [38,16,41,72,52,98,63]

def heap_sort(a):
    #若為一個或是空值
    if len(a) <2:
        return a
    #若不為一個或是空值
    if len(a)>=2:
        #算要比幾次母子節點
        for j in range(0,len(a)):
            n = (len(a)-j)//2
            print("(j,n) = ",j,n)
            #由最後一組模子節點比到第一組母子節點
            for k in range(n-1,-1,-1):
                print ("k = " ,k)
                #表示有n組母子節點，且為一個母節點與兩個子節點
                #if (len(a)-j)%2 == 1:
                #if k != n-1 or (len(a)-j == 2*k+2):
                if k != n-1 :
                    print ("test 2")
                    #若母節點大於兩個子節點，則不交換
                    if a[k] > a[2*k+1] and a[k] > a[2*k+2]:
                        a[k] = a[k]
                    #若左邊的子節點最大，則左邊子節點與母節點交換
                    elif a[2*k+1] > a[k] and a[2*k+1] > a[2*k+2]:
                        p = a[k]
                        a[k] = a[2*k+1]
                        a[2*k+1] = p
                    #若右邊的子節點最大，則右邊子節點與母節點交換
                    elif a[2*k+2] > a[k] and a[2*k+2] > a[2*k+1]:
                        p = a[k]
                        a[k] = a[2*k+2]
                        a[2*k+2] = p
                    print (k,a[k],a[2*k+1],a[2*k+2])
                #表示有n組母子節點，且為一個母節點與一個子節點
                elif k == n-1:
                    print ("test 1")
                    #母節點大於子節點，則不交換
                    if a[k] > a[2*k+1]:
                        a[k] = a[k]
                    #母節點小於子節點，則交換
                    else:
                        p = a[k]
                        a[k] = a[2*k+1]
                        a[2*k+1] = p
                    print (k,a[k],a[2*k+1])
                    
            p = a[0]
            a[0] = a[len(a)-j-1]
            a[len(a)-j-1] = p
            print(a[0],a[len(a)-j-1])
        return a

heap_sort(a)


# 在執行的時候，會發現第一次有過，第二次沒有。     
# 因此，我換了一個方式想，將狀況分成：    
# 狀況一：一個母節點與一個子節點，這個狀況發生在k＝n時。    
# 狀況二：一個母節點與兩個子節點，這個狀況發生在k！＝n時，或是長度不能被二整除時。

# In[20]:


a = [38,16,41,72,52,98,63]

def heap_sort(a):
    #若為一個或是空值
    if len(a) <2:
        return a
    #若不為一個或是空值
    if len(a)>=2:
        
        #算要比幾次母子節點
        for j in range(0,len(a)):
            n = (len(a)-j)//2
            print("(j,n) = ",j,n)
            
            #由最後一組母子節點比到第一組母子節點
            for k in range(n-1,-1,-1):
                print ("k = " ,k)
                
                #表示有n組母子節點，且為一個母節點與兩個子節點
                if k != n-1 or (k==n-1 and (len(a)-j)%2==1):
                    print ("test 2","len(a)-j = ",len(a)-j)
                    #若母節點大於兩個子節點，則不交換
                    if a[k] > a[2*k+1] and a[k] > a[2*k+2]:
                        a[k] = a[k]
                    #若左邊的子節點最大，則左邊子節點與母節點交換
                    elif a[2*k+1] > a[k] and a[2*k+1] > a[2*k+2]:
                        p = a[k]
                        a[k] = a[2*k+1]
                        a[2*k+1] = p
                    #若右邊的子節點最大，則右邊子節點與母節點交換
                    elif a[2*k+2] > a[k] and a[2*k+2] > a[2*k+1]:
                        p = a[k]
                        a[k] = a[2*k+2]
                        a[2*k+2] = p
                    print (k,a[k],a[2*k+1],a[2*k+2])
                    
                          
                #表示有n組母子節點，且為一個母節點與一個子節點
                elif k == n-1 and (len(a)-j)%2==0:
                    print ("test 1")
                    #母節點大於子節點，則不交換
                    if a[k] > a[2*k+1]:
                        a[k] = a[k]
                    #母節點小於子節點，則交換
                    else:
                        p = a[k]
                        a[k] = a[2*k+1]
                        a[2*k+1] = p
                    print (k,a[k],a[2*k+1])
                    
                    
            p = a[0]
            a[0] = a[len(a)-j-1]
            a[len(a)-j-1] = p
            print("(a[0],a[len(a)-1])",a[0],a[len(a)-j-1])
        return a

heap_sort(a)


# In[25]:


#heap_sort
def heap_sort(a):
    #若為一個或是空值
    if len(a) <2:
        return a
    #若不為一個或是空值
    if len(a)>=2:
        
        #算要比幾次母子節點
        for j in range(0,len(a)):
            n = (len(a)-j)//2
            #由最後一組母子節點比到第一組母子節點
            for k in range(n-1,-1,-1):
                #表示有n組母子節點，且為一個母節點與兩個子節點
                if k != n-1 or (k==n-1 and (len(a)-j)%2==1):
                    #若母節點大於兩個子節點，則不交換
                    if a[k] > a[2*k+1] and a[k] > a[2*k+2]:
                        a[k] = a[k]
                    #若左邊的子節點最大，則左邊子節點與母節點交換
                    elif a[2*k+1] > a[k] and a[2*k+1] > a[2*k+2]:
                        p = a[k]
                        a[k] = a[2*k+1]
                        a[2*k+1] = p
                    #若右邊的子節點最大，則右邊子節點與母節點交換
                    elif a[2*k+2] > a[k] and a[2*k+2] > a[2*k+1]:
                        p = a[k]
                        a[k] = a[2*k+2]
                        a[2*k+2] = p
                                       
                #表示有n組母子節點，且為一個母節點與一個子節點
                elif k == n-1 and (len(a)-j)%2==0:
                    #母節點大於子節點，則不交換
                    if a[k] > a[2*k+1]:
                        a[k] = a[k]
                    #母節點小於子節點，則交換
                    else:
                        p = a[k]
                        a[k] = a[2*k+1]
                        a[2*k+1] = p              
                    
            p = a[0]
            a[0] = a[len(a)-j-1]
            a[len(a)-j-1] = p

        return a


# In[26]:


a = [38,16,41,72,52,98,63]
heap_sort(a)


# In[ ]:




