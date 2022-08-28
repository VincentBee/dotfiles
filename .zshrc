if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# P10K / oh-my-zsh
export ZSH="/home/vincent/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
    docker
    git
    zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Node
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# TMUX
if [ "$TMUX" = ""  ]; then tmux; fi

alias n=nvim

-e 
alias luamake=/home/vincent/.config/nvim/lua-language-server/3rd/luamake/luamake
