#!/bin/bash

files(){
    echo "1. i3"
    echo "2. nvim"
    echo "3. ranger"
    echo "4. fish"
    echo "5. picom"
    echo "6. polybar"
    echo "7. st"
}

config_dir="/home/jin/.config"
x=$(files | rofi -dmenu | cut -d . -f 1)
case $x in
    1)
        st -e nvim $config_dir/i3/config
        ;;
    2)
        st -e nvim $config_dir/nvim/init.vim
        ;;
    3)
        st -e nvim $config_dir/ranger/rc.conf
        ;;
    4)
        st -e nvim $config_dir/fish/config.fish
        ;;
    5)
        st -e nvim $config_dir/picom/picom.conf
        ;;
    6)
        st -e nvim $config_dir/polybar/config
        ;;
    7)
        st -e nvim /home/jin/gitforks/st/config.h

esac
