#!/bin/sh

# The progam assumes the user put this directory in their home folder

# Check for config folder
[  -d "~/.config" ] && mkdir ~/.config 
[  -d "~/Pictures" ] && mkdir ~/Pictures 

# Add symlinks for each folder
# The file checks are to prevent a weird error in the way the symlink command works
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
ln -s ~/.dotfiles/.config/bottom ~/.config/bottom
ln -s ~/.dotfiles/.config/cava ~/.config/cava
ln -s ~/.dotfiles/Wallpapers ~/Pictures/Wallpapers
ln -s ~/.dotfiles/.config/ranger ~/.config/ranger
ln -s ~/.dotfiles/.config/i3 ~/.config/i3
ln -s ~/.dotfiles/.config/picom ~/.config/picom

ln -s ~/.dotfiles/.vimrc ~/.vimrc 
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig 
ln -s ~/.dotfiles/.alacritty.yml ~/.alacritty.yml
ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh

# Remove double symlinks
rm ~/.config/nvim/nvim
rm ~/.config/cava/cava
rm ~/.config/bottom/bottom
rm ~/Pictures/Wallpapers/Wallpapers
rm ~/.config/ranger/ranger
rm ~/.config/i3/i3
rm ~/.config/picom/picom
