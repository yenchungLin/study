"""
Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.
"""
def adjacentElementsProduct(inputArray):
    large = []
    for i in range(0, len(inputArray)-1):
        large.append(inputArray[i]*inputArray[i+1])
    return max(large)
