# CLI
apt-get install fzf
apt-get install nvm
apt-get install bash
apt-get install httpie
apt-get install thefuck
apt-get install tmux
apt-get install tmuxinator
apt-get install nvim
apt-get install the_silver_searcher # AG
apt-get install ripgrep
apt-get install fd
apt-get install zsh

# Tmux
ln -fsv $PWD/tmux/tmux.conf $HOME/.tmux.conf

# Neovim
mkdir -p $HOME/.config/nvim
ln -fsv $PWD/nvim/init.lua $HOME/.config/nvim/init.lua

# ZSH
rm -rf $HOME/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -fsv $PWD/zsh/zshrc $HOME/.zshrc

# Git
ln -fsv $PWD/git/gitconfig $HOME/.gitconfig
ln -fsv $PWD/git/gitingore_global $HOME/.gitignore_global
