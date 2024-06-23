from math import prod
import random

def test1(n):
    A = [ random.uniform(0,1) for i in range(n) ]
    B = [ random.uniform(0,1) for i in range(n) ]
    r = [ 1 if A[i] + B[i] < 1 and B [i] < 0.5 else 0 for i in range(n) ]

    return sum(r)/n

print(test1(10000))




