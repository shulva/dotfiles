#!/bin/bash
files=(.bashrc .vimrc .tmux.conf .zshrc .gitconfig )

for file in ${files[@]} ;
	do
		echo $file
		ln -sf ~/dotfiles/$file ~/$file
	done
		echo lazyvim
		mkdir -p ~/.config
		ln -sf ~/dotfiles/nvim ~/.config/nvim
