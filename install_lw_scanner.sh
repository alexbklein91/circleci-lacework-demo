#!/bin/bash

# Install lw-scanner

wget https://github.com/lacework/lacework-vulnerability-scanner/releases/download/v0.2.0/lw-scanner-linux-amd64.tar.gz -O lw-scanner.tar.gz
# This places the binary in a folder /bin/lw-scanner
tar xvf lw-scanner.tar.gz
# Make this executable
chmod +x ./bin/lw-scanner
# check scanner
./bin/lw-scanner > /dev/null 2>&1