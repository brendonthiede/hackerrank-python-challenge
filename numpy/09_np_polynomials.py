import numpy


if __name__ == '__main__':
    coefficients = numpy.array(input().split(), float)
    x = float(input())
    numpy.set_printoptions(legacy='1.13')
    print(numpy.polyval(coefficients, x))
