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

Configuration for **Neovim** focused on a lightweight development workflow.

Possible features:

* Plugin management
* Language support
* Keybindings
* UI improvements

Config location:

```
~/.config/nvim/
```

---

## Installation

Clone the repository:

```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git
```

Then create symlinks:

```bash
ln -s ~/dotfiles/i3 ~/.config/i3
ln -s ~/dotfiles/nvim ~/.config/nvim
```

---

## Philosophy

These configurations aim to be:

* **Minimal**
* **Fast**
* **Easy to maintain**

No unnecessary complexity, only tools that improve workflow.

---

## Future Plans

Possible additions:

* **Emacs configuration**
* Additional shell tooling
* More workflow automation

---

## Notes

These configs are tailored for **my personal workflow**, but feel free to explore and adapt them to your needs.
