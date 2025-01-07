#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <signal.h>

#define MAX 100
#define PORT 3500

void sigint_handler(int sig) {
    printf("Received SIGINT signal. Terminating gracefully.\n");
    exit(0);
}

int main()
{
    // Register SIGINT handler
    signal(SIGINT, sigint_handler);
    
    int sockfd = socket(AF_INET, SOCK_STREAM, 0);
    
    int option_value = 1;
    int status = setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &option_value, sizeof(option_value));
    if (status < 0) {
        perror("Couldn't set options");
        exit(EXIT_FAILURE);
    }

    struct sockaddr_in server_address, clientAddress;
    server_address.sin_family = AF_INET;
    server_address.sin_port = htons(PORT);
    server_address.sin_addr.s_addr = INADDR_ANY;

    socklen_t clientLength = sizeof(clientAddress);

    status = bind(sockfd, (struct sockaddr*)&server_address, sizeof(server_address));
    if (status < 0) {
        perror("Couldn't bind socket");
        exit(EXIT_FAILURE);
    }

    listen(sockfd, 5);
    printf("Server is listening on port %d\n", PORT);

    while(1) {
        int client_socket = accept(sockfd, (struct sockaddr *)&clientAddress, &clientLength);
        if (client_socket < 0) {
            perror("Couldn't accept connection");
            continue;
        }
        
        printf("New connection from %s:%d\n", inet_ntoa(clientAddress.sin_addr), ntohs(clientAddress.sin_port));

        if (fork() == 0) {  // Child process to handle client
            close(sockfd);  // Child doesn't need to listen for new connections

            while(1) {
                char received_command[MAX];
                memset(received_command, 0, sizeof(received_command));
                read(client_socket, received_command, sizeof(received_command));
                printf("Command received from client: %s", received_command);
                
                // Check for "stop" command
                if (strncmp(received_command, "stop", 4) == 0) {
                    printf("Stopping communication with client %s:%d\n", inet_ntoa(clientAddress.sin_addr), ntohs(clientAddress.sin_port));
                    break;
                }

                // Execute the received command
                int command_return = system(received_command);
                printf("command_return = %d\n", command_return);

                // Send command_return back to the client
                command_return = htonl(command_return);
                write(client_socket, &command_return, sizeof(command_return));
            }

            close(client_socket);
            exit(0);
        }

        close(client_socket);  // Parent doesn't need the client socket
    }

    return 0;
}
