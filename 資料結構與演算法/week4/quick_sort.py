def quick_sort(a):
    small = [] #小於基準點
    equ = [] #等於基準點
    big = [] #大於基準點

    #若只有一個元素或是空值
    if len(a) <2:
        return a
    
    #若兩個或兩個以上元素
    else:
        base = a[0] #令第一個為基準點
        for i in range(0,len(a)):
            if a[i] > base:
                big.append(a[i]) #若a[i]大於base，在big中增加a[i]
            elif a[i] == base:
                equ.append(a[i]) #若a[i]等於base，在equ中增加a[i]
            else:
                small.append(a[i]) #若a[i]小於base，在small中增加a[i]
        
    small = quick_sort(small) #將小於的再重新跑回圈
    big = quick_sort(big) #將大於的再重新跑回圈
    a = small + equ +big 
    return a

a = [3,15,27,0,18,157,240,57,66]
quick_sort(a)