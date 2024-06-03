#!/bin/bash

# Username Set
US='r4mbb'

P='tmux/.tmux.conf'
cp -R $P /home/$US/.tmux.conf


P='nvim'
mkdir -p /home/$US/.config/
cp -R $P/ /home/.config/


P='./Install.sh'
sh $P
