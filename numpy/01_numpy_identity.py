import numpy
import re

if __name__ == '__main__':
    rows, columns = map(int, input().split())
    print(re.sub(r'([\[ ])(\d)', r'\1 \2', str(numpy.eye(rows, columns, 0))))
