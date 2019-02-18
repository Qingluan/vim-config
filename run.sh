git clone https://github.com/Qingluan/vim-config.git /tmp/vim-config && cd /tmp/vim-config

mv vimrc ~/.vimrc 
mv vim ~/.vim

git submodule update --init --recursive
cd ~/.vim/bundle/YouCompleteMe 
apt install -y  cmake python3-dev

python3 install.py 

