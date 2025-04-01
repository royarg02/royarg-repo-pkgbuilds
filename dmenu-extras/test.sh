#!/bin/sh

pacman -S --noconfirm shellcheck
shellcheck /usr/bin/dm-*

