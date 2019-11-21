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
            return root
        
        #root存在
        else:
            #令偵測到的節點叫做nownode，現在偵測到root
            nownode = root
            #nownode是存在的
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
        return root
        

    #刪除(target:要刪除的值)
    def delete(self, root, target):
        if root == None:
            return root
        if root.val < target:
            return self.delete(root.left,target)
        elif root > target:
            return self.delete(root.right,target)
        else:
            #刪除為葉子
            delete_node = root
            if delete_node.left == None and delete_node.right == None:
                delete_node.val == None
            #刪除為一棵子樹
            elif delete_node.left != None and delete_node.right == None:
                delete_node.val = delete.left.val
            elif delete_node.left == None and delete_node.right != None:
                delete_node.val = delete.right.val           
            #刪除為兩棵子樹
            elif delete_node.left != None and delete_node.right != None:
                delete_node.val = delete_node.left.val
            return self.delete(root,target)

    #搜尋(target:要搜尋的值)
    def search(self, root, target):
        #tree不存在，回傳false
        if root == None:
            return root
        #節點的值與要搜尋的值相同，回傳true
        if root.val == target:
            return root
        #節點的值小於要搜尋的值，則需要移到左邊節點，再進行一次搜尋
        elif root.val < targert:
            return self.search(root.left,target)
        #節點的值大於要搜尋的值，則需要移到右邊節點，再進行一次搜尋
        else:
            return self.search(root.right,target)
        return root

    #修改(tartget:要搜尋的值，new_val:要修改的值)
    def modify(self, root, target, new_val):
        if root == None:
            return root
        #如果找到target，則將root.val變成new_val，並再搜尋看看有沒有要改的值
        if root.val == target:
            root.val = new_val
            return modify(root,val)
        #如果root.val < target，則需要移到左邊節點，再進行一次搜尋
        elif root.val < target:
            return self.modify(root.left,target,new_val)
        #如果root.val > target，則需要移到右邊節點，再進行一次搜尋
        else:
            return self.modify(root.right,target,new_val)
        #因為修改後，可能不符合binary_search_tree，所以從新建立binary_search_tree
        return insert(root,val)

"""
參考資料：
https://www.geeksforgeeks.org/binary-search-tree-set-1-search-and-insertion/      
https://www.geeksforgeeks.org/binary-search-tree-set-2-delete/
http://alrightchiu.github.io/SecondRound/binary-search-tree-searchsou-xun-zi-liao-insertxin-zeng-zi-liao.html
http://alrightchiu.github.io/SecondRound/binary-search-tree-sortpai-xu-deleteshan-chu-zi-liao.html
https://www.youtube.com/watch?v=qYo8BVxtoH4
https://guide.freecodecamp.org/algorithms/binary-search-trees/
"""