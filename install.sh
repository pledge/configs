#! /bin/sh
brew install rlwrap;
brew install source-highlight;

mkdir -p ~/.vim/{autoload,bundle,backup,tmp,undo};

curl https://raw.githubusercontent.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim > ~/.vim/autoload/pathogen.vim;
pushd ~/.vim/bundle;
git clone https://github.com/altercation/vim-colors-solarized.git
popd;

unlink ~/.zpreztorc;
unlink ~/.zshrc;
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/development/projects/configs/.zpreztorc;
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/development/projects/configs/.zshrc;

ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/development/projects/configs/.gitconfig 
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/development/projects/configs/.gitignore_global;
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/development/projects/configs/.gvimrc;
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/development/projects/configs/.profile;
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/development/projects/configs/.pythonrc;
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/development/projects/configs/.vimrc;
