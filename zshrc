 export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ZSH="$HOME/.oh-my-zsh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

setopt INTERACTIVE_COMMENTS
export MAVEN_BIN=/usr/local/apache-maven/bin
# BEGIN FIN RECOMMENDS (added by fin/wre-setup/setup_initial.sh)
export REDFIN_MAIN=$HOME/code/main
eval "$($HOME/code/fin/bin/fin init -)"
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"
export PATH=~/bin:/usr/local/bin:~/code/scripts:${PATH}:${REDFIN_MAIN}/bin
# export JAVA_HOME=`/usr/libexec/java_home -version 1.8.0`
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ulimit -n 8000
# END FIN RECOMMENDS (added by fin/wre-setup/setup_initial.sh)

export EDITOR="nvim"
export TERMINAL="alacrity"
export BROWSER="firefox"

alias c='clear'
alias la='ls -la'
alias n='nvim'
alias d='doom run'
alias cdm='cd ~/code/main'

export PATH=~/.emacs.d/bin:$PATH
export PATH="$LIBCLANG_LLVM_CONFIG_EXECUTABLE:$PATH"
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':' -)"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export LLVM_DIR=$HOME/llvm-project/build/lib/cmake/llvm
export LIBCLANG_LLVM_CONFIG_EXECUTABLE=$HOME/llvm-project/build/bin/llvm-config
export LIBCLANG_CXXFLAGS="-I$HOME/llvm-project/llvm/include -I$HOME/llvm-project/build/include -std=c++14 -fno-exceptions -fno-rtti -D_GNU_SOURCE -D_DEBUG -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS"

eval "$(starship init zsh)"

[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1
fpath+=${ZDOTDIR:-~}/.zsh_functions
