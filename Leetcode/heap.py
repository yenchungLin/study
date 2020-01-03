# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def isUnivalTree(self, root: TreeNode) -> bool:
        val = []
        
        def treedf(node):
            if node:
                val.append(node.val) #若節點存在，在val中增加節點的值
                treedf(node.left) #在左邊伸出樹枝值，回去跑treedf
                treedf(node.right) #在右邊伸出樹枝值，回去跑treedf
        treedf(root)
        return len(set(val)) == 1
            