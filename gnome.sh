#!/bin/bash
yay -Sy mutter-x11-scaling gnome-terminal-transparency dconf-editor gnome-browser-connector
sudo rm -rf /usr/share/gnome-shell/extensions/*

for i in $(seq 1 9); do
	gsettings set org.gnome.shell.keybindings switch-to-application-${i} '[]'
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-${i} "['<Shift><Super>"${i}"']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-${i} "['<Super>"${i}"']"
done

gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>f']"
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"
gsettings set org.gnome.shell.keybindings toggle-application-view "['<Shift><Super>d']"

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'flameshot'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'flameshot gui'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Alt>F1'

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'gnome-terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'gnome-terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Super>Return'

sudo usermod -aG input $USER
yay -S gnome-x11-gesture-daemon
wget https://github.com/harshadgavali/gnome-gesture-improvements/files/12841762/gestureImprovements%40gestures.zip
gnome-extensions install -f ./gestureImprovements@gestures.zip
