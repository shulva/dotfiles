#!/bin/bash

(lsb_release -ds || cat /etc/*release || uname -om) 2>/dev/null | head -n1

files=(.svlint.toml .bashrc .vimrc .tmux.conf .zshrc .gitconfig .p10k.zsh)

lazyvim_plugins=(flash.lua)

for file in ${lazyvim_plugins[@]}; do
	echo $file
	ln -sf ~/dotfiles/$file ~/.config/nvim/lua/plugins/$file
done

for file in ${files[@]}; do
	echo $file
	ln -sf ~/dotfiles/$file ~/$file
done

# install zsh and theme,arch example as following:
# sudo pacman -Sy zsh
# sudo pacman -S zsh-autosuggestions zsh-syntax-highlighting zsh-theme-powerlevel10k zsh-completions
#
# if nvim can not copy or use clipboard on windows in wsl,please install win32yank by scoop
# fonts is CaskaydiaCove Nerd fonts
