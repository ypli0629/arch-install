#!/bin/bash

sudo pacman -S base-devel --noconfirm

# soft
yay -S autojump lazygit neovim google-chrome alacritty \
	switchhosts-bin meld deepin-wine-wechat qqmusic-bin linuxqq --noconfirm

# git
git config --global user.email "liyapeng0629@gmail.com"
git config --global user.name "ypli0629"
git config --global credential.helper store

# fe
yay -S nodejs npm pnpm --noconfirm
# yay -S webstorm webstorm-jre --noconfirm
yay -S code --noconfirm

# java
yay -S jdk11-openjdk maven gradle --noconfirm
# yay -S intellij-idea-ultimate-edition intellij-idea-ultimate-edition-jre --noconfirm
mkdir -p ~/.m2
cp ./config/maven/settings.xml ~/.m2/

# golang
yay -S go --noconfirm
# yay -S goland goland-jre --noconfirm
go install github.com/swaggo/swag/cmd/swag@latest
go install github.com/cosmtrek/air@latest

# python
yay -S python python-pip --noconfirm
# yay -S pycharm-professional --noconfirm
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

yay -S zsh --noconfirm
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
tee -a ~/.zshrc <<-'EOF'
	alias szsh="source ~/.zshrc"
	alias nvim="lvim"
	alias nzsh="nvim ~/.zshrc"
	alias pon="export http_proxy=http://127.0.0.1:7890; export https_proxy=http://127.0.0.1:7890; export all_proxy=socks5://127.0.0.1:7890"
	alias poff="unset http_proxy; unset https_proxy; unset all_proxy"

	export PATH=~/.local/bin:~/go/bin:~/.local/bin:$PATH
EOF
source ~/.zshrc

# LunnarVim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
#curl https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh >>lunarvim_install.sh
#sh ./lunarvim_install.sh -y
rm -rf ~/.config/lvim
git clone https://github.com/ypli0629/lvim.git
