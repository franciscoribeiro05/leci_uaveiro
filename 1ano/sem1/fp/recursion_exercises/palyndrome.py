#palyndrome.py

def palindrome(string):  
    if len(string) <= 1:
        return True
    elif string[0] != string[-1]:
        return False
    else:
    
        return palindrome(''.join(string[1:-1]))
print(palindrome('abccba'))