#!/bin/bash

sudo pacman -S base-devel --noconfirm

# soft
yay autojump lazygit neovim google-chrome --noconfirm

# git
git config --global user.email "liyapeng0629@gmail.com"
git config --global user.name "ypli0629"
git config --global credential.helper store

# fe
yay -S nodejs npm pnpm --noconfirm
yay -S webstorm webstorm-jre code --noconfirm

# java
sudo yay -S intellij-idea-ultimate-edition intellij-idea-ultimate-edition-jre jdk11-openjdk maven gradle --noconfirm
mkdir -p ~/.m2
cp ./config/maven/settings.xml ~/.m2/

# golang
yay -S goland goland-jre go --noconfirm
go install github.com/swaggo/swag/cmd/swag@latest
go install github.com/cosmtrek/air@latest

# python
yay -S python pycharm-professional --noconfirm
pip3 config set global.index-url https://mirror.sjtu.edu.cn/pypi/web/simple

#rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs >>./rustup.sh
sh ./rustup.sh -y

#luarocks
mkdir ./tools
git clone https://github.com/luarocks/luarocks.git -b v3.9.2 ./tools/luarocks
cd ./tools/luarocks
./configure --with-lua-include=/usr/include/luajit-2.1 --with-lua-interpreter=luajit
make
sudo make install
cd ../..

# docker
yay -S docker --noconfirm
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
	{
	  "registry-mirrors": ["https://omz9yq6r.mirror.aliyuncs.com"]
	}
EOF
sudo systemctl start docker
sudo systemctl enable docker

yay -S clash-for-windows-bin --noconfirm

# LunnarVim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
#curl https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh >>lunarvim_install.sh
#sh ./lunarvim_install.sh -y
rm -rf ~/.config/lvim
git clone https://github.com/ypli0629/lvim.git
