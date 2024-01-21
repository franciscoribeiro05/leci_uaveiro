ALUNOS = [120173,118993]

import json
import requests
import os


def clear():
  os.system('cls' if os.name == 'nt' else 'clear')


def ajuda(categorias_gerais, subcategorias, sub_subcategorias):
  while True:
  
    mostrar = categorias_gerais

    clear()
    print('======================================================================================================================== 100%') 
    print('                                                                                                         Avançar -->\n\n')
    print('Categorias:\n')
    n = 0
    for i in mostrar:
      n += 1
      print(f'{n} - {i}')
    numero = input('\n\nSe quiser selecionar uma categoria escreva o número da categoria.\n\n-> ')


    try:
      if int(numero) in range(1, len(mostrar)+1):

        tipo1 = mostrar[int(numero)-1]
        mostrar = [x for x in subcategorias if x.startswith(tipo1)]

        clear()
        print('======================================================================================================================== 100%')
        print('<-- Voltar (Enter)                                                                                           Avançar -->\n\n')
        print(f'Subcategorias:\n0 - {tipo1}')
        n = 0
        for i in mostrar:
          n += 1
          print(f'{n} - {i}')
        numero = int(input(f'\n\nSe quiser selecionar uma sub subcategoria escreva o número da subcategoria, escreva \'0\' para escolher a opção \'{tipo1}\' ou escreva \'enter\' para voltar atrás\n\n-> '))
        

        try:
          if numero == 0:
            tipos_atracoes = tipo1
            break
            
          elif numero in range(1, len(mostrar)+1):

            tipo2 = mostrar[numero-1]
            mostrar = [x for x in sub_subcategorias if x.startswith(tipo2)]

            clear()
            print('======================================================================================================================== 100%')
            print('<-- Voltar (Enter)                                                                                           Avançar -->\n\n')
            print(f'Sub subcategorias:\n0 - {tipo2}')
            n = 0
            for i in mostrar:
              n += 1
              print(f'{n} - {i}')
            numero = int(input('\n\nSelecione a sub subcategoria ou então escreva \'r\' para escolher outra subcatgoria.\n\n-> '))

            try:
              if numero == 0:
                tipos_atracoes = tipo2
                break

              elif numero in range(1, len(mostrar)+1):
                tipo3 = mostrar[numero-1]
                tipos_atracoes = tipo3

            except ValueError:
              pass

        except ValueError:
          pass

    except ValueError:
      pass

  return tipos_atracoes


def categorias(filename='categories.txt'):
  atracoes = {}
  categorias_gerais = []
  subcategorias = []
  sub_subcategorias = []
  c = 0
  filename = os.path.join(os.path.dirname(__file__),filename)
  with open(filename, 'r', encoding='utf-8') as file:
    linhas = file.read().strip().split('\n')
    paragrafos = [x.strip() for x in linhas if x != '']
    for index, paragrafos in enumerate(paragrafos, start=1):
      atracoes[index] = paragrafos
      if paragrafos.count('.') == 2:
        sub_subcategorias.append(paragrafos)
      elif paragrafos.count('.') == 1:
        subcategorias.append(paragrafos)
      elif paragrafos.count('.') == 0:
        categorias_gerais.append(paragrafos)

  return atracoes, categorias_gerais, subcategorias, sub_subcategorias


def infos(atracoes, categorias_gerais, subcategorias, sub_subcategorias):

  print('= 0%\n\n')
  input('Bem vindo ao software de planeamento de viagens.\n\nPara começar prima \'enter\'\n')

  while True:
    clear()
    print('======================== 20%\n\n')
    try:
      latitude = round(float(input('Latitude (-90 a 90): ')), 8)
    except ValueError:
      continue
    if -90 <= latitude <= 90:
      break
  
  while True:
    clear()
    print('================================================ 40%\n\n')
    try:
      longitude = round(float(input('Longitude (-180 a 180): ')), 8)
    except ValueError:
      continue
    if -180 <= longitude <= 180:
      break

  while True:
    clear()
    print('======================================================================== 60%\n\n')
    try:
      raio = round(float(input('Raio de pesquisa (em metros, minimo 1): ')), 8)
    except ValueError:
      continue
    if 1 <= raio:
      break

  while True:
    clear()
    print('================================================================================================ 80%\n\n')
    try:
      limite_de_resultados = int(input('Limite de resultados (1 a 500): '))
    except ValueError:
      continue
    if 1 <= limite_de_resultados <= 500:
      break

  while True:
    clear() 
    print('======================================================================================================================== 100%\n\n')
    tipos_atracoes = input('Digite o tipo de atrações desejada ou digite \'?\' para ver todas as opções: ')
    if '?' in tipos_atracoes:
      tipos_atracoes = ajuda(categorias_gerais, subcategorias, sub_subcategorias)
      break
    else:
      if tipos_atracoes in atracoes.values():
        break
      else:
        print(f'\n{tipos_atracoes} não é uma opção válida.\n\n')

  return latitude, longitude, raio, limite_de_resultados, tipos_atracoes


