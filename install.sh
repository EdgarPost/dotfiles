pwd=$(pwd)

# Tmux
ln -fsv $pwd/tmux/tmux.conf $HOME/.tmux.conf

# Vim
ln -fsv $pwd/vim/vimrc $HOME/.vimrc

# ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -fsv $pwd/zsh/zshrc $HOME/.zshrc

# Git
ln -fsv $pwd/git/gitconfig $HOME/.gitconfig
ln -fsv $pwd/git/gitingore_global $HOME/.gitignore_global
