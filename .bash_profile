# Extend $PATH for a local $HOME/.bin and $HOME/bin directory
export PATH="$HOME/bin:$PATH"

# Append to the history file, don't overwrite it
shopt -s histappend

# Check the window size after each command and update LINES and COLUMNS
shopt -s checkwinsize

# Load the shell dotfiles
for file in ~/.bash_{exports,aliases,functions,prompt,extras}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Source z (https://github.com/rupa/z)
source ~/.bash/z/z.sh
