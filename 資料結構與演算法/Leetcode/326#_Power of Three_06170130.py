class Solution:
    def isPowerOfThree(self, n: int) -> bool:
        #如果是小於三
        if (n <= 2):
            #除了1是3的指數次方外，其他的都不是3的指數次方
            if n == 1:
                return True
            else:
                return False
        #如果大於三
        else:
            #除以3整除的話，表示是3的倍數
            if (n % 3 == 0):
                return self.isPowerOfThree(n//3)
            #如果無法整除則表示不是3的倍數
            else:
                return False