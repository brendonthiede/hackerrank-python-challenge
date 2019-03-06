import numpy


if __name__ == '__main__':
    rows = int(input())
    a, b = (numpy.array([input().split()
                         for _ in range(rows)], int) for _ in range(2))
    numpy.set_printoptions(legacy='1.13')
    print(numpy.dot(a, b))
