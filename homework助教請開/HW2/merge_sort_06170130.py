#在上課的時候，從影片中了解到寫merge_sort有兩個部分。     
#第一個部分是分組:將數列折半折半在折半，分別加入左半與右半部分，直到最後沒辦法折半時停止。分成兩個狀況，狀況一:若數列奇數時，將中間的數字分到前半部分。狀況二:如果是偶數就直接對分。  
#第二個部分市合併:分成三個狀況，狀況一:左半與右半都有數值，小狀況一:左邊小於等於右邊，先加左邊加入合併數列中再比下一個，小狀況二:左邊大於右邊，將右邊加入合併數列中，再往下比。狀況二:左半有數值，右半沒有，左半直接加入合併數列中。狀況三:作伴沒有數值，右半有，右半直接加入合併數列中。#分組
def merge_sort(a):
    left = [] #前半部分
    right = [] #後半部分
    
    #當資料為一個或是空值時，直接回傳
    if len(a) <= 1:
        return a
    
    #當資料為兩個以上時，進行分群
    else:
        
        #若資料為奇數時，前半部分多存中間數
        if len(a)%2 == 1:
            #print("test1")
            for i in range(0,len(a)):
                #前半部分
                if i <= len(a)//2:
                    left.append(a[i])
                #後半部分
                else:
                    right.append(a[i])
                #print("left = ",left,"right = ",right)
        #當資料為偶數時，直接對分
        else:
            #print("test2")
            for i in range(0,len(a)):
                #前半部分
                if i <= len(a)//2 -1:
                    left.append(a[i])
                #後半部分
                else:
                    right.append(a[i])
                #print("left = ",left,"right = ",right)
                
        #重複執行，進行分組
        left = merge_sort(left)
        #print("final_left = ",left)
        right = merge_sort(right)
        #print("final_right = ",right)
        #print(final_left,final_right)
        return merge

#組合
def merge(left,right):
    M = [] #新存放數列的地方
    m = 0
    i = 0 #left index的起始值
    j = 0 #right index的起始值
   
    #若left與right都還有值
    while i < len(left) and j < len(right):
        #left值小於等於right值，則增加left到M中
        if left[i] <= right[j]:
            print("test1-1")            
            M[m] = left[i]
            i = i+1
            m = m+1
        #left值大於right值，則增加rigjt到M中
        else:
            print("test1-2")
            M.appemd(right[j])
            j = j+1
    #若left還有值，但是right沒有，則直接增加left進M
    while j < len(left):
        print("test2")
        M.append(left[i])
        i = i+1
    #若right還有值，但是left沒有，則直接增加right進M
    while j < len(right):
        print("test3")
        M.append(right[j])
        j = j+1
    
    return M

#組合
def merge(left,right):
    M = [] #新存放數列的地方
    m = 0
    i = 0 #left index的起始值
    j = 0 #right index的起始值
   
    #若left與right都還有值
    while i < len(left) and j < len(right):
        #left值小於等於right值，則增加left到M中
        if left[i] <= right[j]:
            print("test1-1")            
            M[m] = left[i]
            i = i+1
            m = m+1
        #left值大於right值，則增加rigjt到M中
        else:
            print("test1-2")
            M[m] = right[j]
            j = j+1
            m = m+1
    #若left還有值，但是right沒有，則直接增加left進M
    while j < len(left):
        print("test2")
        M[m] = left[i]
        i = i+1
        m = m+1
    #若right還有值，但是left沒有，則直接增加right進M
    while j < len(right):
        print("test3")
        M[m] = right[j]
        j = j+1
        m = m+1
    
    return M
a = [35,10,42,3,79,12,62,18,51]
merge_sort(a)

#我發現在排序的時候，它顯示list out of range，所以我就想說可能是一開始的時候沒有設定好合併數列的長度，所以我令新數列先放與於數列相同長度的0，進行排序。
#組合
def merge(left,right):
    M = [0]*len(a) #新存放數列的地方
    m = 0
    i = 0 #left index的起始值
    j = 0 #right index的起始值
  
    #print(M[0])
    print("left = ",left,"right = ",right)
    print("i=",i,"left[i] = ",left[i])
    print("j=",j,"right[j]",right)
    print("len(left)=",len(left))
    print("len(right)=",len(right))   
    
    #若left與right都還有值
    while i < len(left) and j < len(right):
        #left值小於等於right值，則增加left到M中
        if left[i] <= right[j]:
            print("test1-1")            
            M[m] = left[i]
            i = i+1
            m = m+1
            print("M =",M,"i = ",i,"j = ",j,"m = ",m)
            
        #left值大於right值，則增加rigjt到M中
        else:
            print("test1-2")
            print("right[j] = ",right[j])
            print("m=",m)
            M[m] = right[j]
            j = j+1
            m = m+1
            print("M =",M,"i = ",i,"j = ",j,"m = ",m)
            
    #若left還有值，但是right沒有，則直接增加left進M
    while i < len(left) and j>= len(right):
        print("test2")
        M[m] = left[i]
        i = i+1
        m = m+1
        print("M =",M,"i = ",i,"j = ",j,"m = ",m)
    #若right還有值，但是left沒有，則直接增加right進M
    while j < len(right) and i >= len(left):
        print("test3")
        M[m] = right[j]
        j = j+1
        m = m+1
        print("M =",M,"i = ",i,"j = ",j,"m = ",m)
    
    
    return M


