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

# Install Build Essentials for PIP
sudo apt install -y build-essential libssl-dev libffi-dev python-dev

# Install useful python libraries globally
pip install --upgrade pip
pip install --user howdoi
pip install --user virtualenv
pip install --user requests
pip install --user bs4
pip install --user bpython
pip install --user jupyter
pip install --user pandas
pip install --user matplotlib

# Travis
sudo apt-get install ruby ruby-dev
sudo gem install travis
sudo gem install scss_lint

# Node
sudo apt install -y npm
npm install -g eslint
npm install -g csslint

# Remove default apps
sudo apt-get -y remove thunderbird
sudo apt-get -y remove pidgin
sudo apt-get -y remove banshee
sudo apt-get -y remove xchat
sudo apt-get -y remove tomboy
sudo apt-get -y remove xplayer

# Make symlinks for dotfiles
ln -svf ~/dotfiles/runcom/.bash_profile ~
ln -svf ~/dotfiles/git/.gitconfig ~
ln -svf ~/dotfiles/runcom/.inputrc ~

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