if __name__ == '__main__':
    n = int(input())
    for _ in range(n):
        try:
            numbers = input().split()
            numerator = int(numbers[0])
            denominator = int(numbers[1])
            print(int(numerator/denominator))
        except Exception as e:
            print("Error Code:", e)
