#!/bin/bash

sudo pacman -Syu --noconfirm
sudo yay -Syu --noconfirm
sudo pacman -Sc --noconfirm
sudo yay -Sc --noconfirm
sudo yay -Yc --noconfirm
sudo pacman -Qdtq | sudo pacman -Rns
rm -rf .cache/*
sudo journalctl --vacumm-time=2weeks