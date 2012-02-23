export TERM=xterm-color
#export TERM=xterm-256color

export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1 

# environment variables
export rvm_path="/usr/local/rvm"
export PATH=.:~/bin:/usr/local/bin:/usr/bin:/usr/local:/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:$EC2_HOME/bin:~/gwt:$PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local:/usr/local/sbin:/usr/X11/bin:/opt/X11/bin"
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

#alias gco="git checkout"

function gco {
  if [ -z "$1" ]; then
    git checkout master
  else
    git checkout $1
  fi
}

function superblame {
  git log --format=%h --author=$1 $2 | \
    xargs -L1 -ISHA git diff --shortstat 'SHA^..SHA' app config/environment* config/initializers/ public/stylesheets/ | \
    ruby -e 'n=Hash.new(0); while gets; i=0; puts $_.gsub(/\d+/){ n[i+=1] += $&.to_i }; end' | tail -n1
}

## git flow
alias gfi="git flow init"

alias bu="bundle update"
alias bi="bundle install"

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

# I got the following from, and mod'd it: http://www.macosxhints.com/article.php?story=20020716005123797
#    The following aliases (save & show) are for saving frequently used directories
#    You can save a directory using an abbreviation of your choosing. Eg. save ms
#    You can subsequently move to one of the saved directories by using cd with
#    the abbreviation you chose. Eg. cd ms  (Note that no '$' is necessary.)
if [ ! -f ~/.dirs ]; then  # if doesn't exist, create it
    touch ~/.dirs
fi

#alias show='cat ~/.dirs'
save (){
    command sed "/!$/d" ~/.dirs > ~/.dirs1; \mv ~/.dirs1 ~/.dirs; echo "$@"=\"`pwd`\" >> ~/.dirs; source ~/.dirs ; 
}
source ~/.dirs  # Initialization for the above 'save' facility: source the .sdirs file
shopt -s cdable_vars # set the bash option so that no '$' is required when using the above facility

########
# RUBY #
########
# really awesome function, use: cdgem <gem name>, cd's into your gems directory
# and opens gem that best matches the gem name provided
function cdgem {
  cd `gem env gemdir`/gems
    cd `ls | grep $1 | sort | tail -1`
}
function gemdoc {
  GEMDIR=`gem env gemdir`/doc
    open $GEMDIR/`ls $GEMDIR | grep $1 | sort | tail -1`/rdoc/index.html
}
function mategem {
  GEMDIR=`gem env gemdir`/gems
    mate $GEMDIR/`ls $GEMDIR | grep $1 | sort | tail -1`
}

#----------
function my_prompt {
    local BLACK="\[\033[0;30m\]"
    local DARKGRAY="\[\033[1;30m\]"
    local BLUE="\[\033[0;34m\]"
    local LIGHTBLUE="\[\033[1;34m\]"
    local GREEN="\[\033[0;32m\]"
    local LIGHTGREEN="\[\033[1;32m\]"
    local CYAN="\[\033[0;36m\]"
    local LIGHTCYAN="\[\033[1;36m\]"
    local RED="\[\033[0;31m\]"
    local LIGHTRED="\[\033[1;31m\]"
    local PURPLE="\[\033[0;35m\]"
    local LIGHTPURPLE="\[\033[1;35m\]"
    local BROWN="\[\033[0;33m\]"
    local YELLOW="\[\033[1;33m\]"
    local LIGHTGRAY="\[\033[0;37m\]"
    local WHITE="\[\033[1;37m\]"
    export PS1="(${LIGHTCYAN}\u${GREEN}@${LIGHTGREEN}\h ${LIGHTCYAN}\W${GREEN})${LIGHTRED}\$(parse_git_branch)${WHITE} "
}

function elite_prompt {
    local GRAY="\[\033[1;30m\]"
    local LIGHT_GRAY="\[\033[0;37m\]"
    local CYAN="\[\033[0;36m\]"
    local LIGHT_CYAN="\[\033[1;36m\]"
    local NO_COLOUR="\[\033[0m\]"

    case $TERM in
        xterm*|rxvt*)
        local TITLEBAR='\[\033]0;\u@\h:\w\007\]'
        ;;
        *)
        local TITLEBAR=""
        ;;
    esac

    local temp=$(tty)
    local GRAD1=${temp:5}
    local        BLUE="\[\033[0;34m\]"
    
    PS1="$TITLEBAR\
    $GRAY-$CYAN-$LIGHT_CYAN(\
    $CYAN\u$GRAY@$CYAN\h\
    $LIGHT_CYAN)$CYAN-$LIGHT_CYAN(\
    $CYAN\#$GRAY/$CYAN$GRAD1\
    $LIGHT_CYAN)$CYAN-$LIGHT_CYAN(\
    $CYAN\$(date +%H%M)$GRAY/$CYAN\$(date +%d-%b-%y)\
    $LIGHT_CYAN)$CYAN-$GRAY-\
    $LIGHT_GRAY\n\
    $GRAY-$CYAN-$LIGHT_CYAN(\
    $CYAN\$$GRAY:$CYAN\w\
    $LIGHT_CYAN)$CYAN-$GRAY-$LIGHT_GRAY " 
    PS2="$LIGHT_CYAN-$CYAN-$GRAY-$NO_COLOUR "
}

