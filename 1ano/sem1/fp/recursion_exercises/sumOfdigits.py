#sumOfdigits.py

def sumOfdigits(n):
    if n < 0:
        return ('Input inválido!')
    elif n < 10:
        return n
    elif n >= 10:
        return n%10 + sumOfdigits(n//10)

print(sumOfdigits(123))         
