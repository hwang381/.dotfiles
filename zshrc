###
# zsh 
###
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)
source $ZSH/oh-my-zsh.sh

###
# misc. system settings 
###
export PATH=$PATH:$HOME/.local/bin

###
# my alias'es
###
alias ws=workspace
alias code=vi

###
# git conveniences
###
alias git-config-kt="git config user.name KTachibanaM && git config user.email whj19931115@gmail.com"
alias git-config-hwang381="git config user.name hwang381 && git config user.email wanghanjie2012@gmail.com"

###
# python dev
###
alias activate="source ./venv/bin/activate"
alias install-dev-bs="./venv/bin/python -m pip uninstall -y broccoli-server && ./venv/bin/python -m pip install $HOME/Projects/broccoli-server"

###
# go
###
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

###
# ruby
###
export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

###
# nvm
###
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

###
# travis
###
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh
