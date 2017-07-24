# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag='--color'
  export LS_COLORS='di=1;34:ln=1;35:so=1;31:pi=1;33:ex=1;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
else # OS X `ls`
  colorflag='-G'
  export LSCOLORS='ExFxBxDxCxegedabagacad'
fi

# List all files colorized in long format
alias ll="ls -lhF ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -alhF ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"

# Better default output from `dirs`
alias dirs='dirs -v'

# Always enable colored `grep` output
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Better 'cd'ing
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

# For managing the dotfiles repo: https://uly.io/x
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Easier `source`ing of my shell config
alias src='source ~/.bashrc'

# Edit my todo file
alias todo='$EDITOR ~/Dropbox/todo'