# Setting PATH for MacPython 2.6
# The orginal version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"


# Subversion & Diff ------------------------------------------------
export SV_USER='jm'  # Change this to your username that you normally use on subversion (only if it is different from your logged in name)
export SVN_EDITOR='${EDITOR}'

alias svshowcommands="echo -e '${COLOR_BROWN}Available commands: 
   ${COLOR_GREEN}sv
   ${COLOR_GREEN}sv${COLOR_NC}help
   ${COLOR_GREEN}sv${COLOR_NC}import    ${COLOR_GRAY}Example: import ~/projects/my_local_folder http://svn.foo.com/bar
   ${COLOR_GREEN}sv${COLOR_NC}checkout  ${COLOR_GRAY}Example: svcheckout http://svn.foo.com/bar
   ${COLOR_GREEN}sv${COLOR_NC}status    
   ${COLOR_GREEN}sv${COLOR_NC}status${COLOR_GREEN}on${COLOR_NC}server
   ${COLOR_GREEN}sv${COLOR_NC}add       ${COLOR_GRAY}Example: svadd your_file
   ${COLOR_GREEN}sv${COLOR_NC}add${COLOR_GREEN}all${COLOR_NC}    ${COLOR_GRAY}Note: adds all files not in repository [recursively]
   ${COLOR_GREEN}sv${COLOR_NC}delete    ${COLOR_GRAY}Example: svdelete your_file
   ${COLOR_GREEN}sv${COLOR_NC}diff      ${COLOR_GRAY}Example: svdiff your_file
   ${COLOR_GREEN}sv${COLOR_NC}commit    ${COLOR_GRAY}Example: svcommit
   ${COLOR_GREEN}sv${COLOR_NC}update    ${COLOR_GRAY}Example: svupdate
   ${COLOR_GREEN}sv${COLOR_NC}get${COLOR_GREEN}info${COLOR_NC}   ${COLOR_GRAY}Example: svgetinfo your_file
   ${COLOR_GREEN}sv${COLOR_NC}blame     ${COLOR_GRAY}Example: svblame your_file
'"
   
alias sv='svn --username ${SV_USER}'
alias svimport='sv import'
alias svcheckout='sv checkout'
alias svstatus='sv status'
alias svupdate='sv update'
alias svstatusonserver='sv status --show-updates' # Show status here and on the server
alias svcommit='sv commit'
alias svadd='svn add'
alias svaddall='svn status | grep "^\?" | awk "{print \$2}" | xargs svn add'
alias svdelete='sv delete'
alias svhelp='svn help' 
alias svblame='sv blame'

svgetinfo (){
    sv info $@
    sv log $@
}

# You need to create fmdiff and fmresolve, which can be found at: http://ssel.vub.ac.be/ssel/internal:fmdiff
alias svdiff='sv diff --diff-cmd fmdiff' # OS-X SPECIFIC
# Use diff for command line diff, use fmdiff for gui diff, and svdiff for subversion diff


## set vi keybindings
set -o vi 

#==============================================================================
if [ "$SSH_TTY" ]; then
  # If this is a remote session, then start screen
  if [ "$TERM" != "screen" ]; then
    echo -ne "${XTERM_SET_TITLE}screen for `whoami`@`hostname -s`${XTERM_END}"
    echo -ne "${ITERM_SET_TAB}[`hostname -s`]${ITERM_END}"
    screen -xRRU
    if [ "$?" = "0" ]; then
      reset
      exit
    fi
  fi
fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PROMPT_COMMAND='echo -ne "\033]0;${USER}@localhost - ${PWD}\007" '
my_prompt

[[ -s "/usr/local/rvm/scripts/rvm" ]] && . "/usr/local/rvm/scripts/rvm"
