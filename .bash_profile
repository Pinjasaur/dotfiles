# Extend $PATH for a local $HOME/bin directory
export PATH="$HOME/bin:$PATH"

# Append to the history file, don't overwrite it
shopt -s histappend

# Check the window size after each command and update LINES and COLUMNS
shopt -s checkwinsize

# Enable globstar pattern matching (e.g. **/*.foobar)
shopt -s globstar

# Load the shell dotfiles
for file in ~/.{exports,aliases,functions,bash_prompt,extras}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Source z (https://github.com/rupa/z)
source ~/.bash/z/z.sh
