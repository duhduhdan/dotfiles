# export NVM_DIR=~/.nvm
export NVM_DIR=$HOME/.nvm
[ -s $NVM_DIR/nvm.sh ] && \. $NVM_DIR/nvm.sh  # This loads nvm
[ -s $NVM_DIR/bash_completion ] && \. $NVM_DIR/bash_completion  # This loads nvm bash_completion

# source ~/.nvm/nvm.sh

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

plugins=(git ripgrep zsh_reload)

source $ZSH/oh-my-zsh.sh

listFiles() {
  git diff-tree --no-commit-id --name-only -r $1
}

fo() {
  local files
  IFS=$'\n' files=($(fzf-tmux --query='$1' --multi --select-1 --exit-0))
  [[ -n '$files' ]] && ${EDITOR:-nvim} '${files[@]}'
}

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

alias c='clear'
alias n='nvim'
alias la='ls -la'
alias g='git'
alias gl='listFiles'
alias cdi='cd ~/projects/infusionsoft-mobile'
alias cds='cd ~/projects/infusionsoft-sms'
alias cdn='cd ~/dotfiles/nvim'
alias gbc='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias ys='yarn start'
alias ysr='yarn start --reset-cache'
alias yx='yarn xcode'
alias ii='yarn ios'
alias gfm='git fetch origin master'
alias gcm='git checkout master'
alias d='doom run'

export U='---'
export PW='---'

export PYTHONPATH=:$PYTHONPATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
# export PATH=/usr/local/opt/llvm/bin:$PATH
export TMPDIR=$HOME/tmp
# export PATH=/usr/local/bin:$PATH
export PATH=~/.emacs.d/bin:$PATH
export PATH="$PATH:`pwd`/flutter/bin"
# export JAVA_HOME='$(/usr/libexec/java_home -v 1.8)'
export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jre/jdk/Contents/Home
# export GEM_PATH=~/.gem/ruby/2.6.0
# export PATH=$GEM_PATH/bin:$PATH
export PATH=$PATH:/Users/dan.loudon/Library/Android/sdk/platform-tools
export ANDROID_HOME=/Users/dan.loudon/Library/Android/sdk

export FZF_DEFAULT_COMMAND="rg --files --hidden -g '!node_modules/' -g '!___snapshots___/'"
export FZF_CTRL_T_COMMAND='$FZF_DEFAULT_COMMAND'
export FZF_ALT_C_COMMAND='$FZF_DEFAULT_COMMAND'

export EDITOR=nvim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_CHAR_SYMBOL='» '

autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin
#
eval $(thefuck --alias)

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/dan.loudon/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dan.loudon/Downloads/google-cloud-sdk/path.zsh.inc'; fi
if [ -f $HOME/Downloads/google-cloud-sdk/path.zsh.inc ]; then . $HOME/Downloads/google-cloud-sdk/path.zsh.inc; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/dan.loudon/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dan.loudon/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
if [ -f $HOME/Downloads/google-cloud-sdk/completion.zsh.inc ]; then . $HOME/Downloads/google-cloud-sdk/completion.zsh.inc; fi
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
