# Update sources
sudo apt-get update -y

# Cleanup
sudo apt autoremove -y

# Install required apps
sudo apt install -y git
sudo apt install -y hub
sudo apt install -y yakuake
sudo apt install -y vlc
# sudo apt install -y tlp tlp-rdw
sudo apt install -y thunar
sudo apt install -y gthumb
sudo apt install -y redshift redshift-gtk geoclue-2.0
sudo apt install -y python-pip
sudo apt install -y python3-pip
sudo apt install -y python3-dev
sudo apt install -y python3-tk
sudo apt install -y filezilla
sudo apt install -y inkscape
sudo apt install -y xclip
sudo apt install -y axel
sudo apt install -y whois
sudo apt install -y speedtest-cli
sudo apt install -y vim
sudo apt install -y typecatcher
sudo apt install -y gimp
sudo apt install -y htop
sudo apt install -y tmux
sudo apt install -y sshpass
sudo apt install -y autoconf
sudo apt install -y libx11-dev

# Install useful utilities
sudo apt install -y autojump

# Install Build Essentials for PIP
sudo apt install -y build-essential libssl-dev libffi-dev python-dev
sudo apt install -y python3-venv
sudo apt install -y libkf5globalaccel-bin

# Dependencies for Shutter tool
sudo apt install -y libgoocanvas-common libgoocanvas3 libgoo-canvas-perl

# Install useful python libraries globally
pip install --user --upgrade pip
pip install --user -U setuptools
pip install --user howdoi
pip install --user virtualenv
pip install --user requests
pip install --user bs4
pip install --user bpython
pip install --user jupyter
pip install --user pandas
pip install --user html5lib
pip install --user matplotlib
pip install --user isitup
pip install --user rebound-cli
pip install --user wheel
pip install --user seashells
pip install --user pip-name

# Machine Learning Libraries
pip install --user tensorflow
pip install --user keras
pip install --user scikit-learn
pip install --user scikit-image
pip install --user imageio
pip install --user seaborn
pip install --user sklearn
pip install --user pydot

# Add python3 kernel to jupyter notebook
python3 -m pip install --user ipykernel
python3 -m ipykernel install --user

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

# Install visual studio code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install -y apt-transport-https
sudo apt-get update -y
sudo apt-get install -y code

# Remove default apps
sudo apt-get -y remove thunderbird
sudo apt-get -y remove pidgin
sudo apt-get -y remove banshee
sudo apt-get -y remove xchat
sudo apt-get -y remove tomboy
sudo apt-get -y remove xplayer

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

## Configurations
# Show more apps in the startup applications
sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/*.desktop

# Disable notification for WiFi connect and disconnects
gsettings set org.gnome.nm-applet disable-disconnected-notifications "true"
gsettings set org.gnome.nm-applet disable-connected-notifications "true"
