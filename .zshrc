export ZSH=/home/ginden/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias npm-test="npm run --silent test 2>&1 | tee -a test.log"
alias npm-coverage="npm run --silent coverage  2>&1 | tee -a test.log"

NPM_PACKAGES="${HOME}/.npm-packages"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export EDITOR=nano
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
export BLUEBIRD_DEBUG=1
export NODE_ENV=development
alias node-init='npm init . && git init && touch .gitignore .npmignore .eslintrc && npm install --save-dev eslint mocha chai &&  mkdir test && mkdir lib && touch lib/index.js';

CUDA_PATH="/usr/local/cuda-10.0/bin"
WEBSTORM_PATH="$HOME/WebStorm/bin/"
PYCHARM_PATH="$HOME/PyCharm/bin"
LOCAL_BIN="$HOME/bin"

PATH="$NPM_PACKAGES/bin:$PATH"
PATH="$CUDA_PATH:$PATH"
PATH="$WEBSTORM_PATH:$PATH"
PATH="$PYCHARM_PATH:$PATH"
PATH="$LOCAL_BIN:$PATH"

alias 'bk=cd $OLDPWD'

beacon() { pwd | tee "$XDG_CACHE_HOME/beacon-dir-$$"}
return-to-beacon() { 
    cat "$XDG_CACHE_HOME/beacon-dir-$$";
    cd "$(cat $XDG_CACHE_HOME/beacon-dir-$$)"
 }

cd-git-root() {
   cd "$(git root)"
}

export PATH;

export XDG_CACHE_HOME="$HOME/.cache";

alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"
