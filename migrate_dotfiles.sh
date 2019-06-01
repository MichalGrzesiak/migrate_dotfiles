echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
cd $HOME
echo ".cfg" >> .gitignore
git clone --bare https://github.com/MichalGrzesiak/dotfiles $HOME/.cfg
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout
