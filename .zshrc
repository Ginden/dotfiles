export ZSH=/home/ginden/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git yarn)

source $ZSH/oh-my-zsh.sh

alias npm-test="npm run --silent test 2>&1 | tee -a test.log"
alias npm-coverage="npm run --silent coverage  2>&1 | tee -a test.log"

NPM_PACKAGES="${HOME}/.npm-packages"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export EDITOR="code --wait"
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
alias nano="echo 'Did you mean \`code\`? If not, type \n\\' && escape-shell 'nano'"
alias "git git"="git"
alias "git clone git"="git"

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
nvm use 16;

alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"

# Node related aliases

alias nid="npm install --save-dev";
alias nui="npm uninstall";
alias nu="npm update";
alias nr="npm run";
alias naf="npm audit fix";
alias nt="npm test";
alias nrs="npm run --silent"

alias nest="npx --no-install nest";

setopt histignorespace

alias disablehistory="function zshaddhistory() {  return 1 }"
alias enablehistory="unset -f zshaddhistory"

function status_sign() {
   echo $PROMPT_SIGN;
}

export PS1="\$(status_sign)$PS1";
export DOCKER_BUILDKIT=1
