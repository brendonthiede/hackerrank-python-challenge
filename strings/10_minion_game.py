def is_vowel(letter):
    return letter in ['A', 'E', 'I', 'O', 'U']


def minion_game(string):
    stuart_score = 0
    kevin_score = 0
    for i in range(0, len(string)):
        letter_score = len(string) - i
        if is_vowel(string[i]):
            kevin_score = kevin_score + letter_score
        else:
            stuart_score = stuart_score + letter_score
    if stuart_score == kevin_score:
        print('Draw')
    elif stuart_score > kevin_score:
        print('Stuart ' + str(stuart_score))
    else:
        print('Kevin ' + str(kevin_score))


if __name__ == '__main__':
    s = input()
    minion_game(s)
