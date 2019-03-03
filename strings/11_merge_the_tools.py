def merge_the_tools(string, k):
    for i in range(0, len(string), k):
        segment = string[i:i + k]
        unique = []
        for char in segment:
            if (char not in unique):
                unique.append(char)
        print(''.join(unique))


if __name__ == '__main__':
    string, k = input(), int(input())
    merge_the_tools(string, k)
