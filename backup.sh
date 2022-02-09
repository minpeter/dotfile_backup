#!/bin/bash

ZSHRC_PATH="$HOME/.zshrc"
VIMRC_PATH="$HOME/.config/nvim/init.vim"

function backup_file(){
    if test -e "$1"; then
        echo "Backup $1"
        cp $1 "b.$2"
    else
        echo "$1 not found"
    fi
}

backup_file "$ZSHRC_PATH" "zshrc"
backup_file "$VIMRC_PATH" "vimrc"