#組合
def merge(left,right):
    M = [0]*(len(left)+len(right)) #新存放數列的地方
    m = 0
    i = 0 #left index的起始值
    j = 0 #right index的起始值
  
    #print(M[0])
    print("left = ",left,"right = ",right)
    print("i=",i,"left[i] = ",left[i])
    print("j=",j,"right[j]",right)
    print("len(left)=",len(left))
    print("len(right)=",len(right))   
    
    #若left與right都還有值
    while i < len(left) and j < len(right):
        #left值小於等於right值，則增加left到M中
        if left[i] <= right[j]:
            print("test1-1")            
            M[m] = left[i]
            i = i+1
            m = m+1
            print("M =",M,"i = ",i,"j = ",j,"m = ",m)
            
        #left值大於right值，則增加rigjt到M中
        else:
            print("test1-2")
            print("right[j] = ",right[j])
            print("m=",m)
            M[m] = right[j]
            j = j+1
            m = m+1
            print("M =",M,"i = ",i,"j = ",j,"m = ",m)
            
    #若left還有值，但是right沒有，則直接增加left進M
    while i < len(left) and j>= len(right):
        print("test2")
        M[m] = left[i]
        i = i+1
        m = m+1
        print("M =",M,"i = ",i,"j = ",j,"m = ",m)
    #若right還有值，但是left沒有，則直接增加right進M
    while j < len(right) and i >= len(left):
        print("test3")
        M[m] = right[j]
        j = j+1
        m = m+1
        print("M =",M,"i = ",i,"j = ",j,"m = ",m)
    
    
    return M

#就是先放0會出問題，因為0也許會比比較的數列小，造成比較數列的數值存不進去，所以我換成新數列的程度要等於左半部的長度加上右半部的長度。
#組合
def merge(left,right):
    M = [0]*(len(left)+len(right)) #新存放數列的地方
    m = 0
    i = 0 #left index的起始值
    j = 0 #right index的起始值

    #若left與right都還有值
    while i < len(left) and j < len(right):
        #left值小於等於right值，則增加left到M中
        if left[i] <= right[j]:
            print("test1-1")            
            M[m] = left[i]
            i = i+1
            m = m+1
            
        #left值大於right值，則增加rigjt到M中
        else:
            print("test1-2")
            print("right[j] = ",right[j])
            print("m=",m)
            M[m] = right[j]
            j = j+1
            m = m+1
            
    #若left還有值，但是right沒有，則直接增加left進M
    while i < len(left) and j>= len(right):
        print("test2")
        M[m] = left[i]
        i = i+1
        m = m+1
    #若right還有值，但是left沒有，則直接增加right進M
    while j < len(right) and i >= len(left):
        print("test3")
        M[m] = right[j]
        j = j+1
        m = m+1
    return M

#merge_sort
def merge_sort(a):
    #分組
    left = [] #前半部分
    right = [] #後半部分
    
    #當資料為一個或是空值時，直接回傳
    if len(a) <= 1:
        return a
    
    #當資料為兩個以上時，進行分群
    else:
        
        #若資料為奇數時，前半部分多存中間數
        if len(a)%2 == 1:
            #print("test1")
            for i in range(0,len(a)):
                #前半部分
                if i <= len(a)//2:
                    left.append(a[i])
                #後半部分
                else:
                    right.append(a[i])
                #print("left = ",left,"right = ",right)
        #當資料為偶數時，直接對分
        else:
            #print("test2")
            for i in range(0,len(a)):
                #前半部分
                if i <= len(a)//2 -1:
                    left.append(a[i])
                #後半部分
                else:
                    right.append(a[i])
                #print("left = ",left,"right = ",right)
                
        #重複執行，進行分組
        left = merge_sort(left)
        #print("final_left = ",left)
        right = merge_sort(right)
        #print("final_right = ",right)
        #print(final_left,final_right)
        return merge
def merge(left,right):
    M = [0]*(len(left)+len(right)) #新存放數列的地方
    m = 0
    i = 0 #left index的起始值
    j = 0 #right index的起始值

    #若left與right都還有值
    while i < len(left) and j < len(right):
        #left值小於等於right值，則增加left到M中
        if left[i] <= right[j]:
            print("test1-1")            
            M[m] = left[i]
            i = i+1
            m = m+1
            
        #left值大於right值，則增加rigjt到M中
        else:
            print("test1-2")
            print("right[j] = ",right[j])
            print("m=",m)
            M[m] = right[j]
            j = j+1
            m = m+1
            
    #若left還有值，但是right沒有，則直接增加left進M
    while i < len(left) and j>= len(right):
        print("test2")
        M[m] = left[i]
        i = i+1
        m = m+1
    #若right還有值，但是left沒有，則直接增加right進M
    while j < len(right) and i >= len(left):
        print("test3")
        M[m] = right[j]
        j = j+1
        m = m+1
    return M
    

#merge_sort的處理為0(n log n)，處理的穩度度比quick_sort高，因為不售基準點的好壞影響。
