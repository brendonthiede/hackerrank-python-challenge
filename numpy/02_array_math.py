import numpy

if __name__ == '__main__':
    rows, columns = map(int, input().split())
    a, b = (numpy.array([input().split()
                         for _ in range(rows)], int) for _ in range(2))
    print(a + b)
    print(a - b)
    print(a * b)
    print(a // b)
    print(a % b)
    print(a**b)
