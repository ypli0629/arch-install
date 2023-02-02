#!/bin/bash

# ttf
yay -S ttf-sourcecodepro-nerd ttf-nerd-fonts-symbols-2048-em noto-fonts-emoji --noconfirm

# fcitx5
yay -S fcitx5-im fcitx5-qt fcitx5-gtk fcitx5-rime fcitx5-nord fcitx5-input-support --noconfirm
mkdir -p ~/.local/share/fcitx5/rime
git clone https://gitee.com/ypli0629/rime-settings.git ./rime-settings
sudo mkdir -p /usr/share/fonts/TTF
sudo cp $HOME/rime-settings/font/* /usr/share/fonts/TTF
sudo fc-cache -vf
cp -r ./rime-settings/* ~/.local/share/fcitx5/rime
rm -rf ~/.local/share/fcitx5/rime/font
rm -rf ./rime-settings
