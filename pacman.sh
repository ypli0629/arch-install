#!/bin/bash

# mirror
# sudo tee /etc/pacman.d/mirrorlist <<EOF
# Server = https://mirror.sjtu.edu.cn/archlinux/\$repo/os/\$arch
# EOF
sudo pacman-mirrors --api --set-branch testing
sudo pacman-mirrors --fasttrack 5
sudo tee -a /etc/pacman.conf <<EOF
[archlinuxcn]
Server = https://mirror.sjtu.edu.cn/archlinux-cn/\$arch
EOF

# archlinuxcn
sudo pacman -Syy
sudo pacman -S archlinuxcn-keyring --noconfirm
sudo pacman -Syyu
