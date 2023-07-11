#!/bin/bash
files=(.bashrc .vimrc .tmux.conf .zshrc .gitconfig)

for file in ${files[@]}; do
	echo $file
	ln -sf ~/dotfiles/$file ~/$file
done

echo lazyvim
mkdir -p ~/.config
ln -sf ~/dotfiles/nvim ~/.config/nvim

# install zsh and theme
sudo pacman -Sy zsh
sudo pacman -S zsh-autosuggestions zsh-syntax-highlighting zsh-theme-powerlevel10k zsh-completions
# if nvim can not copy or use clipboard on windows in wsl,please install win32yank by scoop
# fonts is CaskaydiaCove Nerd fonts
