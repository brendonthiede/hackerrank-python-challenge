import numpy


if __name__ == '__main__':
    a, b = (numpy.array(input().split(), int) for _ in range(2))
    numpy.set_printoptions(legacy='1.13')
    print(numpy.inner(a, b))
    print(numpy.outer(a, b))
