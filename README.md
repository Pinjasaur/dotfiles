# dotfiles <img align="right" src="http://forthebadge.com/images/badges/built-with-love.svg">

there's no place like $HOME


## Setup

This is all inspired & based upon https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/.

From scratch (make sure Bash & Git are up to date first&mdash;looking at you macOS defaults 🙄):

- Go $HOME: `cd ~`
- Clone repo:
  - HTTPS: `git clone --bare https://github.com/Pinjasaur/dotfiles $HOME/.cfg`
  - SSH: `git clone --bare git@github.com:Pinjasaur/dotfiles.git $HOME/.cfg`
- Add `cfg` alias: `alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`
- Make backup directory: `mkdir -p .cfg-backup`
- Checkout dotfiles: `cfg checkout`
    - If conflicts: `cfg checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .cfg-backup/{}`
    - Re-checkout: `cfg checkout`
- Don't show untracked: `cfg config status.showUntrackedFiles no`
- Update submodules: `cfg submodule update --init --recursive`
- Create `.bash.local` & `.gitconfig.local` [from here](https://gist.github.com/Pinjasaur/d058460e2c474054e655f86ad511c6a1) (sorry, they're for my 👀 only)


### macOS specifics

- `git` may be `/usr/local/bin/git`, `/opt/homebrew/bin/git`, etc
- `brew install reattach-to-user-namespace`
- `set-option -g default-command "reattach-to-user-namespace -l $SHELL"` in `.tmux.conf.local`

### Submodule maintenance

- Pull in submodule changes: `cfg submodule update --init --recursive`
- Update submodules to latest: `cfg submodule update --remote --merge`
- Check submodule status: `cfg submodule status --recursive`


## Customizations

Create a `.bash.local` for setting up any shell-specic settings (aliases, functions,
exports, etc.).

There are also local configs for Vim (`.vimrc.local`) and tmux
(`.tmux.conf.local`) where you can place custom local settings.


## Noteworthy

### PuTTY

May need to change settings to get 256 colors.

  - PuTTY: Connection > Data > Terminal-type `xterm-256color`


## `ack`nowledgements

Tooling and configuration inspired by:

- https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
- https://github.com/mathiasbynens/dotfiles
- https://github.com/necolas/dotfiles
- https://github.com/oxalorg/dotfiles
- https://github.com/mislav/dotfiles
- https://github.com/thoughtbot/dotfiles
- https://github.com/sdball/dotfiles
- https://github.com/jimeh/dotfiles
- https://github.com/csswizardry/dotfiles
- https://github.com/paulirish/dotfiles

## License
[MIT](https://pinjasaur.mit-license.org/2017).
