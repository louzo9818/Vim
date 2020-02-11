curpwd=$(pwd)
cd
mkdir .vim
cd .vim
mkdir autoload bundle undodir
cd ..
mv vimrc .vim/vimrc
[ -f ".vimrc" ] && rm .vimrc
ln -s .vim/vimrc .vimrc
cd .vim
git clone https://github.com/tpope/vim-pathogen.git pathogen
cd autoload
ln -s ../pathogen/autoload/pathogen.vim .
cd ..
git clone https://github.com/VundleVim/Vundle.vim.git bundle/Vundle.vim
cd $curpwd
cd ..
rm -ri Vimrc
