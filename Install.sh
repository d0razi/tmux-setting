#/bin/bash

# Username Set
US='r4mbb'

# Install Default Packages
PACK='vim python3 python3-pip python3-dev libssl-dev libffi-dev build-essential tmux git gdb neovim'
apt-get update -y
apt-get upgrade -y
apt-get install -y $PACK

# Docker Install
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
apt install -y docker-ce docker-compose

groupadd docker
usermod -aG docker $US
service docker restart

# Install pwntools
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade pwntools

# Install gdb-peda
git clone https://github.com/longld/peda.git /home/$US/peda
echo "source /home/$US/peda/peda.py" >> /home/$US/.gdbinit

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
curl -sL intall-node.now.sh/lts | sudo $SHELLs
