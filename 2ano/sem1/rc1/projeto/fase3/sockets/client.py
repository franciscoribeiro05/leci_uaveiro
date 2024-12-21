import socket

def start_client():
    ip_addr = "127.0.0.1"
    tcp_port = 5005

    client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    client_socket.connect((ip_addr, tcp_port))

    while True:
        response = client_socket.recv(1024).decode()  # Recebe a mensagem do servidor
        print(response, end="")  # Exibe a mensagem para o cliente

        if response.startswith("Parabéns"):  # Se o servidor disser "Obrigado por jogar"
            break  # Encerra o loop, fechando a conexão com o servidor

        # Enviar palpite
        guess = input("Digite seu palpite: ")
        client_socket.send(guess.encode())

    client_socket.close()

if __name__ == "__main__":
    start_client()
