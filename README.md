# My dotfiles

Repo containing my configs

## Requirements

Ensure you have these installed

### Git

For Arch

```bash
pacman -S git
```

For MacOS (brew)

```bash
brew install git
```

### Gnu Stow

For Arch

```bash
pacman -S stow
```

For MacOS (brew)

```bash
brew install stow
```

## Installation

First, check out dotfiles repo in your `$HOME` directory using git

```bash
git clone https://github.com/HumanEntity/dotfiles.git
cd dotfiles
```

then use GNU Stow to create symlinks

```bash
stow .
```
