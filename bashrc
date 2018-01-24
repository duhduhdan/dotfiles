export NVM_DIR="$HOME/.nvm"

if [ "`uname`" == "Darwin" ]; then
  nvm_sh_dir=`brew --prefix nvm`
  [ -f "$nvm_sh_dir/nvm.sh" ] && . "$nvm_sh_dir/nvm.sh"
  unset nvm_sh_dir
else
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
fi

export PS1="\[\033[35;1m\]\w\[\033[m\]\[\033[36m\]\[\033[m\] \n"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,.npm,.nvm,.Trash,node_modules,target,webapp}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"

# list files in commit
listFiles() {
  git diff-tree --no-commit-id --name-only -r $1
}

alias c='clear'
alias n='nvim'
alias la='ls -la'
alias g='git'
alias gl='listFiles'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
# source ~/.git-completion.bash
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

export PYTHONPATH=:$PYTHONPATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export TMPDIR=$HOME/tmp
