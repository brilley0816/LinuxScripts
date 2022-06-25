tar -xvzf ~/temp/oh-my-zsh.tar.gz -C ~/temp/
if [ ! -d ~/.oh-my-zsh ]; then	
  mkdir -p ~/.oh-my-zsh
fi
cp -r  ~/temp/oh-my-zsh/* ~/.oh-my-zsh/
~/.oh-my-zsh/tools/install.sh


