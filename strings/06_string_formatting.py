# https://www.hackerrank.com/challenges/python-string-formatting/problem


def print_row(decimal, width):
    octal_val = format(decimal, 'o')
    hex_val = format(decimal, 'X')
    binary_val = format(decimal, 'b')
    print(str(decimal).rjust(width) + ' ' + octal_val.rjust(width) +
          ' ' + hex_val.rjust(width) + ' ' + binary_val.rjust(width))


def print_formatted(number):
    width = len(format(number, 'b'))
    for i in range(1, number + 1):
        print_row(i, width)


if __name__ == '__main__':
    n = int(input())
    print_formatted(n)
