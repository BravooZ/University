import socket

def main():
    udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    udp_s.bind(("127.0.0.1", 1234))

    addr_list = []

    try:
        while True:
            b_data, addr = udp_s.recvfrom(4096)
            print(b_data.decode("utf-8"))

            #Adicionar o nome do socket à lista de sockets conhecidos
            if not addr in addr_list: addr_list.append(addr)

            #enviar a mensagem para todos
            for dst_addr in addr_list: udp_s.sendto(b_data.upper(), dst_addr)

    finally:
        udp_s.close()

main()