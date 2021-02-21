# Update sources
sudo apt-get update -y

# Cleanup
sudo apt autoremove -y

# Useful
# sudo apt-get install -y redis-server
# sudo apt-get install -y python-mysqldb
# sudo apt-get install libmysqlclient-dev

# Travis
# sudo apt-get install -y ruby ruby-dev
# sudo gem install travis
# sudo gem install scss_lint

# Node
# sudo apt install -y npm
# sudo npm install -g eslint
# sudo npm install -g csslint
# sudo npm install -g localtunnel

# Customization
# sudo add-apt-repository ppa:numix/ppa -y
# sudo add-apt-repository ppa:nilarimogard/webupd8 -y
# sudo apt-get update -y
# sudo apt-get install -y numix-icon-theme-circle
# sudo apt install oomox -y

# Install Chrome
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
#sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
#sudo apt-get update -y
#sudo apt-get install -y google-chrome-stable

# Install Postman
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xzf postman.tar.gz -C /opt
rm postman.tar.gz
sudo ln -s /opt/Postman/Postman /usr/bin/postman

# Make symlinks for dotfiles
ln -svf ~/dotfiles/runcom/.bash_profile ~
ln -svf ~/dotfiles/git/.gitconfig ~
ln -svf ~/dotfiles/runcom/.inputrc ~

chmod a+x ~/dotfiles/scripts/*.sh