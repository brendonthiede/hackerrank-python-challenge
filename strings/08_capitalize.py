#!/bin/python3

import os
import re


def solve(s):
    pattern = re.compile(r'(\b[\w]*\b[ ]*)')
    capitalized_word = ''
    for match in pattern.finditer(s):
        word = match.group(1)
        if (len(word) > 0):
          capitalized_word = capitalized_word + word[0].upper()
          if (len(word) > 1):
              capitalized_word = capitalized_word + word[1:]
    return capitalized_word


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')
    s = input()
    result = solve(s)
    fptr.write(result + '\n')
    fptr.close()
