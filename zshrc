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
# TODO: take out
alias git-config-kt="git config user.name KTachibanaM && git config user.email whj19931115@gmail.com"
alias git-config-hwang381="git config user.name hwang381 && git config user.email wanghanjie2012@gmail.com"

###
# python dev
###
# TODO: take out
alias activate="source ./venv/bin/activate"
alias install-dev-bs="./venv/bin/python -m pip uninstall -y broccoli-server && ./venv/bin/python -m pip install $HOME/Projects/broccoli-server"

###
# go
###
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

