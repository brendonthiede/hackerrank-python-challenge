import math

def get_row(row_number, width):
    return ('.|.' * (row_number * 2 + 1)).center(width, '-')


def make_mat(height, width):
    first_half = int(math.floor(height / 2))
    mat = []
    for i in range(0, first_half):
        mat.append(get_row(i, width))
    mat.append('WELCOME'.center(width, '-'))
    for i in range(first_half - 1, -1, -1):
        mat.append(get_row(i, width))
    return "\n".join(mat)


if __name__ == '__main__':
    args = input().split()
    height = int(args[0])
    width = int(args[1])
    result = make_mat(height, width)
    print(result)
