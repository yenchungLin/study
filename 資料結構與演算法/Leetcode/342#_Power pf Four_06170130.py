class Solution(object):
    def isPowerOfFour(self, num):
        """
        :type num: int
        :rtype: bool
        """
        #小於4
        if num < 4:
            #1為4的指數次方
            if num == 1:
                return True
            #0、2、3不為4的指數
            else:
                return False
        else:
            #是4的倍數
            if num%4 == 0:
                return self.isPowerOfFour(num//4)
            #不是4的倍數
            else:
                return False