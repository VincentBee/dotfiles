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

# TMUX
if [ "$TMUX" = ""  ]; then tmux; fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias n='nvim'
alias gcb='git fetch -p && git branch -vv | awk "/: gone]/{print \$1}" | xargs git branch -D'
alias tl='task list'


# pnpm
export PNPM_HOME="/home/vincent/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end