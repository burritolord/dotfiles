#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source FZF files
if [ -f /usr/share/fzf/key-bindings.bash ]; then
  . /usr/share/fzf/key-bindings.bash
fi

if [ -f /usr/share/fzf/completion.bash ]; then
  . /usr/share/fzf/completion.bash
fi

# Source git completion files
if [ -f /usr/share/git/completion/git-completion.bash ]; then
  . /usr/share/git/completion/git-completion.bash 
fi

# Bash completion with sudo
complete -cf sudo


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
alias ll='ls -lh'
alias df='df -h'
alias pacman='sudo pacman'
alias kitchen-ssh='ssh zesty@10.0.0.45'
alias kitchen-sftp='sftp zesty@10.0.0.45'
#alias benq='xrandr --output VIRTUAL3 --mode 2560x1440'
alias benq='optimus-manager --no-confirm --switch nvidia'
alias benq-highres='xrandr --output VIRTUAL3 --mode 3480x2160'
alias dsh='dexsh'
alias dls='docker container ls'
alias dst='docker container stop'
alias vps-ssh='ssh -i ~/.ssh/id_rsa web_user@45.63.88.48'
alias vps-sftp='sftp -i ~/.ssh/id_rsa web_user@45.63.88.48'
alias config='/usr/bin/git --git-dir=/home/zesty/.dot_file_config --work-tree=/home/zesty'
alias blind='xrandr --output eDP1 --mode 1920x1080'
alias goodeyes='xrandr --output eDP1 --mode 2560x1440'

# env variables
PS1="\[\e[01;31m\][\[\e[01;35m\u\e[01;31m\]@\[\e[00;37m\]${HOSTNAME%%.*}\[\e[01;32m\]]:\w$\[\e[01;31m\]\n\[\e[01;31m\]\[\e[01;36m\]>>\[\e[0m\]"
export LS_COLORS="di=1;94"

