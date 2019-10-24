#!/bin/bash

# Ubuntu 18.04 / KDE neon 5.14.3 clean setup

sudo apt update
sudo apt -y install build-essential cmake python3-dev

# Install Nvidia driver
sudo apt -y install nvidia-384

# Install git
sudo apt -y install git

# Compile and install Guake terminal
cd ~/Downloads
git clone https://github.com/Guake/guake.git
cd guake/
git reset --hard c3ca237bc43cc46ba5f7747e8a5e58a8f657930f
./scripts/bootstrap-dev-debian.sh run make
make
yes | sudo make install
cd ~/

# Install Tilda terminal
sudo apt install tilda
# tilda -f "Monospace 12"

# Download and install Google Chrome
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt -y install -f
cd ~/

# Download and install Atom
cd ~/Downloads
wget https://atom-installer.github.com/v1.35.1/atom-amd64.deb
sudo dpkg -i atom-amd64.deb
sudo apt -y install -f
cd ~/

# Download Popcorn Time
cd ~/Downloads
mkdir Popcorn
cd Popcorn/
wget https://mirror03.popcorntime.sh/repo/build/Popcorn-Time-0.3.10-Linux-64.tar.xz
tar -xvf Popcorn-Time-0.3.10-Linux-64.tar.xz
cd ~/

# Download and install Nerd Fonts
cd ~/Downloads
git clone https://github.com/ryanoasis/nerd-fonts.git  --depth 1
cd nerd-fonts/
./install.sh
cd ~/

# Install and configure ZSH
sudo apt -y install zsh powerline fonts-powerline
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

# Install Powerlevel9k theme for ZSH
git clone https://github.com/Powerlevel9k/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
sed -i \
's/_THEME=\"robbyrussel\"/_THEME=\"agnoster\"/g' \
~/.zshrc

# Create the plugin directory
mkdir ~/.zsh

# Install ZSH Syntax Highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh/zsh-syntax-highlighting" --depth 1

# Install ZSH Autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions.git "$HOME/.zsh/zsh-autosuggestions" --depth 1

# Change the default shell to ZSH
chsh -s /bin/zsh

# Make tmux the default screen multiplexer for each shell session
: '
read -d '' TMUX_DEFAULT << EOF
alias g=\"grep\"
alias ls=\"ls --color=auto\"

# ...other stuff...

if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi
EOF
echo $TMUX_DEFAULT >> ~/.bashrc
'

# Install the bleeding edge Vim version from an unofficial PPA
sudo add-apt-repository ppa:jonathonf/vim -y
sudo apt update
sudo apt -y install vim

# Install the stable version of Neovim for an official PPA
sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt -y install neovim

# Install vim-plug for Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install vim-plug for Neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Link NeoVim's configuration file to Vim's
ln -s ~/.vimrc ~/.config/nvim/init.vim

# Install Exuberant Ctags for SpaceVim UI Layer Outline
sudo apt -y install exuberant-ctags

# Install pynvim for deoplete in SpaceVim
sudo pip3 install --user pynvim

# Install ripgrep for SpaceVim's fast search functionality
cd ~/Downloads
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/0.10.0/ripgrep_0.10.0_amd64.deb
sudo dpkg -i ripgrep_0.10.0_amd64.deb
cd ~/

# Install the Silver Searcher for SpaceVim's fast search functionlaity
sudo apt -y install silversearcher-ag

# Install GNU GLobal for SpaceVim's "go to definition" feature / gtags layer
sudo apt -y install global

# Add system clipboard support to Vim / SpaceVim
sudo apt -y install vim-gtk
sudo apt -y install xclip

# Install npm
sudo apt -y install npm

# Install yarn
sudo apt -y install yarn

# Install the Vim plugins
vim +'PlugInstall --sync' +qa

# Compile YouCompleteMe
cd ~/.vim/plugged/youcompleteme
python3 install.py --clang-completer --ts-completer
cd ~/

# Increase the volume of audio card
alsamixer
sudo alsactl store

# Use Google DNS
sudo apt -y install resolvconf
echo "nameserver 8.8.8.8
nameserver 8.8.4.4" | sudo tee -a /etc/resolvconf/resolv.conf.d/base
sudo resolvconf -u

# Install the collection of base networking utilities
sudo apt -y install net-tools

# Install ranger
sudo apt -y install ranger
