#!/bin/bash

#Clean the package cache keeping only the last version of a pachage
echo "cleaning pacman cache"
sudo paccache -rk1

#Remove orphaned packages
echo "removing pacman orphaned packages"
sudo pacman -Rns $(pacman -Qdtq)

#Clear journal logs leaving only the past 2 days
echo "cleaning journals"
sudo journalctl --rotate --vacuum-time=2weeks

#Remove unused yay build files:
echo "cleaning AUR cache"
yay -Sc --aur

#Clean up user cache
echo "cleaning user cache"
rm -rf ~/.cache/*
