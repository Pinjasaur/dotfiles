# Extend $PATH for a local $HOME/bin directory
export PATH="$PATH:$HOME/bin"

# Append to the history file, don't overwrite it
shopt -s histappend

# Check the window size after each command and update LINES and COLUMNS
shopt -s checkwinsize

# Globstar pattern matching (e.g. **/*.foobar)
shopt -s globstar

# Auto-cd to a directory without specifying 'cd' (e.g. foobar)
shopt -s autocd

# Source z (https://github.com/rupa/z)
source ~/.bash/z/z.sh

# Load the shell dotfiles
for file in ~/.{exports,aliases,functions,bash_prompt,bash.local}; do
  [ -r "$file" ] && source "$file"
done
unset file
