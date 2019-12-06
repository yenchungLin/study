from Crypto.Hash import MD5

class ListNode:
    def __init__(self, val):
        self.val = val
        self.next = None

class MyHashSet:
    def __init__(self, capacity=5):
        #表示有capacity個bucket
        self.capacity = capacity
        self.data = [None] * capacity

    #將文字換成數值
    def MD5(self,x):
        h = MD5.new()
        h.update(x.encode("utf-8"))
        x = h.hexdigest()
        x = int(h.hexdigest(),16)
        return x

    #增加新節點
    def add(self, key):
        #建立新節點
        newnode = ListNode(key)
        newnode.next = None
        newnode.val = key
        #找餘數
        i = self.MD5(key) % self.capacity
        #當buckets裡面為空值時，直接加入新節點
        if self.data[i] == None:
            self.data[i] = newnode
            return True
        #當buckets裡面為空值時，則需要找到最後一個節點，再僵直加入
        else:
            #令self.data[i]為now
            now = self.data[i]
            #如果now的值存在
            while now != None:
                #stop為now(方便找到前一個節點)
                stop = now
                #now要指向下一個節點
                now = now.next
            #如果找到最後一個節點，直接加入新節點
            if stop.next == None:
                stop.next = newnode
            return True
        return

    #搜尋
    def contains(self,key):
        #取餘數
        i = self.MD5(key) % self.capacity
        #若搜尋列為空值，表示錯誤
        if self.data[i] == None:
            return False
        else:
            now = self.data[i]
            #節點不為空值
            while now != None:
                #節點值等於搜尋值，表示有找到
                if now.val == key:
                    return True
                #節點值不等於搜尋值，要看下個節點值
                else:
                    now = now.next
            #若搜到最後的節點值也不等於搜尋值，表示沒有存放這個值
            return False
        return

    #刪除
    def remove(self,key):
        #取餘數
        i = self.MD5(key) % self.capacity
        now = self.data[i]
        #若搜尋列為不空值
        if now != None:
            #以搜尋值等於刪除值
            if now.val == key:
                self.data[i] = now.next
                now = None
            #以搜尋值不等於刪除值
            else:
                while now != None:
                    if now.val == key:
                        break
                    stop = now
                    now = now.next
        #若搜尋列為空值，表示錯誤
        if now == None:
            return
        stop.next = now.next
        now = None
        if stop.next != None:
            return self.remove(key)
        return

"""       
    #刪除
    def remove(self,key):
        #取餘數
        i = self.MD5(key) % self.capacity
        now = self.data[i]
        #若搜尋列為空值，表示錯誤
        if now == None:
            return
        #若搜尋列為不空值
        if now != None:

            if now.val == key:
                self.data[i] = now.next
                now = None
            else:
                while now != None:
                    if now.val == key:
                        break
                    stop = now
                    now = now.next

        stop.next = now.next
        now = None
        if stop.next != None:
            return self.remove(key)
        return
"""

"""
    #刪除
    def remove(self,key):
        i = self.MD5(key) % self.capacity
        if self.data[i] == None:
            return False
        else:
            now = self.data[i]
            if now.val == key:
                ptr = now.next
                ptr = None
            else:
                while now.val != key:
                    if now.next != None:
                        stop = now
                        now = now.next
                    else:
                        return self.remove(key)
                stop.next = now.next
            return
"""

"""
    #刪除
    def remove(self,key):
        i = self.MD5(key) % self.capacity
        if self.data[i] == None:
            return False
        else:
            now = self.data[i]
            while now != None:
                stop = now
                if now.val == key:
                    now.val = None
                    return
                else:
                    now = now.next
                stop.next = now.next
            return
"""





"""
hashSet.add("he")
rel = hashSet.contains("he")
print(rel)
hashSet.add("i")
rel = hashSet.contains("i")
print(rel)
hashSet.add("she")
rel = hashSet.contains("she")
print(rel)
hashSet.add("they")
rel = hashSet.contains("they")
print(rel)
hashSet.add("i")
rel = hashSet.contains("i")
print(rel)

hashSet.remove("i")
rel = hashSet.contains("i")
print(rel)
hashSet.remove("she")
rel = hashSet.contains("she")
print(rel)
hashSet.remove("pig")
rel = hashSet.contains("pig")
print(rel)
print(rel)
hashSet.remove("he")
rel = hashSet.contains("he")
print(rel)
"""
"""
參考資料：
https://www.geeksforgeeks.org/linked-list-set-3-deleting-node/
https://www.nosuchfield.com/2016/07/29/the-python-implementationp-of-HashTable/
"""
