#!/bin/sh

# apt automatic
export DEBIAN_FRONTEND=noninteractive

# sudo apt-get update

echo "========================"
echo "Updating apt repository."
echo "========================"
apt update -q
echo "====="
echo "DONE!"
echo "====="

# Install essentials
echo "========================"
echo "Installing essentials..."
echo "========================"
apt install -yq \
    curl \
    vim \
    git \
    tmux \
    nodejs-legacy \
    npm \
    python-pip \
    apt-transport-https \
    ca-certificates \
    software-properties-common \
    tcpdump \
    htop \
echo "====="
echo "DONE!"
echo "====="

# Git credentials
echo "============================"
echo "Adding credentials to GIT..."
echo "============================"

git config --global user.name "angelosuinan"
git config --global user.email "suinanangelo@gmail.com"
echo "====="
echo "DONE!"
echo "====="


# Docker install
echo "========================"
echo "Installing Docker..."
echo "========================"

curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

groupadd docker
usermod -aG docker $USER

echo "====="
echo "DONE!"
echo "====="

# Docker Compose Setup

echo "=========================="
echo "Installing docker-compose."
echo "=========================="

pip install docker-compose

echo "====="
echo "DONE!"
echo "====="

# GIT SSH

echo "=========================="
echo "Adding SSH KEYS for GIT"
echo "=========================="

ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

echo "====="
echo "DONE!"
echo "====="
