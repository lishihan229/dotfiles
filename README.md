# My Dotfiles

This repository manages my configuration files (dotfiles).

## Setup

To set up these dotfiles on a new machine:

1. Clone the repository:
   ```bash
   git clone git@github.com:lishihan229/dotfiles.git ~/Projects/dotfiles
   ```
2. Create symlinks (example):
   ```bash
   ln -s ~/Projects/dotfiles/.bashrc ~/.bashrc
   ```

## Managed Files

- `.bashrc`: Bash shell configuration.
- `.gitconfig`: Git configuration.
- `.tmux.conf` and `.config/tmux/tmux.conf`: tmux configuration.
- `.config/i3/config`: i3 window-manager configuration.
- `.local/bin/start-workday`: opens daily applications on their i3 workspaces at login.
- `docs/startup.md`: startup behavior, installation, customization, and troubleshooting.
- `.codex/AGENTS.md`: personal Codex working conventions.
- `KEYBINDINGS.md`: reference for i3 and tmux shortcuts.

See [Daily application startup](docs/startup.md) to configure login applications.

For the daily workspace setup on a new i3 machine, install `i3`, `kitty`, and
`firefox`, then run:

```sh
cd ~/Projects/dotfiles
./install-workday
```

This links the tracked startup script into your home directory and adds its
startup entry to an existing i3 config (or installs this repository's i3 config
if none exists). Existing files that need changing are backed up. This installer
covers daily workspace startup only; it does not install all desktop packages
or deploy every file in this repository.
