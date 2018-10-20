#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Bash completion with sudo
complete -cf sudo

PS1="\[\e[01;31m\][\[\e[01;35m\u\e[01;31m\]@\[\e[00;37m\]${HOSTNAME%%.*}\[\e[01;32m\]]:\w$\[\e[01;31m\]\n\[\e[01;31m\]\[\e[01;36m\]>>\[\e[0m\]"

# Functions
function dexsh() {
  if [ $# -ne 1 ]; then
    echo 'Usage: $FUNCNAME CONTAINER_ID'
    return 1
  fi

  docker exec -it $1 sh
}

# Aliases
alias ls='ls --color=auto'
alias df='df -h'
alias pacman='sudo pacman'
alias kitchen='ssh zesty@10.0.1.45'
alias benq='xrandr --output VIRTUAL3 --mode 2560x1440'
alias dsh='dexsh'
alias dls='docker container ls'
alias dst='docker container stop'
alias vps-ssh='ssh -i ~/.ssh/id_rsa root@45.63.88.48'
alias config='/usr/bin/git --git-dir=/home/zesty/.dot_file_config --work-tree=/home/zesty'
