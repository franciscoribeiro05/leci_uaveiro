#power.py

def power(base,n):
    if n < 0:
        return ('Input Inválido!')
    
    elif n == 0:
        return 1
    return base * power(base,n-1)

print(power(2,4))