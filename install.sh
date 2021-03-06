#!/bin/bash

echo "Configuring Vim..."
cd ~/.vim
git submodule update --init --recursive
if [[ -e "~/.vimrc" ]]; then
	cp ~/.vimrc ~/.vimrc_backup_$(date +%s)
fi
ln -s ~/.vim/.vimrc ~/.vimrc

vim -c "PlugInstall" +qall
vim -c "helptags ~/.vim/bundle/ctrlp.vim/doc" +qall
