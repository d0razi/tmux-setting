#/bin/bash


# Install Default Packages
PACK='vim python3 python3-pip python3-dev libssl-dev libffi-dev build-essential tmux git'
apt-get update -y
apt-get upgrade -y
apt-get install -y $PACK

# Docker Install
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
apt install -y docker-ce docker-compose

# Install pwntools
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade pwntools

# Install gdb-peda
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
