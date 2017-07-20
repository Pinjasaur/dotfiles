# dotfiles <img align="right" src="http://forthebadge.com/images/badges/built-with-love.svg">

there's no place like ~/

## Setup

As per https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/.

Create a `.bash_extras` for setting up Git credentials and any specific settings.

```
# Git credentials
GIT_AUTHOR_NAME="Paul Esch-Laurent"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="p@uly.io"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"

# Set the credentials
git config --global user.name "$GIT_AUTHOR_NAME"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

## Dependencies

### Vim

- https://github.com/tpope/vim-pathogen
- https://github.com/tpope/vim-sensible
- https://github.com/tpope/vim-surround
- https://github.com/airblade/vim-gitgutter
- https://github.com/editorconfig/editorconfig-vim
- https://github.com/jiangmiao/auto-pairs
- https://github.com/alvan/vim-closetag
- https://github.com/sjl/badwolf

### Tmux

May need to change settings to get 256 colors.

  - `set -g default-terminal "screen-256color"` in `.tmux.conf`
  - `export TERM="screen-256color"` in `.shellrc`
  - PuTTY: Connection > Data > Terminal-type `xterm-256color`

Mouse settings if less than v2.1.

  ```
  # Make mouse useful in copy mode
  setw -g mode-mouse on

  # Allow mouse to select which pane to use
  set -g mouse-select-pane on

  # Allow mouse dragging to resize panes
  set -g mouse-resize-pane on

  # Allow mouse to select windows
  set -g mouse-select-window on
  ```

## References

Tooling and configuration inspired by:

- https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
- https://github.com/mathiasbynens/dotfiles
- https://github.com/necolas/dotfiles
- https://github.com/oxalorg/dotfiles
- https://github.com/mislav/dotfiles
