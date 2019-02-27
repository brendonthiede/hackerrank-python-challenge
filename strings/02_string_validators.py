import re

if __name__ == '__main__':
    s = input()

def has_uppercase(string):
    if re.match( r'.*[A-Z].*', string):
        return True
    else:
        return False

def has_lowerercase(string):
    if re.match( r'.*[a-z].*', string):
        return True
    else:
        return False

def has_digit(string):
    if re.match( r'.*[0-9].*', string):
        return True
    else:
        return False

print (has_uppercase(s) or has_lowerercase(s) or has_digit(s))
print (has_uppercase(s) or has_lowerercase(s))
print (has_digit(s))
print (has_lowerercase(s))
print (has_uppercase(s))
