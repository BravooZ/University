import socket
import select
import sys

def main():
    udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    udp_s.bind(("127.0.0.1", 0))
    server_addr = ("127.0.0.1", 1234)

    try:
        while True:
            rsocks = select.select([udp_s, sys.stdin, ], [], [])[0]

            for sock in rsocks:
                if sock == udp_s:
                    #informaçao recebida no socket
                    b_data, addr = udp_s.recvfrom(4096)
                    sys.stdout.write("%s \n" % b_data.decode("utf-8"))

                elif sock == sys.stdin:

                    #informaçao recebida no teclado
                    str_data = sys.stdin.readline()
                    udp_s.sendto(str_data.encode("utf-8"), server_addr)
    finally:
        udp_s.close()

main()
