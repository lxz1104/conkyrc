#!/bin/bash
###############自动卸载脚本###################
CONKY_DIR=~/.conky/conkyrc
START_SCRIPT=conky.desktop

rm -rf $CONKY_DIR

rm ~/.config/autostart/$START_SCRIPT

killall conky

echo 'Uninstall successful!'
