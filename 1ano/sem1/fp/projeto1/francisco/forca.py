AUTORES = [120173,118993]       #   RECOMENDAMOS A LEITURA DO GUIÃO READ_ME.PY ANTES DE AVALIAR O CÓDIGO

import sys                      #importar o módulo sys para poder usar a alteração do professor do dia 1 de novembro
import wordlist                 #importar a lista de palavras
import random                   #importar o módulo random para selecionar uma palavra da lista aleatóriamente
import unidecode                #importar o módulo que 'remove' os acentos e cedilhas
import time                     #importar o módulo que controla o tempo de display do menu do jogo
import os                       #importar o módulo que permite comunicar com o terminal


'''
O código da nossa versão do jogo da forca utiliza 4 funções:

- clear()
função usada para eliminar todo o histórico do terminal aberto para dar um aspeto mais limpo ao jogo
de cada vez que o utilizador adivinha (ou erra) uma palavra

- erros()
função usada para que, usando um argumento 'vidas_usadas', o jogo vá procurar no dicionário 'forca'
qual é a imagem da forca que tem que apresentar correspondente ao número de vidas usadas pelo utilizador
nesse momento

- jogadas()
função usada para separar as tentativas em certas e erradas comparando-as com a palavra secreta, controlar as
letras que já foram adivinhadas pelo jogador e as ajudas gastas, mostrar o 'tabuleiro' de jogo e o número de
erros (recorrendo à função erros()) e terminar o programa caso haja vitória ou derrota.

-main()
função usada para apresentar o menu inicial do jogo dando a opção do jogador ter duas ajudas durante o jogo e
a opção do jogador escolher uma palavra ou frase personalizada para jogar o jogo
'''

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
    
    # lista para agrupar as letras erradas do jogador
    letras_erradas=[]

    # lista para mostrar o número de letras que faltam o jogador adivinhar e as respetivas posições
    tabuleiro_de_jogo=['_']*len(palavra)

    # transforma a palavra numa versão sem acentos e cedilhas para facilitar a comparação e guarda-a numa lista
    # com as letras separadas
    palavra_transformada=[*unidecode.unidecode(palavra)]

    # lista com as letras da palavra secreta para depois substituir no 'tabuleiro' quando adivinhadas pelo jogador
    substituir_tabuleiro=[*palavra]

    # lista que regista as letras que faltam ser adivinhadas
    letras_por_adivinhar=[*'ABCDEFGHIJKLMNOPQRSTUVWXYZ']
    
    tentativas=0

    # se houver espaços no meio da palavra, o tabuleiro é alterado de forma a não ter '_' nos sítios com espaços e mostra ' '
    # se palavra='a todos', o tabuleiro vai ser apresentado como _   _ _ _ _ _ em vez de ser _ _ _ _ _ _ _
    if ' ' in palavra:
        for i in [i for i in range(len(palavra_transformada)) if palavra_transformada[i] in ' ']:
            tabuleiro_de_jogo[i]=' '
    # se houver travessões no meio da palavra, o tabuleiro é alterado de forma a não ter '_' nos sítios com travessões e mostra '-'
    # se palavra='arranha-céus', o tabuleiro vai ser apresentado como _ _ _ _ _ _ _ - _ _ _ _ em vez de ser _ _ _ _ _ _ _ _ _ _ _ _
    if '-' in palavra:
        for i in [i for i in range(len(palavra_transformada)) if palavra_transformada[i] in '-']:
            tabuleiro_de_jogo[i]='-'


    while True:

        # lista que vai ser usada para marcar a posição onde foi colocada uma nova letra
        indicador_letras_acrescentadas=[' ']*len(palavra)
        
        # no caso das ajudas, a letra que vai ser revelada é a da primeira posição não mostrada ao jogador
        letra_revelada=unidecode.unidecode(palavra_transformada[tabuleiro_de_jogo.index('_')])

        # tabuleiro virtual com todas as letras sem acentos e cedilhas para facilitar a comparação
        tabuleiro_de_jogo_transformado=[*unidecode.unidecode(''.join(tabuleiro_de_jogo))]

        # mostra as letras que faltam ser adivinhadas
        tabuleiro_por_adivinhar='\n\n\nLetras por adivinhar:  '+' '.join(letras_por_adivinhar)

        # mostra o estado atual do jogo (desenho da forca, letras adivinhadas e restantes, onde foi colocada a nova letra
        # e as letras erradas)
        try:
            print(erros(vidas_usadas),'\n\n ',' '.join(tabuleiro_de_jogo),'\n ',' '.join(indicador_letras_acrescentadas),'\n\n ',' '.join(letras_erradas),tabuleiro_por_adivinhar)
        except NameError:
            print(erros(vidas_usadas),'\n\n ',' '.join(tabuleiro_de_jogo),'\n ',' '.join(indicador_letras_acrescentadas),'\n\n ',' '.join(letras_erradas))

        # recebe um input do utilizador retiranto aassentos e cedilhas, pondo como maiúscula e retirando espaços em branco
        # antes e depois do input
        letra=unidecode.unidecode(input('\n\nEscreve uma letra: ').upper().strip())

        clear()

        # no caso do input letra ser a palavra ajuda, é usada uma ajuda
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

        # no caso do input letra ser a uma letra, é verificado se ela já foi dada pelo utilizador e caso negativo analisa se
        # esta pertence ou não à palavra secreta
        elif len(letra)==1 and letra.isalpha()==True:

            if letra not in letras_erradas and letra not in tabuleiro_de_jogo_transformado:

                    if letra in palavra_transformada:
                        
                        for i in [i for i in range(len(palavra_transformada)) if palavra_transformada[i] in letra]:
                            tabuleiro_de_jogo[i]=substituir_tabuleiro[i]
                            indicador_letras_acrescentadas[i]='*'
                        letras_por_adivinhar[letras_por_adivinhar.index(letra)]='-'
                        tentativas+=1

                    # a cada tentativa errada o jogo tira uma vida ao jogador e termina o programa quando forem antingidas
                    # as 6 vidas usadas   
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

        # no caso do input letra não ser 'ajuda' nem uma letra, o jogo não aceita o caracter e pede um novo ao jogador
        else:
            print('Tens que escrever uma letra ou então escrever \'ajuda\' se quiseres usar a tua dica!')
            input()
            clear()

        # se não houver mais espaços por preencher no tabuleiro, o jogador ganha
        if '_' not in tabuleiro_de_jogo:
            print(erros(vidas_usadas),'\n\n ',' '.join(tabuleiro_de_jogo),'\n\n\nGANHAS-TE O JOGO DA FORCA!!')
            print('\n\nUsaste um total de {} jogadas e cometeste {} erro(s)'.format(tentativas,vidas_usadas))
            exit()



def main():
    
    # palavra vai ser uma escolhida aleatóriamente da lista não comentada:
    # words=wordlist.words1
    # words=wordlist.words2
    words=wordlist.words1+wordlist.words2

    # if len(sys.argv)>1:
    #    words=sys.argv[1:]
    
    palavra=random.choice(words).upper()

    clear()
    print('\n\n\n---------- O JOGO DA FORCA ----------')
    time.sleep(2)
    clear()

    # pergunta que possibilita ao utilizador beneficiar do uso de duas ajudas durante o jogo
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

    # pergunta que possibilita ao utilizador escolher uma palavra personalizada ou então prosseguir
    input1= input('Prima a tecla \'enter\' para começar ou escreva uma palavra/frase para ser usada no jogo:\n\n').upper().strip()

    # se o input não for só enter, a nova palavra secreta vai ser a que o jogador escolher
    if len(input1) > 1:
         palavra=input1
    
    clear()

    # o jogo começa com 0 vidas usadas (como é óbvio..)
    vidas_usadas=0

    jogadas(palavra,ajuda,vidas_usadas)


# bom jogo!!
if __name__=='__main__':
    main()