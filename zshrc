###
# zsh 
###
# TODO: add git prompts
PROMPT="%n@%m >%B%~%b ?%B%?%b :"

###
# System PATH
###
export PATH=$PATH:$HOME/.local/bin

###
# Personal alias'es
###
alias ws=workspace
alias code=vi

###
# Git functions
# Shamelessly copied from https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/git.zsh
###
git_current_branch() {
  local ref
  ref=$(command git symbolic-ref --quiet HEAD 2> /dev/null)
  local ret=$?
  if [[ $ret != 0 ]]; then
    [[ $ret == 128 ]] && return  # no git repo.
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
  fi
  echo ${ref#refs/heads/}
}

###
# Git alias'es
###
alias gst="git status"
alias gcm="git checkout master"
ggp () {
  if [[ "$#" != 0 ]] && [[ "$#" != 1 ]]
  then
    git push origin "${*}"
  else
    [[ "$#" == 0 ]] && local b="$(git_current_branch)"
    git push origin "${b:=$1}"
  fi
}

###
# Git conveniences
###
# TODO: take out
alias git-config-kt="git config user.name KTachibanaM && git config user.email whj19931115@gmail.com"
alias git-config-hwang381="git config user.name hwang381 && git config user.email wanghanjie2012@gmail.com"

###
# Python dev
###
# TODO: take out
alias activate="source ./venv/bin/activate"
alias install-dev-bs="./venv/bin/python -m pip uninstall -y broccoli-server && ./venv/bin/python -m pip install $HOME/Projects/broccoli-server"

###
# Golang
###
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

