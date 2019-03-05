import numpy


if __name__ == '__main__':
    rows, columns = map(int, input().split())
    my_array = (numpy.array([input().split() for _ in range(rows)], int))
    numpy.set_printoptions(legacy='1.13')
    print(numpy.mean(my_array, axis=1))
    print(numpy.var(my_array, axis=0))
    print(numpy.std(my_array, axis=None))
