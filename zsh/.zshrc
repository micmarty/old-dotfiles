# my scripts and binaries
export PATH=$HOME/bin:$HOME/.cargo/bin:$PATH
export ZSH="/home/miczi/.oh-my-zsh"
ZSH_THEME="avit"
CASE_SENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# TODO download
#git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  git
  # https://github.com/akarzim/zsh-docker-aliases
  docker
  docker-compose
  vscode
  wd
  # git clone https://github.com/jeffreytse/zsh-vi-mode $HOME/.oh-my-zsh/custom/plugins/zsh-vi-mode
  zsh-vi-mode
)
source $ZSH/oh-my-zsh.sh
autoload -Uz compinit && compinit -i

export LANG=en_US.UTF-8
export ZSH_DISABLE_COMPFIX=true

# Preferred editor for local and remote sessions
export EXPLORER=ranger
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR=vim
else
  export EDITOR=nvim
  export VISUAL=nvim
  export BROWSER=firefox
fi
ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
# vi mode
#source ~/bin/vi-mode-cursor.zsh
#bindkey -v
#bindkey -M viins 'jk' vi-cmd-mode
#bindkey -M menuselect 'h' vi-backward-char
#bindkey -M menuselect 'j' vi-down-line-or-history
#bindkey -M menuselect 'k' vi-up-line-or-history
#bindkey -M menuselect 'l' vi-forward-char
#export KEYTIMEOUT=50

# miniconda
source ~/bin/conda-init.zsh

# clipmenu
export CM_LAUNCHER=rofi
export CM_SELECTIONS='clipboard primary'
export CM_IGNORE_WINDOW='' # e.g keypass

# prompt
eval "$(starship init zsh)"

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
alias b='nvim ~/.config/bspwm/bspwmrc'
alias s='nvim ~/.config/sxhkd/sxhkdrc'
alias cr='(ranger ~/.config ~/dotfiles)'
alias rr='source ~/.zshrc'

alias c='(cd ~/dotfiles; lazygit)'
alias gh='cd ~'
alias r='ranger .'
alias e='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

alias i='sudo apt install'
alias u='sudo apt update'
alias g='lazygit'
alias l='lazydocker'
alias a='conda activate'
alias d='conda deactivate'
alias v='nvim'
alias vc='nvim ~/.vimrc'

alias cat='batcat'
alias ncdu='ncdu --color off'
alias cp='cp --interactive --verbose --preserve=mode,ownership,timestamps'
alias mkdir='mkdir --verbose --parents'
alias mv='mv -vi'
alias rm='rm -vI'
alias xmi='scrcpy --serial 336acdd50404 --show-touches'
alias pks='pkill -f screenkey'
