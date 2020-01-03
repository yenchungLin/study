class Node:
    def __init__(self, element):
        self.element = element
        self.next = None

class LinkedList:
    def __init__(self):
        self.__head = None
        self.__tail = None
        self.__size = 0
    
    #回傳linked_list頭的值
    def getHead(self):
        return self.__head

    #回傳linked_list尾的值
    def getTail(self):
        return self.__tail

    #找linked_list頭
    def getFirst(self):
        if self.__size == 0:
            return None
        else:
            return self.__head.element

    #找linked_list頭
    def getLast(self):
        if self.__size == 0:
            return None
        else:
            return self.__tail.element

    #加節點在頭
    def addFirst(self, e):
        newNode = Node(e) 
        newNode.next = self.__head 
        self.__head = newNode 
        self.__size += 1 
        
        #如果一開始直有頭時
        if self.__tail == None: 
            self.__tail = self.__head
    
    #加節點在尾
    def addLast(self, e):
        newNode = Node(e) 

        #若尾不存在，頭下一個是新結點
        if self.__tail == None:
            self.__head = self.__tail = newNode
        #若尾存在，尾的下一個是新節點
        else:
            self.__tail.next = newNode 
            self.__tail = self.__tail.next 

        #size要加1
        self.__size += 1 

    #加節點在中間
    def insert(self, index, e):
        #加在頭
        if index == 0:
            self.addFirst(e)
        #加在尾
        elif index >= self.__size:
            self.addLast(e)
        #加在中間
        else: 
            current = self.__head
            for i in range(1, index):
                current = current.next
            temp = current.next
            current.next = Node(e)
            (current.next).next = temp
            self.__size += 1

    #移除節點在頭
    def removeFirst(self):
        #節點不存在
        if self.__size == 0:
            return None 
        #節點存在
        else:
            temp = self.__head 
            self.__head = self.__head.next
            self.__size -= 1
            if self.__head == None:
                self.__tail = None
            return temp.element 

    #移除節點在尾
    def removeLast(self):
        #節點不存在
        if self.__size == 0:
            return None
        #若只有一個節點
        elif self.__size == 1: 
            temp = self.__head
            self.__head = self.__tail = None 
            self.__size = 0
            return temp.element
        #若很多節點
        else:
            current = self.__head

            for i in range(self.__size - 2):
                current = current.next

            temp = self.__tail
            self.__tail = current
            self.__tail.next = None
            self.__size -= 1
        return temp.element

    def removeAt(self, index):
        if index < 0 or index >= self.__size:
            return None # Out of range
        elif index == 0:
            return self.removeFirst() # Remove first
        elif index == self.__size - 1:
            return self.removeLast() # Remove last
        else:
            previous = self.__head

            for i in range(1, index):
                previous = previous.next

            current = previous.next
            previous.next = current.next
            self.__size -= 1
            return current.element