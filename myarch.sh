#!/bin/bash
sudo pacman -S --noconfirm reflector
sudo reflector --latest 50 --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syy --noconfirm
sudo pacman -Syu --noconfirm

sudo pacman -S --noconfirm nvidia nvidia-utils nvidia-settings xorg lightdm lightdm-gtk-greeter bspwm sxhkd dmenu nitrogen picom alacritty chromium arandr nano dunst rofi conky xfce4-power-manager feh geany jq iwd networkmanager network-manager-applet thunar

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ~/
rm -rf yay

git clone https://aur.archlinux.org/spotifywm-git.git
cd spotifywm-git
makepkg -si --noconfirm
cd ~/
rm -rf spotifywm-git

git clone https://aur.archlinux.org/polybar-git.git
cd polybar-git
makepkg -si --noconfirm
cd ~/
rm -rf polybar-git

git clone https://aur.archlinux.org/nerd-fonts-complete.git
cd nerd-fonts-complete
makepkg -si --noconfirm
cd ~/
rm -rf nerd-fonts-complete

git clone https://github.com/hanschen/ksuperkey.git
cd ksuperkey
make
sudo make install
cd ~/
rm -rf ksuperkey

git clone https://aur.archlinux.org/networkmanager-dmenu-git.git
cd networkmanager-dmenu-git
makepkg -si --noconfirm
cd ~/.
rm -rf networkmanager-dmenu-git

mkdir -p .config/del
cp dotfiles/home/.config/polybar/config-laptop.ini dotfiles/home/.config/polybar/config.ini
cp -r dotfiles/home/.config/* .config/
cp -r dotfiles/home/.Xresources* .

git clone https://github.com/dylanaraps/bspwm
cd bspwm
make
sudo make install
cd ~/.
rm -rf bspwm

sudo systemctl enable lightdm

mkdir -p Pictures/Wallpapers
cp dotfiles/wallpaper/* Picures/Wallpapers/
feh --bg-scale ~/Picures/Wallpapers/turquoise.png

sudo cp dotfiles/lightdm.conf /etc/lightdm/lightdm.conf
sudo groupadd -r autologin
sudo gpasswd -a carlos autologin

sudo pacman -Syu --noconfirm
sudo yay -Syu --noconfirm
sudo pacman -Sc --noconfirm
sudo yay -Sc --noconfirm
sudo yay -Yc --noconfirm
sudo pacman -Qdtq | sudo pacman -Rns
rm -rf .cache/*
sudo journalctl --vacumm-time=2weeks



rm -rf dotfiles
rm -rf myarch.sh

reboot