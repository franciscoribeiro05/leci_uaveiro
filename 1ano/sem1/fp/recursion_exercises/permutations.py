#permutations.py

def permutations(string):
    permutations_var = []
    if len(string) <= 1:
        return [string] 
    
    
    for i in range(len(string)):
        letra_escolhida = string[i]
        letras_restantes = string[:i] + string[i+1:]

        for permutation in permutations(letras_restantes):
            add = permutation + letra_escolhida
            permutations_var.append(add)
    return permutations_var
    
print(permutations('abc'))