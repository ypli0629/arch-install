#!/bin/bash
for i in $(seq 1 9)
do 
    gsettings set org.gnome.shell.keybindings switch-to-application-${i} '[]';
    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-${i} "['<Shift><Super>"${i}"']";
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-${i} "['<Super>"${i}"']";
done;

gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>f']"
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"
