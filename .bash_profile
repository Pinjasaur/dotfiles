# Extend $PATH for a local $HOME/bin directory
export PATH="$PATH:$HOME/bin"

# Append to the history file, don't overwrite it
shopt -s histappend

# Check the window size after each command and update LINES and COLUMNS
shopt -s checkwinsize

# Globstar pattern matching (e.g. **/*.foobar)
shopt -s globstar

# Extended globbing
shopt -s extglob

# Auto-cd to a directory without specifying 'cd' (e.g. foobar)
shopt -s autocd

# Don't have Z clobber the $PROMPT_COMMAND
export _Z_NO_PROMPT_COMMAND='1'

# Source Z (https://github.com/rupa/z)
source ~/.bash/z/z.sh

# Source Git Bash completion
source ~/.bash/git-completion.bash

# Load the shell dotfiles
for file in ~/.{exports,aliases,functions,bash_prompt,bash.local}; do
	[ -r "$file" ] && source "$file"
done
unset file

# The next two functions are helpers that mimic zsh's preexec & precmd:
# 1. preexec runs before every command
# 2. the command runs
# 3. precmd runs before the prompt

# Ran before every command (before `precmd`)
preexec() {
	# Don't cause a preexec if completing
	[ -n "$COMP_LINE" ] && return

	# Don't cause a preexec for $PROMPT_COMMAND
	[ "$BASH_COMMAND" = "$PROMPT_COMMAND" ] && return

	# Update $DISPLAY to help avoid stale values within tmux
	update-x11-forwarding

# Z
	_z --add "$(command pwd '$_Z_RESOLVE_SYMLINKS' 2>/dev/null)" 2>/dev/null

	# echo ">>> preexec <<<"
}

# Ran before every prompt (after `preexec`)
precmd() {
	# Write current/new lines to histfile
	history -a

	# echo "<<< precmd >>>"
}

trap 'preexec' DEBUG
export PROMPT_COMMAND=precmd
