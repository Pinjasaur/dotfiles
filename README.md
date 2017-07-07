# dotfiles

there's no place like ~/

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
