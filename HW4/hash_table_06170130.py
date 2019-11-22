class ListNode:
    def __init__(self, val):
        self.val = val
        self.next = None
        """
        :type val: int
        :type next: ListNode
        :rtype: None        
        """
class MyHashSet:
    def __init__(self, capacity):
        self.capacity = capacity
        self.data = [None] * capacity
        """
        :type capacity: int
        :rtype: None
        """
    def add(self, key):
        """
        :type key: int
        :rtype: None
        """
    def remove(self, key):
        """
        :type key: int
        :rtype: None
        """
    def contains(self, key):
        """
        :type key: int
        :rtype: bool(True or False)
        """

from Crypto.Hash import MD5
h = MD5.new()
#字串要說明型態（編碼）
h.update("haha",encoding = "utf-8")
print (h.hexdigest())
x = int(h.hexdigest(),16)
print(x)
print(x%5)
hashSet = MyHashSet()
hashSet.add(100)
hashSet.add(20)
rel = hashSet.contains(100)
print(rel)
rel = hashSet.contains(20)
print(rel)
rel = hashSet.contains(3)
print(rel)
hashSet.add(25)
rel = hashSet.contains(25)
print(rel)
hashSet.remove(20)
rel = hashSet.contains(20)
print(rel)