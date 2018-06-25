source ~/antigen.zsh
export ZSH=/Users/michal/.oh-my-zsh

ZSH_THEME="robbyrussell"

export UPDATE_ZSH_DAYS=2
ENABLE_CORRECTION="true"
plugins=(git node pip osx terraform npm)
export PATH=/usr/local/aws/bin:$PATH

export RPROMPT="[%D{}%@]"

export EDITOR="nano";
alias pretty-env="node -p \"JSON.stringify(process.env)\" | jq -S ."
alias npm-lab-html-test="REPORT_OUTPUT="$(mktemp).html" && npm test -- -r html -o "$REPORT_OUTPUT" && open $REPORT_OUTPUT; unset REPORT_OUTPUT;"
alias tf="terraform"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NODE_ENV=development
export NODE_PENDING_DEPRECATION=1

export PATH=~/bin:$PATH
source $ZSH/oh-my-zsh.sh

unalias ls
alias ls="ls -G --color "

alias git-root="cd \$(git rev-parse --show-toplevel)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
