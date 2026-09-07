# Dotfiles repository guidance

- Treat files in this repository as the source-controlled copies of home-directory configuration.
- Before changing a managed config file, inspect both the repository copy and its live counterpart in `/home/shihan`.
- Keep `.tmux.conf` and `.config/tmux/tmux.conf` consistent when changing tmux settings.
- Update `KEYBINDINGS.md` whenever a configured i3 or tmux shortcut changes.
- Update `README.md` when adding or removing a managed configuration file.
- Do not commit secrets, private keys, tokens, machine-specific caches, logs, or application data.
- Validate configuration syntax or reload the affected service when practical, then summarize what was verified.
