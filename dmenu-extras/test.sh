#!/bin/sh

pacman -S --noconfirm shellcheck
shellcheck -S warning /usr/bin/dm-*

