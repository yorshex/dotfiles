#!/bin/sh
# This thing prints arch (aur) packages I usually install.
# You can use it like this: paru -S $(./arch_packages.sh)

add() { packages="$packages $1"; }

# EDIT THIS LIST (if you need to)

# system stuff
add networkmanager
add bluez
add bluez-tools
add fuse2
add xorg
add libnotify
add pipewire
add pipewire-pulse
add pipewire-jack

# terminal software
add nvim
add bc
add wget
add beets
add feh
add libqalculate
add bluetui
add opus-tools
add xclip

# gui software
add bspwm
add xcompmgr
add pavucontrol
add polybar
add dunst
add firefox
add audacity
add eartag
add libopenmpt
add telegram-desktop

# system theming shit
add nwg-look
add qt5ct
add qt6ct

# dev software
add clang

# fonts
add noto-fonts
add noto-fonts-cjk
add noto-fonts-emoji
add ttc-iosevka
add ttf-nerd-fonts-symbols
add ttf-nerd-fonts-symbols-mono
add terminus-font

# aur
add xautolock
add opentabletdriver

echo $packages
