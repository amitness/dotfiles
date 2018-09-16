# Update sources
sudo apt-get update -y

# Cleanup
sudo apt autoremove -y

# Install required apps
sudo apt install -y git
sudo apt install -y yakuake
sudo apt install -y vlc
sudo apt install -y tlp tlp-rdw
sudo apt install -y thunar
sudo apt install -y gthumb
sudo apt install -y redshift redshift-gtk geoclue-2.0
sudo apt install -y python-pip
sudo apt install -y python3-dev
sudo apt install -y python3-pip
sudo apt install -y filezilla
sudo apt install -y zeal
sudo apt install -y inkscape
sudo apt install -y python-libtorrent
sudo apt install -y xclip
sudo apt install -y octave
sudo apt install -y axel
sudo apt install -y whois
sudo apt install -y speedtest-cli
sudo apt install -y anki
sudo apt install -y vim
sudo apt install -y typecatcher
sudo apt install -y gimp

# Install Build Essentials for PIP
sudo apt install -y build-essential libssl-dev libffi-dev python-dev

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
pip install --user matplotlib
pip install --user isitup
pip install --user rebound-cli

# Useful
sudo apt-get install redis-server
sudo apt-get install python-mysqldb

# Travis
sudo apt-get install ruby ruby-dev
sudo gem install travis
sudo gem install scss_lint

# Node
sudo apt install -y npm
npm install -g eslint
npm install -g csslint

# Install sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update && sudo apt install sublime-text

# Remove default apps
sudo apt-get -y remove thunderbird
sudo apt-get -y remove pidgin
sudo apt-get -y remove banshee
sudo apt-get -y remove xchat
sudo apt-get -y remove tomboy
sudo apt-get -y remove xplayer

# Customization
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-icon-theme-circle

# Install Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

# Make symlinks for dotfiles
ln -svf ~/dotfiles/runcom/.bash_profile ~
ln -svf ~/dotfiles/git/.gitconfig ~
ln -svf ~/dotfiles/runcom/.inputrc ~

chmod a+x ~/dotfiles/scripts/*.sh

# Install sublime howdoi plugin
if [ ! -e "$HOME/.config/sublime-text-3/Packages/sublime-howdoi-direct-paste" ]; then
	git clone https://github.com/azac/sublime-howdoi-direct-paste $HOME/.config/sublime-text-3/Packages/sublime-howdoi-direct-paste
fi

## Configurations
# Show more apps in the startup applications
sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/*.desktop

# Disable notification for WiFi connect and disconnects
gsettings set org.gnome.nm-applet disable-disconnected-notifications "true"
gsettings set org.gnome.nm-applet disable-connected-notifications "true"
