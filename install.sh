# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# FZF
brew install fzf

# Node
brew install node
brew install yarn

# Applications
brew cask install google-chrome
brew cask install firefox-developer-edition
brew cask install visual-studio-code
brew cask install docker
brew cask install 1password
brew cask install alfred
brew cask install slack
brew cask install microsoft-teams
brew cask install notion
brew cask install discord
brew cask install zoomus
brew cask install iterm2

# Visual Code settings
mkdir -p $HOME/Library/Application\ Support/Code/User
ln -fsv $PWD/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
ln -fsv $PWD/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json

# Visual Code extensions
code --install-extension bradlc.vscode-tailwindcss
code --install-extension cstuder.gitlab-ci-validator
code --install-extension dbaeumer.vscode-eslint
code --install-extension DotJoshJohnson.xml
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension euskadi31.json-pretty-printer
code --install-extension flowtype.flow-for-vscode
code --install-extension jaredly.reason-vscode
code --install-extension jdinhlife.gruvbox
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension kumar-harsh.graphql-for-vscode
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension mvakula.vscode-purty
code --install-extension octref.vetur
code --install-extension Orta.vscode-jest
code --install-extension redhat.vscode-xml
code --install-extension redhat.vscode-yaml
code --install-extension steoates.autoimport
code --install-extension stylelint.vscode-stylelint
code --install-extension yzhang.markdown-all-in-one

# Tmux
ln -fsv $PWD/tmux/tmux.conf $HOME/.tmux.conf

# Vim
ln -fsv $PWD/vim/vimrc $HOME/.vimrc

# Neovim
mkdir -p $HOME/.config/nvim
ln -fsv $PWD/nvim/init.vim $HOME/.config/nvim/init.vim

# ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -fsv $PWD/zsh/zshrc $HOME/.zshrc

# Git
ln -fsv $PWD/git/gitconfig $HOME/.gitconfig
ln -fsv $PWD/git/gitingore_global $HOME/.gitignore_global
