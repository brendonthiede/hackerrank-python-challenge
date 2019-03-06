import numpy


def arrays(arr):
    numpy.set_printoptions(legacy='1.13')
    return numpy.array(arr[::-1], float)


arr = input().strip().split(' ')
result = arrays(arr)
print(result)
