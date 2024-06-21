FROM ubuntu:22.04
SHELL ["/bin/bash", "-c"]

RUN ["/bin/bash", "-c", "echo I am now using bash!"]

# Install necessary packages for ubuntu
RUN apt-get update && apt-get install -y unzip curl nano

# Install NVM (Node Version Manager) to manage Node.js installations
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Set NVM_DIR environment variable for storing Node.js versions to system
ENV NVM_DIR /root/.nvm

# Install the latest LTS (Long Term Support) version of Node.js using nvm
RUN . $NVM_DIR/nvm.sh && nvm install --lts && nvm use --lts

