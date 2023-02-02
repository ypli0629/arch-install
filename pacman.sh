#!/bin/bash

# mirror
sudo tee /etc/pacman.d/mirrorlist <<EOF
Server = https://mirror.sjtu.edu.cn/archlinux/\$repo/os/\$arch
EOF
sudo tee -a /etc/pacman.conf <<EOF
[archlinuxcn]
Server = https://mirrors.sjtu.edu.cn/archlinux-cn/\$arch
EOF

# archlinuxcn
sudo pacman -Syy
sudo pacman -S archlinuxcn-keyring --noconfirm
