# Keybindings

This is the reference for the shortcuts configured by these dotfiles. `Super`
means the Windows/Meta key.

## i3 window manager

### System and applications

| Shortcut | Action |
| --- | --- |
| Volume up/down keys | Raise/lower volume by 10% |
| Mute key | Toggle speaker mute |
| Microphone-mute key | Toggle microphone mute |
| `Super+Enter` | Open Kitty terminal |
| `Super+d` | Open Rofi application launcher |
| `Super+Shift+q` | Close focused window |
| `Print` | Select a screenshot region with Ksnip |

### Focus, movement, and layouts

| Shortcut | Action |
| --- | --- |
| `Super+h/j/k/l` or `Super+Left/Down/Up/Right` | Focus left/down/up/right |
| `Super+Shift+h/j/k/l` or `Super+Shift+Left/Down/Up/Right` | Move focused window left/down/up/right |
| `Super+b` | Split horizontally |
| `Super+v` | Split vertically |
| `Super+f` | Toggle fullscreen |
| `Super+s` | Stacking layout |
| `Super+w` | Tabbed layout |
| `Super+e` | Toggle split layout |
| `Super+Shift+Space` | Toggle floating mode |
| `Super+Space` | Toggle focus between tiling and floating windows |
| `Super+a` | Focus parent container |
| `Super` + drag with the mouse | Move floating windows |

### Workspaces and session controls

| Shortcut | Action |
| --- | --- |
| `Super+1` through `Super+9`, `Super+0` | Switch to workspace 1 through 10 |
| `Super+Shift+1` through `Super+Shift+9`, `Super+Shift+0` | Move focused window to workspace 1 through 10 |
| `Super+Shift+c` | Reload i3 configuration |
| `Super+Shift+r` | Restart i3 without ending the session |
| `Super+Shift+e` | Show the confirmation dialog to exit i3 |
| `Super+r` | Enter resize mode |
| `h/j/k/l` or arrow keys, in resize mode | Resize left/down/up/right |
| `Enter`, `Escape`, or `Super+r`, in resize mode | Leave resize mode |

## tmux

tmux uses its default prefix: press and release `Ctrl-b`, then press the next
key. The configuration also enables mouse mode.

| Shortcut | Action |
| --- | --- |
| `Ctrl-b d` | Detach while keeping the tmux session running |
| `Ctrl-b c` | Create a new window |
| `Ctrl-b ,` | Rename the current window |
| `Ctrl-b n` / `Ctrl-b p` | Next / previous window |
| `Ctrl-b w` | Choose a window from the list |

Useful session commands:

```bash
tmux new -s project-name -c ~/code/project-name
tmux attach -t project-name
tmux ls
```

## Other tools

There are currently no custom Kitty-terminal or Readline/Bash key mappings.
