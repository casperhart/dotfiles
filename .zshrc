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
alias ls="exa -l --git"
alias ll="exa -l --git"
alias la="exa -la --git"
alias vi="nvim"
alias vim="nvim"

# header in zsh
HOST="MBP"

# starship prompt
eval "$(starship init zsh)"

alias python="python3"
alias pip="pip3"

alias R="R -q"
alias r="radian"

alias lg="lazygit"
alias ld="lazydocker"

unsetopt BEEP

bindkey -v

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --no-ignore-vcs'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


export PATH="/usr/local/opt/python@3.10/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"

export HOMEBREW_NO_AUTO_UPDATE=1
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

if [[ ! $(tmux list-sessions) ]]; then 
  tmux
fi

export PATH="/usr/local/opt/llvm/bin:$PATH"