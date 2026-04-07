
# 🧠 What is a “dotfile”?

A **dotfile** is simply a config file that starts with a dot (`.`), which makes it hidden on Linux/macOS systems.

Examples:

* `~/.zshrc`
* `~/.bashrc`
* `~/.gitconfig`
* `~/.ssh/config`
* `~/.vimrc`

👉 They define how your system behaves:

* Shell behavior
* Aliases
* Themes
* Environment variables
* Tool configurations

---

linux/
├── dotfiles/
│   ├── zsh/
│   │   ├── .zshrc
│   │   ├── aliases.zsh
│   │   └── exports.zsh
│   │
│   ├── git/
│   │   └── .gitconfig
│   │
│   ├── ssh/
│   │   └── config
│   │
│   └── starship/ (optional)
│
└── bootstrap/