import numpy
import re

def print_array(my_array):
  print(re.sub(r'([\[ ])(\d)', r'\1 \2', str(my_array)))

if __name__ == '__main__':
    my_array  = (numpy.array(input().split(), float))
    print_array(numpy.floor(my_array))
    print_array(numpy.ceil(my_array))
    print_array(numpy.rint(my_array))
