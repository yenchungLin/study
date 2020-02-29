class Solution(object):
    def searchInsert(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: int
        """
        n = 0
        #在數列範圍內
        while n < len(nums):
            #數列中數字比喻加入的數字大或等於，則直接加
            if nums[n] >= target:
                return n
            #若小於則往下比
            else:
                n = n+1
        #在數列外，直接加最後
        return n