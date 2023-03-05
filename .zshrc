# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias v="nvim"
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# oh-my-zsh stuff below
export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="robbyrussell"
ZSH_THEME="minimal"
#ZSH_THEME="edvardm"
#ZSH_THEME="lambda"

plugins=(git)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# bun completions
[ -s "/Users/kuba/.bun/_bun" ] && source "/Users/kuba/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/kuba/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/kuba/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/Applications/CMake.app/Contents/bin:$PATH"

# go
export GOPATH="/Users/kuba/go"
export PATH="$GOPATH/bin:$PATH"

# jetbrains
export PATH="$HOME/.jetbrains:$PATH"

# emscripten
export PATH="$HOME/Documents/dev/emsdk:$PATH"
export PATH="$HOME/Documents/dev/emsdk/upstream/emscripten:$PATH"
