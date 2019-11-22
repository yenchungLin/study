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
        return True
        

    #刪除(target:要刪除的值)
    def delete(self, root, target):
        if root == None:
            return False
        if root.val < target:
            return self.delete(root.left,target)
        elif root > target:
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
            return self.delete(root,target)

    #搜尋(target:要搜尋的值) 
    def search(self, root, target):
        #tree不存在，回傳false
        if root == None:
            return False
        #節點的值與要搜尋的值相同，回傳true
        if root.val == target:
            return True
        #節點的值小於要搜尋的值，則需要移到左邊節點，再進行一次搜尋
        elif root.val < target:
            return self.search(root.left,target)
        #節點的值大於要搜尋的值，則需要移到右邊節點，再進行一次搜尋
        else:
            return self.search(root.right,target)
        return True

    #修改(tartget:要搜尋的值，new_val:要修改的值)
    def modify(self, root, target, new_val):
        if root == None:
            return False
        #如果找到target，則將root.val變成new_val，並再搜尋看看有沒有要改的值
        if root.val == target:
            root.val = new_val
            return self.modify(root,target,new_val)
        #如果root.val < target，則需要移到左邊節點，再進行一次搜尋
        elif root.val < target:
            return self.modify(root.left,target,new_val)
        #如果root.val > target，則需要移到右邊節點，再進行一次搜尋
        else:
            return self.modify(root.right,target,new_val)
        #因為修改後，可能不符合binary_search_tree，所以從新建立binary_search_tree
        return self.insert(root,new_val)

"""
root = TreeNode(5)
node1 = TreeNode(3)
node2 = TreeNode(3)
node3 = TreeNode(-5)
node4 = TreeNode(8)
node5 = TreeNode(7)
node6 = TreeNode(6)
node7 = TreeNode(10)
root.left = node1
root.right = node4
node1.left = node2
node2.left = node3
node4.left = node5
node5.left = node6
node4.right = node7
print(Solution().insert(root,4)== root.left.right)
"""

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