import socket
import random
import threading

def handle_client_connection(client_socket, address):
    print(f'Accepted connection from {address[0]}:{address[1]}')

    # Gerar o número aleatório entre 1 e 100
    number_to_guess = random.randint(1, 100)
    print(f"Servidor gerou o número (não mostre ao cliente): {number_to_guess}")

    client_socket.send("Bem-vindo ao jogo de adivinhar o número! Adivinhe um número entre 1 e 100.\n".encode())

    attempts = 0  # Contador de tentativas

    while True:
        # Receber o palpite do cliente
        guess = client_socket.recv(1024).decode().strip()

        if not guess:
            break

        # Verificar se o palpite é um número válido
        if guess.isdigit():
            guess = int(guess)  # Converte o palpite em um inteiro
        else:
            client_socket.send("Por favor, envie um número válido.\n".encode())
            continue  # Retorna ao início do loop para o cliente tentar novamente

        # Incrementar o número de tentativas
        attempts += 1

        # Verificar o palpite
        if guess < number_to_guess:
            client_socket.send("O número é maior. Tente novamente!\n".encode())
        elif guess > number_to_guess:
            client_socket.send("O número é menor. Tente novamente!\n".encode())
        else:
            client_socket.send(f"Parabéns! Você adivinhou o número {number_to_guess} em {attempts} tentativas!\n".encode())
            break

    # Fechar o socket após o jogo
    client_socket.close()


def start_server():
    ip_addr = "0.0.0.0"
    tcp_port = 5005

    server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server.bind((ip_addr, tcp_port))
    server.listen(5)

    print(f'Listening on {ip_addr}:{tcp_port}')

    while True:
        client_sock, address = server.accept()
        client_handler = threading.Thread(target=handle_client_connection, args=(client_sock, address), daemon=True)
        client_handler.start()

if __name__ == "__main__":
    start_server()
