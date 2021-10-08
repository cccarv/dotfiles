#!/bin/bash
sudo pacman -S --noconfirm reflector
sudo reflector -c Brazil -a 3 --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syy

sudo pacman -S --noconfirm nvidia nvidia-utils nvidia-settings xorg lightdm lightdm-gtk-greeter bspwm sxhkd dmenu nitrogen picom alacritty chromium arandr nano dunst rofi conky xfce4-power-manager feh geany jq

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

mkdir -p .config/del
cp -r dotfiles/home/.config/* .config/
cp -r dotfiles/home/.Xresources* .

sudo systemctl enable lightdm

mkdir -p Pictures/Wallpapers
cp dotfiles/wallpaper/* Picures/Wallpapers/
feh --bg-scale ~/Picures/Wallpapers/turquoise.png

sudo cp dotfiles/lightdm.conf /etc/lightdm/lightdm.conf
sudo groupadd -r autologin
sudo gpasswd -a carlos autologin

rm -rf dotfiles
rm -rf myarch.sh

reboot