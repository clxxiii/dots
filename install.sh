#!/bin/sh

# The progam assumes the user put this directory in their home folder

# Check for config folder
[ ! -d "~/.config" ] && mkdir ~/.config
[ ! -d "~/Pictures" ] && mkdir ~/Pictures

# Add symlinks for each folder
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.alacritty.yml ~/.alacritty.yml
ln -s ~/.dotfiles/.config/cava ~/.config/cava
ln -s ~/.dotfiles/.config/bottom ~/.config/bottom
ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/.dotfiles/Wallpapers ~/Pictures/Wallpapers
