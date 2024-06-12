#greatestCommonDivisor.py

def greatestCommonDivisor(num_1,num_2):
      if num_1 > num_2:
            r = num_1 % num_2
            if r == 0:
                  return num_2
            return greatestCommonDivisor(num_2,r)
      elif num_1 <= num_2:
            r = num_2 % num_1
            if r == 0:
                return num_1
            return greatestCommonDivisor(num_1,r)
print(greatestCommonDivisor(25,5)) 


#forma mais facil de se fazer abaixo:

"""def euclidean_gcd(a, b):
    if b == 0:
        return a
    else:
        return euclidean_gcd(b, a % b)

# Example usage:
num1 = 48
num2 = 18
result = euclidean_gcd(num1, num2)
print(f"The GCD of {num1} and {num2} is: {result}")
"""