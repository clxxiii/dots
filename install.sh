#!/bin/sh

# The progam assumes the user put this directory in their home folder

# Check for config folder
[ ! -d "~/.config" ] && mkdir ~/.config
[ ! -d "~/Pictures" ] && mkdir ~/Pictures

# Add symlinks for each folder
# The file checks are to prevent a weird error in the way the symlink command works
[ ! -d "~/.config/nvim" ] && ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
[ ! "~/.vimrc" ] && ln -s ~/.dotfiles/.vimrc ~/.vimrc
[ ! "~/.gitconfig" ] && ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
[ ! "~/.alacritty.yml" ] && ln -s ~/.dotfiles/.alacritty.yml ~/.alacritty.yml
[ ! -d "~/.config/cava" ] && ln -s ~/.dotfiles/.config/cava ~/.config/cava
[ ! -d "~/.config/bottom" ] && ln -s ~/.dotfiles/.config/bottom ~/.config/bottom
[ ! "~/.p10k.zsh" ] && ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
[ ! -d "~/Pictures/Wallpapers" ] && ln -s ~/.dotfiles/Wallpapers ~/Pictures/Wallpapers
