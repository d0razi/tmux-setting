#!/bin/bash

# Username Set
US='r4mbb'

P='tmux/.tmux.conf'
cp $P /home/$US/.tmux.conf

P='./Install.sh'
sh $P
