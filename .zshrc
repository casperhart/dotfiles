# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

plugins=(zsh-autosuggestions zsh-syntax-highlighting git git-auto-fetch)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias zshconfig="code ~/.zshrc"
alias ls="exa"
alias ll="exa -l --git"
alias la="exa -la --git"
alias vi="nvim"
alias vim="nvim"

# header in zsh
HOST="MBP"

# starship prompt
eval "$(starship init zsh)"

# pyenv
# export PATH="$HOME/.pyenv/bin:$PATH"

alias python="python3"
alias pip="pip3"

alias R="R -q"
alias r="radian"

alias lg="lazygit"

unsetopt BEEP

vicd()
{
    local dst="$(command vifm --choose-dir - "$@")"
    if [ -z "$dst" ]; then
        echo 'Directory picking cancelled/failed'
        return 1
    fi
    cd "$dst"
}

vicode()
{
    local dst="$(command vifm --choose-dir - "$@")"
    if [ -z "$dst" ]; then
        echo 'Directory picking cancelled/failed'
        return 1
    fi
    code "$dst"
}


vivim()
{
    local dst="$(command vifm --choose-dir - "$@")"
    if [ -z "$dst" ]; then
        echo 'Directory picking cancelled/failed'
        return 1
    fi
    nvim "$dst"
}

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --no-ignore-vcs'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

