#!/bin/bash

yay -S hyprland-git --noconfirm
# yay -S hyprland-nvidia-git --noconfirm
yay -S rofi dunst kitty swaybg swaylock-swaylock-fancy swayidle pamixer light brillo --noconfirm
yay -S bc blueberry bluez coreutils dbus findutils gawk gnunet jaq light networkmanager network-manager-applet pavucontrol playerctl procps ripgrep socat udev upower util-linux wget wireplumber wlogout eww-wayland --noconfirm
yay -S grim swappy slurp --noconfirm
yay -S qt5-wayland qt6-wayland --noconfirm

cp -r kitty hypr rofi dunst swaylock eww ~/.config
