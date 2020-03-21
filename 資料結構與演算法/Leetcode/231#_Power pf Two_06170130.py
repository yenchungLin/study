class Solution(object):
    def isPowerOfTwo(self, n):
        #小於2
        if n < 2:
            #1為2的指數次方
            if n == 1:
                return True
            #0不為2的指數
            else:
                return False
        #大於2
        else:
            #是2的倍數
            if n%2 == 0:
                return self.isPowerOfTwo(n//2)
            #不是2的倍數
            else:
                return False