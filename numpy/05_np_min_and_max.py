import numpy


if __name__ == '__main__':
    rows, columns = map(int, input().split())
    my_array = (numpy.array([input().split() for _ in range(rows)], int))
    print(numpy.max(numpy.min(my_array, axis=1)))
