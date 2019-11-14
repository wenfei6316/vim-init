#!/bin/sh

# vim depends tools
sudo apt-get install silversearcher-ag ctags

# ubuntu 14.04
sudo apt-get install lua5.1  liblua5.1-0-dev luajit libluajit-5.1 python3.4-dev zsh python3-pip
sudo pip3 install typing

# ubuntu 16.04
sudo apt-get install lua5.1  liblua5.1-0-dev luajit libluajit-5.1 zsh python3-pip
sudo pip3 install typing

# sudo apt-get install lua5.1  liblua5.1-0-dev luajit libluajit-5.1
# sudo apt-get install python3.4-dev zsh
#
# sudo apt-get install python3-pip
# sudo pip3 install typing
#------------------------

# Fedora
# sudo dnf install -y ruby ruby-devel lua lua-devel luajit \
#         luajit-devel ctags git python python-devel \
#         python3 python3-devel tcl-devel \
#         perl perl-devel perl-ExtUtils-ParseXS \
#         perl-ExtUtils-XSpp perl-ExtUtils-CBuilder \
#         perl-ExtUtils-Embed ncurses


git clone http://github.com/vim/vim.git /tmp/vim
cd /tmp/vim

./configure \
    --with-features=huge \
    --with-compiledby="ckelsel" \
    --enable-multibyte \
    --enable-gui=gtk3 \
    --enable-python3interp \
    --enable-luainterp \
    --with-lua-prefix=/usr --with-luajit \
    --enable-gpm \
    --enable-cscope \
    --enable-fontset \
    --enable-terminal \
    --enable-fail-if-missing

make -j4

sudo make install
