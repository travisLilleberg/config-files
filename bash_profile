#Load our functions
for f in ${HOME}/.bash_functions/*
do
  source ${f}
done

#Colors
export CLICOLOR=1
export PS1="${YELLOW}\h${NC}:${GREEN}\W ${VIOLET}\u${NC}$ "

#Default editor
export EDITOR=vim

#Adding our scripts to path
export PATH=${PATH}:${HOME}/bin

#Handy Aliases
alias rp="source ${HOME}/.bash_profile"
alias ep="vim ${HOME}/.bash_profile"

alias home="cd ${HOME}/Desktop"
alias bin="cd ~/bin"

alias ls="ls -GFh"
alias la="ls -laGFh"
alias mv="mv -iv"
alias rm="rm -v"
alias mkdir="mkdir -p"
alias cp="cp -iv"

alias gch="git checkout"
alias gs="git status"
alias gd="git diff"

alias v="vim"

