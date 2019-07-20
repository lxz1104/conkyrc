#!/bin/bash

CONKY_DIR=~/.conky/conkyrc

killall conky

sleep 5 #time (in s) for the DE to start; use ~20 for Gnome or KDE, less for Xfce/LXDE etc

conky -c $CONKY_DIR/rings -d -q & # the main conky with rings
sleep 1 #time for the main conky to start; needed so that the smaller ones draw above not below (probably can be lower, but we still have to wait 5s for the rings to avoid segfaults)
conky -c $CONKY_DIR/cpu -d -q &
conky -c $CONKY_DIR/mem -d -q &
conky -c $CONKY_DIR/network -d -q &
conky -c $CONKY_DIR/disk -d -q &
conky -c $CONKY_DIR/clock -d -q &
#conky -c ~/.Conky/arch_logo -d -q &
