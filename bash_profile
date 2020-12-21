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

alias gch="git checkout"
alias gt="git status"
alias gd="git diff"
alias gl="git log"

alias v="vim"

alias rc="rails c"
alias rs="rails s"
alias guard="bundle exec guard"
#alias rspec="bundle exec rspec"
alias rake="bundle exec rake"

function start {
  mysql.server start
  tomcat start
  so start
  sidekiq-app start
}

function stop {
  sidekiq-app stop
  redis stop
  mysql.server stop
  tomcat stop
  so stop
}

function sync_spotlight {
  rsync -avz tlille01@spotlightweb-prod-01.uit.tufts.edu:/usr/local/hydra/spotlight/public/uploads /Users/tlille01/Sites/tufts-spotlight/public
}

function get_spotlight_db {
  scp tlille01@spotlightweb-prod-01.uit.tufts.edu:/home/tlille01/spot.sql.gz ~/Desktop
  gzip -d ~/Desktop/spot.sql.gz
}

function reload_spotlight {
  rake db:drop DISABLE_DATABASE_ENVIRONMENT_CHECK=1
  rake db:create
  rake db:migrate RAILS_ENV=test
  mysql -uroot ests_spotlight < ~/Desktop/spot.sql
}

function nehistoric {
  #ssh tlilleberg@oai.historicnewengland.org -p 4223
  ssh -p 5222 tlilleberg@oai.historicnewengland.org
}

# ANALYTICS STUFF
GOOGLE_OAUTH_APP_NAME="TDL"
GOOGLE_OAUTH_APP_VERSION="2.0"
GOOGLE_OAUTH_PRIVATE_KEY_PATH="/Users/tlille01/Desktop/Hyrax-f8d5b7e25a3d.p12"
GOOGLE_OAUTH_PRIVATE_KEY_SECRET="notasecret"
GOOGLE_OAUTH_CLIENT_EMAIL="hyrax-221218"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
