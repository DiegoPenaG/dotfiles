# Dotfiles

Personal configuration files for my development environment.

Currently this repository contains configuration for:

* **i3** – tiling window manager
* **Neovim** – text editor

I aim to keep these configs **minimal, fast, and practical** for daily development.

---

## Contents

```
.
├── i3/
│   └── config
├── nvim/
│   └── init.lua
```

### i3

Configuration for the **i3 window manager**.

Features may include:

* Custom keybindings
* Workspace management
* Status bar configuration
* Startup applications

Config location:

```
~/.config/i3/config
```

---

### Neovim

Configuration for **Nvim** 

Possible features:

* Plugin management
* Language support
* Keybindings
* UI improvements

Config location:

```
~/.config/nvim/
```
check basic keymaps in case something wrong
---

## Installation

Clone the repository:

```bash
git clone https://github.com/penadie/dotfiles.git
```

Then create symlinks:

```bash
ln -s ~/dotfiles/i3 ~/.config/i3
ln -s ~/dotfiles/nvim ~/.config/nvim
```

---

## Future Plans

Possible additions:

* **Emacs configuration**
* Additional shell tooling
* More workflow automation

---

## Notes

These configs are tailored for **my personal workflow**, but feel free to explore and adapt them to your needs.
