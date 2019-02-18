git clone https://github.com/Qingluan/vim-config.git /tmp/vim-config && cd /tmp/vim-config

mv vimrc ~/.vimrc 
mkdir -p ~/.vim/bundle

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe/
apt install -y  cmake python3-dev gcc g++
export CC=/usr/bin/gcc
export CXX=/usr/bin/g++
git submodule update --init --recursive
python3 install.py 

vim -c ":PluginInstall"
