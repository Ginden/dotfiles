#!/usr/bin/env bash

mkdir "${HOME}/.npm-packages";
mkdir "${HOME}/bin"
sudo apt upgrade;
sudo apt update;

sudo apt install curl \
 jq \
 zsh \
 python-dev \
 ncurses \
 progress \
 graphviz \
 sshd \
 inotify-tools \
 screenfetch \
 chromium-browser \
 build-essential \
 nmap \
 vagrant \
 docker \
 virtualbox \
 p7zip-full \
 pgadmin3 \
 posgresql-client \
 python-pip \
 shutter \
 zenmap \
 nginx \
 git;

curl -sL https://raw.githubusercontent.com/emericg/OpenSubtitlesDownload/master/OpenSubtitlesDownload.py -o "${HOME}/bin/subtitles";
curl https://raw.githubusercontent.com/LuRsT/hr/master/hr > "${HOME}/bin/hr"

chmod +x "${HOME}/bin/hr"
chmod +x "${HOME}/bin/subtitles"

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash;

cp -n ./.zshrc "${HOME}" || true;
cp -n ./.gitconfig "${HOME}" || true;
cp -n ./bin/* "${HOME}/bin" || true;

zsh -c "sudo npm upgrade npm -g"
zsh -c "npm install -g eslint typescript yarn http-server 0x expo-cli bunyan";

chsh -s $(which zsh)
