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
export PATH=${PATH}:${HOME}/bin:${HOME}/.apps

#Handy Aliases
alias rp="source ${HOME}/.bash_profile"
alias ep="vim ${HOME}/.bash_profile"

alias home="cd ${HOME}/Desktop"

alias ls="ls -GFh"
alias la="ls -laGFh"
alias mv="mv -iv"
alias rm="rm -v"
alias mkdir="mkdir -p"
alias cp="cp -iv"
function gr {
  grep -r "${1}" .
}
function new_spotlight {
  if [ ! -z "${1}" ]; then
    rails new "${1}" -m https://raw.githubusercontent.com/projectblacklight/spotlight/master/template.rb
  fi
}

alias gch="git checkout"
alias gt="git status"
alias gd="git diff"
alias gl="git log"

alias v="vim"

alias rc="rails c"
alias rs="rails s"
alias guard="bundle exec guard"
alias rspec="bundle exec rspec"
alias rake="bundle exec rake"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function clean_test {
  rm ./db/test.sqlite3
  RAILS_ENV=test bundle exec rake db:migrate
  RAILS_ENV=test rails server
}

