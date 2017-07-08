# Install Neovim
dir=$HOME/.config/nvim
if ! [ -d file ] ; then
    mkdir $HOME/.config/nvim
fi
cp -i ./nvim/config/nvim/init.vim $HOME/.config/nvim
nvim +PlugInstall +UpdateRemotePlugins +qa

# Tmux
cp -i ./tmux/tmux.conf $HOME/.tmux.conf

# Vim
cp -i ./vim/vimrc $HOME/.vimrc

# ZSH
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp -i ./zsh/zshrc $HOME/.zshrc
