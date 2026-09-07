# My Dotfiles

This repository manages my configuration files (dotfiles).

## Setup

To set up these dotfiles on a new machine:

1. Clone the repository:
   ```bash
   git clone <repo-url> ~/Documents/Projects/dotfiles
   ```
2. Create symlinks (example):
   ```bash
   ln -s ~/Documents/Projects/dotfiles/.bashrc ~/.bashrc
   ```

## Managed Files

- `.bashrc`: Bash shell configuration.
- `.gitconfig`: Git configuration.
- `.tmux.conf` and `.config/tmux/tmux.conf`: tmux configuration.
- `.config/i3/config`: i3 window-manager configuration.
- `.codex/AGENTS.md`: personal Codex working conventions.
- `KEYBINDINGS.md`: reference for i3 and tmux shortcuts.
