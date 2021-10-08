#!/bin/bash

sudo reflector -c Brazil -a 3 --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syy

sudo pacman -S --noconfirm nvidia nvidia-utils nvidia-settings xorg lightdm lightdm-gtk-greeter bspwm sxhkd dmenu nitrogen picom alacritty chromium arandr nano dunst rofi conky ksuperkey xfce4-power-manager

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~/
rm -rf yay

git clone https://aur.archlinux.org/spotifywm-git.git
cd spotifywm-git
makepkg -si
cd ~/
rm -rf spotifywm-git

git clone https://aur.archlinux.org/polybar-git.gi
cd polybar-git
makepkg -si
cd ~/
rm -rf polybar-git

git clone https://aur.archlinux.org/nerd-fonts-complete.git
cd nerd-fonts-complete
makepkg -si
cd ~/
rm -rf nerd-fonts-complete

mkdir .config

git clone https://github.com/cccarv/dotfiles
cp -r dotfiles/home/.config/* .config/

sudo systemctl enable enable lightdm

