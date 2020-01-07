"""
Given the string, check if it is a palindrome.
"""
def checkPalindrome(inputString):
    start = 0
    end = len(inputString) -1
    #start >= end表示已經比完了
    while start < end:
        if inputString[start] != inputString[end]:
            return False
        start = start + 1
        end = end - 1
    return True
        