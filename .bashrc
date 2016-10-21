
NPM_PACKAGES="${HOME}/.npm-packages"

PATH="$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=~/WebStorm/bin/:$PATH
export PATH=$PATH":$HOME/bin"

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]ginden\[\033[00m\]'

COLOR_RED="\033[0;31m"
COLOR_YELLOW="\033[0;33m"
COLOR_GREEN="\033[0;32m"
COLOR_OCHRE="\033[38;5;95m"
COLOR_BLUE="\033[0;34m"
COLOR_WHITE="\033[0;37m"
COLOR_RESET="\033[0m"


function git_color() {
  `command git branch > /dev/null 2>&1`; if [ $? -eq 0 ]; then
    clean=`command git status | grep "nothing to commit" | wc -l`
    if [ "$clean" -eq "1" ]; then
      echo -e $COLOR_GREEN; else # clean working directory
      stagged=`command git status | grep "not staged for commit" | wc -l`
      if [ "$stagged" -eq "1" ]; then
        echo -e $COLOR_RED; else # unstagged changes
        echo -e $COLOR_YELLOW; # all changes stagged
      fi;
    fi;
  fi;
}


function git_branch {
  local git_status="$(git status 2> /dev/null)"
  local on_branch="On branch ([^${IFS}]*)"
  local on_commit="HEAD detached at ([^${IFS}]*)"

  if [[ $git_status =~ $on_branch ]]; then
    local branch=${BASH_REMATCH[1]}
    echo "@$branch "
  elif [[ $git_status =~ $on_commit ]]; then
    local commit=${BASH_REMATCH[1]}
    echo "@$commit "
  fi
}

PS1+="\[$WHITE\]"  
PS1+="\$(git_color)\$(git_branch)"          
PS1+="\[$BLUE\]\[$RESET\]"

PS1+="\[\033[01;34m\]\w\[\033[00m\]$ ";

alias git-root="cd \$(git rev-parse --show-toplevel)"
