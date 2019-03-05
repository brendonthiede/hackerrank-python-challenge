import numpy


if __name__ == '__main__':
    rows, columns = map(int, input().split())
    my_array = (numpy.array([input().split()
                             for _ in range(rows)], int))
    print(numpy.prod(numpy.sum(my_array, axis=0)))
