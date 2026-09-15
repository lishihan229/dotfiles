# My Dotfiles

My personal Linux desktop setup: i3 for keyboard-first window management,
Polybar for status and controls, and a small collection of scripts that make
the desktop pleasant for daily work.

## Desktop highlights

| Feature | What it does |
| --- | --- |
| **Automatic tiling** | `autotiling` chooses a horizontal or vertical split from the focused container's proportions. New windows therefore arrange themselves sensibly without manually choosing a split first. |
| **Minimal window chrome** | i3 uses a slim pixel border instead of title bars. The title of the focused window is shown in Polybar, next to the workspaces. |
| **Useful top bar** | Polybar shows workspaces, the active window, clock, media controls, German/Pinyin input state, Wi-Fi, volume, battery, and a deliberate power menu. |
| **Click-to-open agenda** | Clicking the clock focuses or opens a compact GNOME Calendar popup. |
| **Ready-to-work login** | On a fresh i3 login, a Kitty terminal opens on workspace 1 and Firefox on workspace 2. |

The automatic tiler is the upstream
[`nwg-piotr/autotiling`](https://github.com/nwg-piotr/autotiling) project,
included as a Git submodule. It listens for i3 window events and switches the
next split direction based on the current container's width-to-height ratio.

## Preview of the workflow

```text
Polybar:  [ 1 ][ 2 ][ 3 ]  focused application title      time + media     system status
Windows:  slim borders, no separate title bars
Layout:   new windows alternate automatically between left/right and up/down
```

## Setup

To set up these dotfiles on a new machine:

1. Clone the repository:
   ```bash
   git clone --recurse-submodules git@github.com:lishihan229/dotfiles.git ~/Projects/dotfiles
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
- `.config/i3/autotiling`: automatic split-direction helper (Git submodule).
- `.config/polybar/`: top-bar configuration, launcher, and its helper scripts.
- `.local/bin/start-workday`: opens daily applications on their i3 workspaces at login.
- `docs/startup.md`: startup behavior, installation, customization, and troubleshooting.
- `.codex/AGENTS.md`: personal Codex working conventions.
- `KEYBINDINGS.md`: reference for i3 and tmux shortcuts.

See [Daily application startup](docs/startup.md) to configure login applications.

## Polybar

The i3 configuration starts `~/.config/polybar/launch.sh` on i3 launch or
reload. The launcher uses the tracked `config.ini` and writes diagnostics to
`/tmp/polybar-main.log`.

The Polybar setup needs `polybar`, `playerctl`, `NetworkManager`/`nmcli`,
`pactl`, `rofi`, `zenity`, IBus, and a Nerd Font. GNOME Calendar is optional
but enables the clock's click action.

To deploy it from a clone, create a symlink (or copy the directory) and reload
i3 with `Super+Shift+c`:

```bash
ln -s ~/Projects/dotfiles/.config/polybar ~/.config/polybar
```

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
