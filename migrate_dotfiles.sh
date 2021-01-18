echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
cd $HOME
echo ".cfg" >> .gitignore
git clone --bare https://github.com/MichalGrzesiak/dotfiles $HOME/.cfg
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout -f

echo "source  $HOME/.config/bash/bash_aliases.sh" >> $HOME/.bashrc
echo 'export PATH="$HOME/.scripts:$PATH"' >> $HOME/.bashrc

