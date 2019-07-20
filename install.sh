#!/bin/bash
###############自动配置脚本###################
CONKY_DIR=~/.conky/conkyrc
START_SCRIPT=./conky.desktop

rm -rf $CONKY_DIR

mkdir -p $CONKY_DIR

cp -rf ./* $CONKY_DIR/

/bin/bash $CONKY_DIR/startconky.sh

cp -f $START_SCRIPT  ~/.config/autostart/


echo "[CONKY_DIR] = " $CONKY_DIR

echo 'Install successful!'

