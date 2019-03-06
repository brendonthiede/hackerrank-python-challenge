import numpy


if __name__ == '__main__':
    n, m = map(int, input().split())
    my_array = (numpy.array([input().split() for _ in range(n)], int))

    numpy.set_printoptions(legacy='1.13')
    print(numpy.transpose(my_array))
    print(my_array.flatten())
