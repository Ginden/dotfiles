mkdir "${HOME}/.npm-packages";
mkdir "${HOME}/bin"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt upgrade;
sudo apt update;
sudo apt-get install -y screenfetch chromium-browser build-essential nmap spotify-client compizconfig-settings-manager vagrant docker virtualbox openconnect openssh-server p7zip-full pgadmin3 posgresql-client python-pip shutter zenmap nginx git;
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh;
sudo bash nodesource_setup.sh
sudo npm upgrade npm -g
npm install -g grunt gulp bower yo pm2 http-server jsome eslint npmrc;
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash;

curl https://raw.githubusercontent.com/LuRsT/hr/master/hr > ~/bin/hr
chmod +x ~/bin/hr
