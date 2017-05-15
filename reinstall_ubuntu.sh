#Install Basic

sudo apt-get install -y  python3-pip python-pip git tmux openssh-server zsh xclip gitk

#Install  Neovim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get install neovim

#Install on-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Install ibus
sudo apt-get install ibus ibus-clutter ibus-gtk ibus-gtk3 ibus-qt4&&ibus-setup


#Gnome-Terminal Color Configure
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git&&cd gnome-terminal-colors-solarized&&./install.sh


#autojump
git clone https://github.com/joelthelion/autojump.git&&cd autojump&&./install.sh

#Configuration
./link.sh
