# common alias
alias ll="ls -lh"

# for git
alias gits="git status"
alias gitl="git log --all --decorate --oneline --graph"
alias gitb="git branch"

# for neovim
alias vi="nvim"
alias vim="nvim"

alias mi="cd $HOME"
alias mip="cd $HOME/Projects"
alias mil="cd $HOME/Learn"
alias mic="cd $HOME/Code"

# for tmux
alias ta="tmux attach"
alias tn="tmux new"
alias tls="tmux ls"

# stop escaping $ when using tab completion
shopt -s direxpand

# fish-like directory PS1
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $SCRIPT_DIR/fish_pwd