def resultados(latitude, longitude, raio, tipos_atracoes, limite_de_resultados):

  api_key = '29c1c9b99894422ba557f0f0bd53f281'
  url = f'https://api.geoapify.com/v2/places?categories={tipos_atracoes}&filter=circle:{longitude},{latitude},{raio}&bias=proximity:{longitude},{latitude}&limit={limite_de_resultados}&apiKey={api_key}'

  
  resultados = requests.get(url)
  if resultados.status_code == 200:
    dados_atracoes = resultados.json()
    return dados_atracoes.get('features', [])
  else:
    return False


def mostrar_informacoes_atracoes(dados_atracoes):

  n = 1
  distancia_total = 0

  for atracao in dados_atracoes:
    nome = atracao.get('properties', {}).get('name')
    if (nome == None):
      continue

    categorias = atracao.get('properties', {}).get('categories',[])
    for categoria in categorias:
      if ('building' not in categoria):
        categoria = categoria.capitalize()
        break
    
    latitude = atracao.get('geometry', {}).get('coordinates', [])[1]
    longitude = atracao.get('geometry', {}).get('coordinates', [])[0]
    distancia = atracao.get('properties', {}).get('distance', 'Desconhecida')
    rua = atracao.get('properties', {}).get('address_line2','Desconhecida')
    distrito = atracao.get('properties', {}).get('county','Desconhecida')
    pais = atracao.get('properties', {}).get('country','Desconhecida')
    
    api_key = '29c1c9b99894422ba557f0f0bd53f281'

    resultados = requests.get(f'https://api.geoapify.com/v2/place-details?lat={latitude}&lon={longitude}&apiKey={api_key}')
    if resultados.status_code == 200:
      dados_horarios = resultados.json().get('features', [])
      for dados in dados_horarios:
        fuso_horario = dados.get('properties', {}).get('timezone', {}).get('name', 'Desconhecido')
        horas_a_mais = dados.get('properties', {}).get('timezone', {}).get('offset_STD', '+ --:--')
    else:
      fuso_horario = 'Desconhecido'
      horas_a_mais = '+ --:--'

    
    resultados = requests.get(f'https://restcountries.com/v3.1/name/{pais}')
    if resultados.status_code == 200:
      tipo_moeda = resultados.json()
      moeda = tipo_moeda[0]['currencies']['EUR']['name']
      simbolo = tipo_moeda[0]['currencies']['EUR']['symbol']
    else:
      moeda = 'Desconhecida'
      simbolo = '?'

    distancia_total += int(distancia*0.001)
    distancia_media = round(distancia_total/n, 3)
    n += 1

    print(f'Nome: {nome} ({categoria})')
    print(f'Coordenadas: {latitude}, {longitude}')
    print(f'Distância à localização de partida: {round(distancia*0.001, 3)} km')
    print(f'Rua: {rua}')
    print(f'Cidade: {distrito}')
    print(f'Fuso horário local: {fuso_horario} ({horas_a_mais})')
    print(f'Tipo de moeda: {moeda} ({simbolo})\n\n-----------------------\n')

  try:
    return distancia_media
  except UnboundLocalError:
    return False
    
    


def main():

  clear()

  atracoes, categorias_gerais, subcategorias, sub_subcategorias = categorias()
  latitude, longitude, raio, limite_de_resultados, tipos_atracoes = infos(atracoes, categorias_gerais, subcategorias, sub_subcategorias)

  clear()

  print('=============================================================================================================================\n\n')
  print(f'Pretende validar os seguintes dados?\n\nLatitude: {latitude}\nLongitude: {longitude}\nRaio: {raio}\nAtrações escolhidas:  {tipos_atracoes}\nLimite de resultados: {limite_de_resultados}\n\n')
  continuar = input('Para prosseguir com os mesmos valores prima \'Enter\', mas se os quiser alterar escreva \'r\'.\n\n-> ')

  while True:
    if continuar.lower() == 'r':
      main()
    else:
      break

  clear()
  
  print('=============================================================================================================================\n\n')

  dados_atracoes = resultados(latitude, longitude, raio, tipos_atracoes, limite_de_resultados)
  if (dados_atracoes != False):
    distancia_media = mostrar_informacoes_atracoes(dados_atracoes)
    if int(distancia_media) != 0 and distancia_media != False:
      print(f'Distância média ao local dado: {distancia_media} km')
    else:
      print('Não foi possível encontrar resultados :(')
  else:
    print('Não foi possível encontrar resultados :(')

  continuar = input('\n\nEscreve \'r\' para continuares com novos valores ou \'enter\' para sair.\n-> ')

  while True:
    if continuar.lower() == 'r':
      main()
    else:
      clear()
      print('=============================================================================================================================\n\n')
      print('Adeus!!\n\n')
      print('=============================================================================================================================\n\n')
      exit()


if __name__ == '__main__':
  main()