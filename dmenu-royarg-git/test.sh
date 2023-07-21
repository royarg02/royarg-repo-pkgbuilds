#!/bin/sh

pacman -S --noconfirm xorg-server-xvfb
xvfb-run dmenu -v

