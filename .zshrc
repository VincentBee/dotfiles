if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# P10K / oh-my-zsh
export ZSH="/home/vincent/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
  git
  docker
  zsh-autosuggestions
  zsh-completions
)
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Node
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# TMUX
if [ "$TMUX" = ""  ]; then tmux; fi

alias n='nvim'
alias gcb='git fetch -p && git branch -vv | awk "/: gone]/{print \$1}" | xargs git branch -D'
alias tl='task list'

