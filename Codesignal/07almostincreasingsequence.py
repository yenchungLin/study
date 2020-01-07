"""
Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.
"""
def almostIncreasingSequence(sequence):
    #兩個以上
    if len(sequence) <= 2:
        return True
    def IncreasingSequence(test_sequence):  
        #兩個時
        if len(test_sequence) == 2:
            if test_sequence[0] < test_sequence[1]:
                return True
        #兩個以上
        else:
            for i in range(0, len(test_sequence)-1):
                if test_sequence[i] >= test_sequence[i+1]:
                    return False
                else:
                    pass
            return True
    for i in range (0, len(sequence) - 1):
        if sequence[i] >= sequence [i+1]:
            test_seq1 = sequence[:i] + sequence[i+1:]
            test_seq2 = sequence[:i+1] + sequence[i+2:]
            if IncreasingSequence(test_seq1) == True:
                return True
            elif IncreasingSequence(test_seq2) == True:
                return True
            else:
                return False