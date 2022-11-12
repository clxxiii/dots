#!/bin/sh

# The progam assumes the user put this directory in their home folder

# Check for config folder
[ ! -d "~/.config" ] && mkdir ~/.config

# Add symlinks for each folder
ln -s ~/.config/nvim ~/.config/nvim
ln -s ~/.gitconfig ~/.gitconfig
