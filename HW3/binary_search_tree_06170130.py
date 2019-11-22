# Definition for a binary tree node.
class TreeNode(object):
    def __init__(self,x):
        self.val = x
        self.left = None
        self.right = None

class Solution(object):
    #增加
    def insert(self, root, val):
        newnode = TreeNode(val)
        newnode.left = None
        newnode.right = None
        newnode.val = val
        
        #由root開始比
        #root不存在，則newnode會變成root
        if root == None:
            root = newnode
            return True
        
        #root存在
        else:
            #令偵測到的節點叫做nownode，現在偵測到root
            #now是存在的
            nownode = root
            while nownode != None:
                #令停下來的點叫做stopnode
                stopnode = nownode
                #如果newnode的val > nownode.data，則往nownode.right進行比較
                if val > nownode.val:
                    nownode = nownode.right
                    
                #如果newnode的val <= nownode.data，則往nownode.left進行比較
                else:
                    nownode = nownode.left
            #如果nownode不存在的話，令nownode為stopnode
            #如果newnode的val > stopnode.data，則將newnode增加在stopnode.right
            if val > stopnode.val:
                stopnode.right = newnode
            #如果newnode的val <= stopnode.data，則將newnode增加在stopnode.left
            else:
                stopnode.left = newnode
        return root.val
        

    #刪除(target:要刪除的值)
    def delete(self, root, target):
        if root == None:
            return True
        if root.val < target:
            return self.delete(root.left,target)
        elif root.val > target:
            return self.delete(root.right,target)
        else:
            #刪除為葉子
            delete_node = root
            if delete_node.left == None and delete_node.right == None:
                delete_node == None
                return True
            #刪除為一棵子樹
            else:
                #若左節點有值，將左節點代替其父節點
                if delete_node.left != None :
                    temp = delete_node
                    delete_node = delete_node.left
                    del temp
                    return True
                #若右節點有值，將右節點代替其父節點
                elif delete_node.right != None:
                    temp = delete_node
                    delete_node = delete_node.right
                    del temp
                    return True
                #刪除為兩棵子樹，由右邊子樹去尋找一個左節點，而此節點是沒有子節點
                temp = root.right
                min_val = temp.val
                while temp.left != None:
                    temp = temp.left
                    min_val = temp.val
                root.val = min_val
                temp = None
                return True
            return True

    #搜尋(target:要搜尋的值)
    def search(self,root,target):
        #tree不存在，回傳flase
        if root == None:
            return True
        #節點要跟搜尋值相同，回傳true
        if root.val == target:
            return root
        #節點的值小於要搜尋的值責需要往左邊節點移動，再進行一次搜尋
        elif root.val < target:
            return self.search(root.right,target)
        #節點的值小於要搜尋的值責需要往左邊節點移動，再進行一次搜尋
        else:
            return self.search(root.left,target)
        return True
    #修改(tartget:要搜尋的值，new_val:要修改的值)
    def modify(self, root, target, new_val):
        if root == None:
            return True
        #如果找到target，則將root.val變成new_val，並再搜尋看看有沒有要改的值
        if root.val == target:
            root.val = new_val
            return self.modify(root,target,new_val)
        #如果root.val < target，則需要移到左邊節點，再進行一次搜尋
        elif root.val < target:
            return self.modify(root.right,target,new_val)
        #如果root.val > target，則需要移到右邊節點，再進行一次搜尋
        else:
            return self.modify(root.left,target,new_val)
        #因為修改後，可能不符合binary_search_tree，所以從新建立binary_search_tree
        return True

import copy
from binary_search_tree_06170130 import Solution
from binary_search_tree_06170130 import TreeNode

root  = TreeNode(5)
Node1 = TreeNode(3)
Node2 = TreeNode(3)
Node3 = TreeNode(-5)
Node4 = TreeNode(8)
Node5 = TreeNode(7)
Node6 = TreeNode(6)
Node7 = TreeNode(10)
root.left=Node1
root.right=Node4
Node1.left=Node2
Node2.left=Node3
Node4.left=Node5
Node4.right=Node7
Node5.left=Node6

root1=copy.deepcopy(root)
root2=copy.deepcopy(root)
root3=copy.deepcopy(root)
root4=copy.deepcopy(root)

print("insert")
print(Solution().insert(root1,4) ==root1.left.right)
print("------------------")
print("delete")
#root2=Solution().delete(root2,3)
#print(root2.val==5 and root2.left.val==-5 and root2.left.left==None and root2.left.right==None)
#print(root2.right.right.val==10 and root2.right.left.val==7 and root2.right.left.left.val== 6)
#print(root2.right.right.right==None and root2.right.right.left== None and root2.right.left.right==None )
#print(root2.right.left.left.left==None  and root2.right.left.left.right==None and root2.right.val== 8)
print("------------------")
print("search")
print(Solution().search(root3,10) ==root3.right.right)
print("------------------")
print("modify")    
root4 = Solution().modify(root4,7,4)
#print(isBinarySearchTree(root4))
print("--------------------------------------------------")

"""
參考資料： https://www.geeksforgeeks.org/binary-search-tree-set-1-search-and-insertion/
https://www.geeksforgeeks.org/binary-search-tree-set-2-delete/
http://alrightchiu.github.io/SecondRound/binary-search-tree-searchsou-xun-zi-liao-insertxin-zeng-zi-liao.html
http://alrightchiu.github.io/SecondRound/binary-search-tree-sortpai-xu-deleteshan-chu-zi-liao.html
https://www.youtube.com/watch?v=qYo8BVxtoH4
https://www.youtube.com/watch?v=gcULXE7ViZw
https://www.youtube.com/watch?v=puyl7MBqPIg&feature=emb_logo
https://www.techiedelight.com/deletion-from-bst/
"""