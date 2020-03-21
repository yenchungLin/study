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