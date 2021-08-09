#!/bin/bash

if [ "$1" == "install" ]; then
# Backup the current VIM Configuration
    echo "Do backing up!"
    rm -rf backup
    mkdir -p  backup
    cp -r ~/.vim	backup/vim
    cp -r ~/.local/bin	backup/bin
    cp ~/.vimrc		backup/vimrc
    cp ~/.bash_profile	backup/bash_profile

# This script will install the vim config and plugins
    echo "Do installing ..."
    mkdir -p ~/.vim
    mkdir -p ~/.local/bin
    cp vimrc	    ~/.vimrc
    cp bash_profile ~/.bash_profile

# Customized VIM config file
    cp -r vim/*	    ~/.vim/
    cp -r tool/*    ~/.local/bin/

elif [ "$1" == "recover" ]; then
# Recover the backed up configuration
    echo "Do recovering ... "
    cp backup/vimrc	    ~/.vimrc
    cp backup/bash_profile ~/.bash_profile

# Customized VIM config file
    cp -r backup/vim/*	    ~/.vim/
    cp -r backup/bin/*	    ~/.local/bin/

else
    echo "How to use:"
    echo "    ./setup.sh [install|recover]"
fi

