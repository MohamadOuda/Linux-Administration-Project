#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <arpa/inet.h>

#define MAX 100

int main(int argc, char *argv[])
{
    if (argc != 3) {
        printf("Usage: %s <server_ip> <port>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    char *ip_address = argv[1];
    int port_number = atoi(argv[2]);
    int socket_descriptor = socket(AF_INET, SOCK_STREAM, 0);
    if (socket_descriptor < 0) {
        perror("Socket creation failed");
        exit(EXIT_FAILURE);
    }

    struct sockaddr_in server_address;
    server_address.sin_family = AF_INET;
    server_address.sin_port = htons(port_number);
    server_address.sin_addr.s_addr = inet_addr(ip_address);

    // Connect to the server
    if (connect(socket_descriptor, (struct sockaddr *)&server_address, sizeof(server_address)) < 0) {
        perror("Couldn't connect to server");
        exit(EXIT_FAILURE);
    }

    printf("Connected to server at %s:%d\n", ip_address, port_number);

    while (1) {
        printf("Enter command (or 'stop' to exit): ");
        char command[MAX];
        fgets(command, sizeof(command), stdin);
        
        // Send command to the server
        write(socket_descriptor, command, strlen(command));
        printf("Command sent to server: %s", command);

        if (strncmp(command, "stop", 4) == 0) {
            printf("Stopping client...\n");
            break;
        }

        // Receive exit status from server
        int command_return;
        read(socket_descriptor, &command_return, sizeof(command_return));
        command_return = ntohl(command_return);
        printf("Command exit status: %d\n", command_return);
    }

    close(socket_descriptor);
    return 0;
}
