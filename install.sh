# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# CLI
brew install fzf
brew install node
brew install yarn
brew install httpie
brew install thefuck
brew install tmux
brew install tmuxinator
brew install ranger
brew install nvim
brew install the_silver_searcher # AG

# Applications
brew install google-chrome
brew install homebrew/cask-versions/firefox-developer-edition
brew install docker
brew install 1password
brew install postman
brew install raycast
brew install slack
brew install microsoft-teams
brew install notion
brew install discord
brew install zoomus
brew install iterm2
brew install toggl
brew install nordvpn

# Tmux
ln -fsv $PWD/tmux/tmux.conf $HOME/.tmux.conf

# Vim
ln -fsv $PWD/vim/vimrc $HOME/.vimrc

# Neovim
mkdir -p $HOME/.config/nvim/lua
ln -fsv $PWD/nvim/init.vim $HOME/.config/nvim/init.vim
ln -fsv $PWD/nvim/init.lua $HOME/.config/nvim/lua/init.lua

# ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -fsv $PWD/zsh/zshrc $HOME/.zshrc

# FZF
$(brew --prefix)/opt/fzf/install

# Git
ln -fsv $PWD/git/gitconfig $HOME/.gitconfig
ln -fsv $PWD/git/gitingore_global $HOME/.gitignore_global
