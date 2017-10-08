# dotfiles <img align="right" src="http://forthebadge.com/images/badges/built-with-love.svg">

there's no place like $HOME


## Setup

As per https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/.

Don't forget to update any submodules: `git submodule update --init --recursive`.

Create a `.gitconfig.local` to put your Git credentials (and any other settings):

```
[user]
  name = Paul Esch-Laurent
  email = p@uly.io
```


## Customizations

Create a `.locals` for setting up any shell-specic settings (aliases, functions,
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
