#!/bin/bash
mkdir themes

cd themes
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
./install.sh --silent-mode
./tweak.sh -g x2 --silent-mode
cd ..

git clone https://github.com/vinceliuice/grub2-themes.git
cd grub2-themes
sudo ./install.sh -b -t whitesur -i whitesur -s 2k
cd ..

git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
./install.sh -b
cd ..

cd ..
