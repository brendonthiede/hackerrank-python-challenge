import re

if __name__ == '__main__':
    n = int(input())
    for _ in range(n):
        try:
            pattern = input()
            re.compile(pattern)
            print('True')
        except Exception as e:
            print('False')
