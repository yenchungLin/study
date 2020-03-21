postings = {'stan':[2, 4, 5, 6, 99, 101],
                 'brutus':[1, 2, 4, 11, 31, 45, 173, 174],
                 'calpurnia':[2,31,54,101],
                 'caesar':[5,31]}

"""
想法:posting的資料會入後，依照posting的key長度由短到長排列。
將最短的posting令為result後，將terms中的第一個刪除。result與terms中第一個進行交集，交集後，若terms中還有元素的話，則將最新交集的資料與terms中第一個再進行一次交集，直到terms變成空值為止。
再posting進行sorting的時候，我原本想用quick_sort的方式進行排列，但是posting是利用dict的方式，所以我之後會在嘗試看看。
"""
#刪除terms中的第一個
def rest(terms):
    del terms[0]
    return terms
#result與terms[0]進行交集
def INTERSECT(term_1, term_2):
    ### your code in here ###
    #先令answer為list，用來存交集
    answer = []
    i = 0 #i為result的位置
    j = 0 #i為terms[0]的位置
    #當result與terms[0]的元素皆存在時
    while i < len(term_1) and j < len(term_2):
        #若reslut = terms[0]，存入answer中
        if term_1[i] == term_2[j]:
            answer.append(term_1[i])
            i = i+1
            j = j+1
        #若result < terms[0]，則result要移到下一位
        elif term_1[i] < term_2[j]:
            i = i+1
        #若result > terms[0]，則terms[0]要移到下一位
        else:
            j = j+1
    return answer

# 檢索由長排到短
def SORTBYINCREASINGFREQUENCY(terms):
    ### your code in here ###
    terms.sort(key=len)
    """
    i = 0 #
    small = []
    equ = []
    big = []
    base = len(terms[0])
    if len(terms) <2:
        return terms
    else:
        for i in range(0,len(terms)):
            if len(terms[i]) < base:
                small.append(terms[i])
                i = i+1
            elif len(terms[i]) == base:
                equ.append(terms[i])
                i = i+1
            else:
                big.append(terms[i])
                i = i+1

    small = SORTBYINCREASINGFREQUENCY(small)
    big = SORTBYINCREASINGFREQUENCY(big)
    terms = big + equ + small
    """
    return terms

def boolean_retrieval(terms):
    terms = SORTBYINCREASINGFREQUENCY([postings[t] for t in query if t in postings])
    #如果terms不存在，則回傳空值
    if len(terms) == 0: return []
    #令result為terms[0]，刪除terms[0]
    result = terms[0]
    terms = rest(terms)
    ### your code in here ###
    #若terms存在，回傳到INTERSECT進行交集
    while terms != None:
        return INTERSECT(result,terms[0])
    return result

if __name__ == '__main__':
    query = ['brutus', 'calpurnia', 'stan']
    answer = boolean_retrieval(query)
    print('The query {:} are appeared in document ID: {:}'.format(query,answer))