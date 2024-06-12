AUTORES = [120173,118993]

import sys
import wordlist
import random
import unidecode
import time
import os


def clear():
    clear=os.system('cls')
    return clear     

def erros(vidas_usadas):
    forca= {0:
                '_____'
                '\n|/  |'
                '\n|'
                '\n|'
                '\n|'
                '\n|_______   Erros:0/6',
            1: 
                '_____'
                '\n|/  |'
                '\n|   O'
                '\n|'
                '\n|'
                '\n|_______   Erros:1/6',
            2: 
                '_____'
                '\n|/  |'
                '\n|   O'
                '\n|   |'
                '\n|'
                '\n|_______   Erros:2/6',
            3: 
                '_____'
                '\n|/  |'
                '\n|   O'
                '\n|  /|'
                '\n|'
                '\n|_______   Erros:3/6',
            4: 
                '_____'
                '\n|/  |'
                '\n|   O'
                '\n|  /|\\'
                '\n|'
                '\n|_______   Erros:4/6',
             5: 
                '_____'
                '\n|/  |'
                '\n|   O'
                '\n|  /|\\'
                '\n|  /'
                '\n|_______   Erros:5/6',
            6: 
                '_____'
                '\n|/  |'
                '\n|   O'
                '\n|  /|\\'
                '\n|  / \\'
                '\n|_______   Erros:6/6',}
    
    return forca[vidas_usadas] 

def jogadas(palavra,ajuda,vidas_usadas):
    
    letras_erradas=[]
    tabuleiro_de_jogo=['_']*len(palavra)
    palavra_transformada=[*unidecode.unidecode(palavra)]
    substituir_tabuleiro=[*palavra]
    letras_por_adivinhar=[*'ABCDEFGHIJKLMNOPQRSTUVWXYZ']
    
    tentativas=0

    if ' ' in palavra:
        for i in [i for i in range(len(palavra_transformada)) if palavra_transformada[i] in ' ']:
            tabuleiro_de_jogo[i]=' '


    while True:

        indicador_letras_acrescentadas=[' ']*len(palavra)
        letra_revelada=unidecode.unidecode(palavra_transformada[tabuleiro_de_jogo.index('_')])
        tabuleiro_de_jogo_transformado=[*unidecode.unidecode(''.join(tabuleiro_de_jogo))]
        tabuleiro_por_adivinhar='\n\n\nLetras por adivinhar:  '+' '.join(letras_por_adivinhar)

        try:
            print(erros(vidas_usadas),'\n\n ',' '.join(tabuleiro_de_jogo),'\n ',' '.join(indicador_letras_acrescentadas),'\n\n ',' '.join(letras_erradas),tabuleiro_por_adivinhar)
        except NameError:
            print(erros(vidas_usadas),'\n\n ',' '.join(tabuleiro_de_jogo),'\n ',' '.join(indicador_letras_acrescentadas),'\n\n ',' '.join(letras_erradas))


        letra=unidecode.unidecode(input('\n\nEscreve uma letra: ').upper().strip())

        clear()

        if letra=='AJUDA':
            if ajuda>0:
                ajuda-=1
                for i in [i for i in range(len(palavra_transformada)) if palavra_transformada[i] in letra_revelada]:
                    tabuleiro_de_jogo[i]=substituir_tabuleiro[i]
                    indicador_letras_acrescentadas[i]='*'
                letras_por_adivinhar[letras_por_adivinhar.index(letra_revelada)]='-'
                tentativas+=1

            else:
                print('\nNão tens mais ajudas disponíveis')
                input()
                clear()

        elif len(letra)==1 and letra.isalpha()==True:

            if letra not in letras_erradas and letra not in tabuleiro_de_jogo_transformado:

                    if letra in palavra_transformada:
                        
                        for i in [i for i in range(len(palavra_transformada)) if palavra_transformada[i] in letra]:
                            tabuleiro_de_jogo[i]=substituir_tabuleiro[i]
                            indicador_letras_acrescentadas[i]='*'
                        letras_por_adivinhar[letras_por_adivinhar.index(letra)]='-'
                        tentativas+=1

                    else:
                        letras_erradas.append(letra)
                        vidas_usadas+=1
                        letras_por_adivinhar[letras_por_adivinhar.index(letra)]='-'
                        tentativas+=1

                        if vidas_usadas==6:
                            print(erros(vidas_usadas),'\n\n ',' '.join(tabuleiro_de_jogo),'\n\n\nGAME OVER\n\nA palavra certa era:',palavra)
                            exit()

            else:
                print('Essa letra já foi usada! Tenta outra..')
                input()
                clear()

        else:
            print('Tens que escrever uma letra ou então escrever \'ajuda\' se quiseres usar a tua dica!')
            input()
            clear()

        if '_' not in tabuleiro_de_jogo:
            print(erros(vidas_usadas),'\n\n ',' '.join(tabuleiro_de_jogo),'\n\n\nGANHAS-TE O JOGO DA FORCA!!')
            print('\n\nUsaste um total de {} jogadas e cometeste {} erro(s)'.format(tentativas,vidas_usadas))
            exit()



def main():
    
    words=wordlist.words1+wordlist.words2

    if len(sys.argv)>1:
        words=sys.argv[1:]
    
    palavra=random.choice(words).upper()

    clear()
    print('\n\n\n---------- O JOGO DA FORCA ----------')
    time.sleep(2)
    clear()

    print('Permitir duas ajudas durante o jogo? S/N')

    while True:
        modo_ajuda=input('\n-> ').upper()
        if modo_ajuda=='S':
            ajuda=2
            print('\nPara usar as ajudas escreve \'ajuda\'!!')
            input()
            break
        elif modo_ajuda.upper()=='N':
            ajuda=0
            break
        print('\nTens que responder com S (sim) ou N (não)!!')
    clear()

    vidas_usadas=0

    jogadas(palavra,ajuda,vidas_usadas)

    


if __name__=='__main__':
    main()