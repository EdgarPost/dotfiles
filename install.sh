# CLI
apt-get install fzf
apt-get install node
apt-get install nvm
apt-get install bash
apt-get install yarn
apt-get install httpie
apt-get install thefuck
apt-get install tmux
apt-get install tmuxinator
apt-get install ranger
apt-get install nvim
apt-get install the_silver_searcher # AG
apt-get install ripgrep
apt-get install fd

# Applications
apt-get install google-chrome
apt-get install amethyst
apt-get install firefox
apt-get install docker
apt-get install 1password
apt-get install postman
apt-get install raycast
apt-get install slack
apt-get install microsoft-teams
apt-get install notion
apt-get install discord
apt-get install zoomus
apt-get install iterm2
apt-get install toggl
apt-get install nordvpn

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

# ZSH - autocomplete
mkdir -p $PWD/zsh/plugins 
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $PWD/zsh/plugins/zsh-autocomplete
ln -fsv $PWD/zsh/plugins $HOME/.zsh_plugins

# FZF
$(apt-get --prefix)/opt/fzf/install

# Git
ln -fsv $PWD/git/gitconfig $HOME/.gitconfig
ln -fsv $PWD/git/gitingore_global $HOME/.gitignore_global
