"""
Given two strings, find the number of common characters between them.
"""
def commonCharacterCount(s1, s2):
    s1_list = []
    s2_list = []
    for i in s1:
        s1_list.append(i)
    for i in s2:
        s2_list.append(i)
    c = 0
    #如果兩者皆有，則移除
    for i in s1_list:
        if i in s2_list:
            s2_list.remove(i)
            c += 1
    return c