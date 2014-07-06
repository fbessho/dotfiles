#!/bin/sh

#---------------
# Vim settings
ln -sf ~/dotfiles/.vimrc ~/.vimrc
mkdir ~/.vim
ln -sf ~/dotfiles/vim/autoload ~/.vim/autoload
ln -sf ~/dotfiles/vim/colors   ~/.vim/colors
ln -sf ~/dotfiles/vim/doc      ~/.vim/doc
ln -sf ~/dotfiles/vim/plugin   ~/.vim/plugin
ln -sf ~/dotfiles/vim/syntax   ~/.vim/syntax
ln -sf ~/dotfiles/vim/template ~/.vim/template
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

#---------------
# Bash settings
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc

