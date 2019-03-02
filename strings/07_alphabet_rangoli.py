def get_row(character_count, total_character_count):
    row_width = 4 * total_character_count - 3
    alpha_offset = ord('a')
    letters = ""
    for i in range(total_character_count - character_count, total_character_count):
        letters = letters + '-' + chr(alpha_offset + i)
    middle_letter = chr(alpha_offset + total_character_count - character_count - 1)
    letter_pattern = letters[::-1] + middle_letter + letters
    return letter_pattern.center(row_width, '-')


def print_rangoli(total_character_count):
    rangoli = []
    for i in range(0, total_character_count):
        rangoli.append(get_row(i, total_character_count))
    for i in range(total_character_count - 2, -1, -1):
        rangoli.append(get_row(i, total_character_count))
    print("\n".join(rangoli))

if __name__ == '__main__':
    n = int(input())
    print_rangoli(n)