if [ $# -ne 1 ]; then
    echo "Zonk! Usage: ./other_tools/ubuntu/setup_bare_ubuntu.sh <e-mail>"
    exit 1
fi

# Git
cp other_tools/git/.gitconfig ~/

# Vim
sudo apt-get install -y vim cowsay fortune
cp ~/my_vimrc/.vimrc ~/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mkdir -p ~/.vim/files/info
mkdir -p ~/.vim/spell
cd ~/.vim/spell/
wget http://ftp.vim.org/vim/runtime/spell/pl.utf-8.spl
cd ~

# ZSH
sudo apt-get install -y zsh curl
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "You have zsh set, please remember to change theme in ~/.zshrc file for example to tjkirch"

# Sshkey
ssh-keygen -t ecdsa -b 521 -C $1
echo "Your new ssh key is:"
cat ~/.ssh/id_ecdsa.pub

# Other usable tools
sudo apt-get install -y chromium-browser guake
