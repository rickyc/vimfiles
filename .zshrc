# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cloud"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails3 ruby textmate)

source $ZSH/oh-my-zsh.sh

# environment variables
#export rvm_path="/usr/local/rvm"
export rvm_path="/usr/local/rvm"
export PATH=.:~/bin:/usr/local/bin:/usr/bin:/usr/local:/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:$EC2_HOME/bin:~/gwt:$PATH
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local:/usr/local/sbin:/usr/local/bin:/usr/X11/bin:/opt/X11/bin"
export PATH="/usr/local/pgsql/bin:$PATH" #postgres
export MAGICK_HOME="/usr/local/imagemagick"
export PATH=$MAGICK_HOME/bin:$PATH
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib"
export DISPLAY=:0.0
export LC_CTYPE=en_US.UTF-8
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export rvm_gems_path="$HOME/.rvm/gems"

alias mysql-start="cd /usr/local/Cellar/mysql/5.5.14/ ; /usr/local/Cellar/mysql/5.5.14//bin/mysqld_safe &"
alias prey="sudo /usr/share/prey/prey.sh --check"
alias flush="dscacheutil -flushcache"
alias doc="bundle exec rspec spec --format documentation"
alias bx="bundle exec"

alias log="tail -f log/development.log"
alias startrq="QUEUE=* rake resque:work"
alias cleardb="rake db:test:prepare"
alias sp="bundle exec rspec"
alias v="cd ~/.vim"

alias bu="bundle update"
alias bi="bundle install"

## git aliases
alias gb="git branch -v"
alias gba="git branch -a"
alias gc="git commit -v"
alias gca="git commit -a"
alias gd="git diff"
alias gl="git pull --rebase"
alias glo="git pull origin"
alias gp="git push origin HEAD"
alias gpm="git push origin master"
alias gcp="git cherry-pick"
alias gst="git status"
alias ga="git add"
alias gr="git rm"
alias gu="git pull --rebase && git push origin HEAD"
alias gloggraph="git log --pretty=format:'%h : %s' --graph"
alias glog="git log --pretty=format:'%h was %an, %ar, message: %s'"
alias gtree='git log --graph --oneline --all'

## git heroku
alias hpush="git push heroku master"
alias hmigrate="heroku rake db:migrate"
alias hdbpush="heroku db:push"

# extra stuff =]
alias admin="git pull origin admin"
alias padmin="git push origin admin"
alias master="git pull origin master"
alias ss="script/server"
alias metrics="time rake metrics:all"
alias rm="rm -ir"
alias jc='javac Main.java'
alias jr='time java Main < input.txt'
#alias nstart='sudo /usr/local/nginx/sbin/nginx'
#alias nstop='sudo kill `cat /usr/local/nginx/logs/nginx.pid`'
alias nstart='sudo nginx'
alias nstop='sudo nginx -s stop'
alias nrestart='nstop; nstart'
alias disrupto='ssh -p 51432 deploy@174.143.173.215'
alias rack='ssh -p 51432 rickyc.us'
alias ubuntu='ssh -p 51432 ricky@184.106.197.218'
alias r='rails'
alias rs='rails server'
alias t='touch'
alias nyu='cd ~/Dropbox/Development/iPhone/nyu-mobile/'
alias jot='cd ~/Dropbox/Development/iPhone/Jot\ Potato/'
alias rc='rails console'
alias s='cd ~/Sites/'
alias flush='dscacheutil -flushcache'

# aliases
alias l='ls -oh'
alias la='ls -a'
alias ll='ls -alh'
alias cls='clear && ls'
alias px='ps -ax | grep ruby'
alias pn='ps -ax | grep nginx'

# Navigation -------------------------------------------------------
alias ..='cd ..'
alias ...='cd .. ; cd ..'

## set vi keybindings
set -o vi 

[[ -s "/usr/local/rvm/scripts/rvm" ]] && . "/usr/local/rvm/scripts/rvm"
