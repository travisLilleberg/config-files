#Load our functions
for f in ${HOME}/.bash_functions/*
do
  source ${f}
done

#Colors
export CLICOLOR=1
export PS1="\[${YELLOW}\]\h\[${NC}\]:\[${GREEN}\]\W \[${VIOLET}\]\u\[${NC}\]$ "

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
function gr {
  grep -r "${1}" .
}

alias gch="git checkout"
alias gs="git status"
alias gd="git diff"
alias gl="git log"

alias v="vim"

alias rc="rails c"
alias rs="rails s"
alias guard="bundle exec guard"

# Fedora 3 Stuff (fd3)
export CATALINA_HOME=/Library/Tomcat #(fd3)
export FEDORA_HOME=$CATALINA_HOME/fedora3 #(fd3)
export PATH=$PATH:$FEDORA_HOME/server/bin:$FEDORA_HOME/client/bin #(fd3)

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
