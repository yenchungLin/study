"""
Given an array of strings, return another array containing all of its longest strings.
"""
def allLongestStrings(inputArray):
    b = []
    a = max(inputArray,key = len)
    #第i列與a的長度相同
    for i in inputArray:
        if len(i) == len(a):
            b.append(i)
    return b