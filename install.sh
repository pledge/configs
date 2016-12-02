#! /bin/sh

mkdir -p ~/.vim/{autoload,bundle,backup,tmp,undo};

curl https://raw.githubusercontent.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim > ~/.vim/autoload/pathogen.vim;
pushd ~/.vim/bundle;
git clone git://github.com/altercation/vim-colors-solarized.git;
popd;

ln -s `pwd`/.gitconfig ~/.gitconfig 
ln -s `pwd`/.gitignore_global ~/.gitignore_global;
ln -s `pwd`/.gvimrc ~/.gvimrc;
ln -s `pwd`/.profile ~/.profile;
ln -s `pwd`/.pythonrc ~/.pythonrc;
ln -s `pwd`/.vimrc ~/.vimrc;
