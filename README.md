# dotfiles <img align="right" src="http://forthebadge.com/images/badges/built-with-love.svg">

there's no place like $HOME


## Setup

As per https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/.

Don't forget to update any submodules: `git submodule update --init --recursive`.

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


## Noteworthy

### PuTTY

May need to change settings to get 256 colors.

  - PuTTY: Connection > Data > Terminal-type `xterm-256color`


## References

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
