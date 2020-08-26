# Vim bindings
export PATH=$HOME/bin::$PATH
export ZSH="/home/miczi/.oh-my-zsh"
ZSH_THEME="avit"

CASE_SENSITIVE="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# TODO download
#git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  git
  docker
  docker-compose
  vscode
  wd
)
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export ZSH_DISABLE_COMPFIX=true
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
  export VISUAL='nvim'
else
  export EDITOR='vim'
fi

# vi mode
source ~/bin/vi-mode-cursor.zsh
bindkey -v
bindkey -M viins 'jj' vi-cmd-mode
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
export KEYTIMEOUT=50

# functions
stowit() {
    # usr=$1
    app=$1
    # -v verbose
    # -R recursive
    # -t target
    (cd ~/dotfiles; stow -v -R -t ~ ${app})
}
alias z='nvim "+normal G" ~/.zshrc'
alias r='source ~/.zshrc'
alias i='sudo apt install'
alias u='sudo apt update'
alias g='lazygit'
alias c='(cd ~/dotfiles; lazygit)'
alias v='nvim'
