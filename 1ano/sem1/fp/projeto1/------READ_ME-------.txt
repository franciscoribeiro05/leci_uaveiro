----------------------------------------
INTRODUÇÃO -----------------------------
----------------------------------------
Olá avaliador(es) do trabalho!

Para começar pode em que consistem as versões para jogar:

-- A versão original é a versão do projeto que não permite adicionar uma lista de palavras nova, contudo, permite ao utilizador inserir uma palavra nova ou uma frase para ser usada no jogo (permitindo haver 2+ jogadores a adivinhar a palavra personalizada inserida pelo utilizador), que era a ideia original do projeto

-- A versão light é a versão do projeto que em vez de permitir inserir uma palavra ou frase, segue a recomendação do professor e aceita uma lista de palavras para jogar

----------------------------------------
AVALIAR O PROJETO ----------------------
----------------------------------------

A nivel de código:

--> 'versao_original.py' é a primeira versão do nosso jogo da forca. Não contem as linhas adicionais dadas pelo professor na alteração do guião no dia 1 de novembro devido a um erro de código com a script usada.

--> 'versao_light.py' é a versão do jogo mais recente. Não tem comentários e segue apenas as indicações do guião do projeto.

--> 'forca.py' é a versão que criámos para elemnto de avaliação uma vez que contêm o código da versão original e da versão light junto, mas é necessário que o avaliador altere umas linhas no código para avaliar a opção de inserir uma lista (seguindo o guião) ou uma palavra/frase (mantendo a nossa ideia original) sem ocorrerem problemas de intercalação e mudança de variáveis indesejados. Para ser testada é necessário seguir as indicações do próximo capítulo


----------------------------------------
INDICAÇÕES VERSÃO FINAL ----------------
----------------------------------------
No dia 1 de novembro houve uma alteração no guião do projeto com o devido código:

----
import sys                  # INCLUA estas 3 linhas para permitir
if len(sys.argv) > 1:       # correr o programa com palavras dadas:
    words = sys.argv[1:]    #   python3 forca.py duas palavras
----

Contudo, o nosso grupo já tinha dado uma opção ao utilizador de adicionar a sua palavra ou frase personalizadasao programa:

----
246|    input1= input('Prima a tecla \'enter\' para começar ou escreva uma palavra/frase para ser usada no jogo:\n\n').upper().strip()
...
249|    if len(input1) > 1:
250|         palavra=input1
----

Nós optámos por deixar a nossa alteração já que tinhamos programado para que aceitasse frases, que era a nossa ideia original. Se for realmente importante para a avaliação da nota e não ter essas 3 linhas significar perder valores na cotação final então pedimos que tire a marca de comentário (# ) das seguintes linhas:

----
217|    if len(sys.argv)>0:
218|	     words=sys.argv[1:]
----

E para o código funcionar sem erros e intercalações de variáveis pedimos também que marque as seguintes linhas como comentário:

----
246|    input1= input('Prima a tecla \'enter\' para começar ou escreva uma palavra/frase para ser usada no jogo:\n\n').upper().strip()
...
249|    if len(input1) > 1:
250|         palavra=input1
----

----------------------------------------
LISTA DE PALAVRAS ----------------------
----------------------------------------

Caso o avaliador queira alterar a lista de palavras usadas de 'wordlist.py' para avaliar o código basta comentar a linha 210 e tirar a marca de comentário da linha correspondente à que deseja usar
 
----
207    # palavra vai ser uma escolhida aleatóriamente da lista não comentada:
208    # words=wordlist.words1
209    # words=wordlist.words2
210    words=wordlist.words1+wordlist.words2
----

----------------------------------------
CÓDIGO SEM VALOR ÚTIL ------------------
----------------------------------------

Se optar por fazer as alterações sugeridas no capítulo 'INDICAÇÕES VERSÃO FINAL' vai haver linhas do código original sem função útil como é o caso das seguintes linhas. Estas vão perder o sentido porque foram criadas com intenções do utilizador escolher uma frase para pôr no jogo (para mostrar onde havia espaços), o que é completamente inútil se o input do jogador for uma lista (já que a lista separa as palavras todas, não vai haver espaços para mostrar)

----
110|    # se houver espaços no meio da palavra, o tabuleiro é alterado de forma a não ter '_' nos sítios com espaços e mostra ' '
111|    # se palavra='a todos', o tabuleiro vai ser apresentado como _   _ _ _ _ _ em vez de ser _ _ _ _ _ _ _
112|    if ' ' in palavra:
113|        for i in [i for i in range(len(palavra_transformada)) if palavra_transformada[i] in ' ']:
114|            tabuleiro_de_jogo[i]=' '
----

----------------------------------------
ÚLTIMA NOTA ----------------------------
----------------------------------------

A 'versao_light.py' pode ser usada pelo avaliador como objeto de avaliação caso a forca.py não seja contabilizada devido ao facto de exigir ao avaliador ter que alterar código para conter as alterações do dia 1 de novembro


Apesar dos códigos terem uma diferença de apenas 5 linhas decidimos fazer duas versões separadas para deixar o código mais 'clean' e esse é o motivo que nos levou a criar a versão de avaliação, para o avaliador ter uma script cheia de comentários e com margem para vários testes e para as duas versões do jogo da forca poderem continuar separadas sem ter que levar com as linhas inúteis que a outra versão exige.

Obrigado por ler esta mensagem e bom jogo!!