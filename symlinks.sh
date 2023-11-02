#!/usr/bin/sh
#
#
#
DOTFILES_DIR="$HOME/.dotfiles"

if [[ $(pwd) != $DOTFILES_DIR ]]; then
  echo "This file should only be run from the dotfiles directory.";
  echo "If you have not already, rename this repo to $DOTFILES_DIR, and run ./install.sh from there";
  exit 0;
fi

# Check for config folder
[  -d "~/.config" ] && mkdir ~/.config
[  -d "~/Pictures" ] && mkdir ~/Pictures

# Add symlinks for each folder
link() {
  ln -s $DOTFILES_DIR/nvim ~/.config/nvim
  ln -s $DOTFILES_DIR/.config/bottom ~/.config/bottom
  ln -s $DOTFILES_DIR/.config/cava ~/.config/cava
  ln -s $DOTFILES_DIR/Wallpapers ~/Pictures/Wallpapers
  ln -s $DOTFILES_DIR/.config/ranger ~/.config/ranger
  ln -s $DOTFILES_DIR/.config/i3 ~/.config/i3
  ln -s $DOTFILES_DIR/.config/picom ~/.config/picom
  ln -s $DOTFILES_DIR/.config/polybar ~/.config/polybar
  ln -s $DOTFILES_DIR/.config/dunst ~/.config/dunst
  ln -s $DOTFILES_DIR/.config/rofi ~/.config/rofi
  ln -s $DOTFILES_DIR/.config/bashtop ~/.config/bashtop
  ln -s $DOTFILES_DIR/.nap ~/.nap
  ln -s $DOTFILES_DIR/.config/neofetch ~/.config/neofetch
  ln -s $DOTFILES_DIR/.config/eww ~/.config/eww

  ln -s ~/.dotfiles/.zshrc ~/.zshrc
  ln -s ~/.dotfiles/.zshenv ~/.zshenv
  ln -s ~/.dotfiles/.vimrc ~/.vimrc
  ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
  ln -s ~/.dotfiles/.alacritty.yml ~/.alacritty.yml
  ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
  ln -s ~/.dotfiles/.paths ~/.paths
  ln -s ~/.dotfiles/.profile ~/.profile
}


unlink() {
  rm -rf ~/.config/nvim
  rm -rf ~/.config/bottom
  rm -rf ~/.config/cava
  rm -rf ~/Pictures/Wallpapers
  rm -rf ~/.config/ranger
  rm -rf ~/.config/i3
  rm -rf ~/.config/picom
  rm -rf ~/.config/polybar
  rm -rf ~/.config/dunst
  rm -rf ~/.config/rofi
  rm -rf ~/.config/bashtop
  rm -rf ~/.nap
  rm -rf ~/.config/neofetch
  rm -rf ~/.config/eww

  rm -f ~/.zshrc
  rm -f ~/.zshenv
  rm -f ~/.vimrc
  rm -f ~/.gitconfig
  rm -f ~/.alacritty.yml
  rm -f ~/.p10k.zsh
  rm -f ~/.paths
  rm -f ~/.profile
}

unlink
if ! [[ $1 == 'remove' ]]; then
  link
fi
