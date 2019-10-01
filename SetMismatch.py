class Solution:
    def findErrorNums(self, nums: List[int]) -> List[int]:
        nums.sort()
        ex_list = [i for i in range(1,len(nums))]
        ex_set = set(ex_list)
        num_set = set(nums)
        mis = ex_set - num_set
        
        rep = []
        for i in range(1,len(nums)-1):
            if nums[i] == nums[i-1]:
                rep.append(nums[i])
        rep_set = set(rep)
        
        result = mis|rep_set
        return list(result)
