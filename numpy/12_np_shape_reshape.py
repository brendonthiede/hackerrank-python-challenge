import numpy


if __name__ == '__main__':
    my_array = numpy.array(input().split(), int)
    numpy.set_printoptions(legacy='1.13')
    print(numpy.reshape(my_array, (3, 3)))
