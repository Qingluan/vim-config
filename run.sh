git clone https://github.com/Qingluan/vim-config.git /tmp/vim-config && cd /tmp/vim-config

mv vimrc ~/.vimrc 
mkdir -p ~/.vim/bundle

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.vim/bundle/YouCompleteMe 
git clone https://github.com/Valloric/YouCompleteMe
apt install -y  cmake python3-dev
git submodule update --init --recursive
python3 install.py 

vim -c ":PluginInstall"
