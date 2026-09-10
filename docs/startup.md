# Daily application startup

The i3 configuration runs `~/.local/bin/start-workday` when a new i3 session starts:

```i3
exec --no-startup-id ~/.local/bin/start-workday
```

This means logging into i3, not merely opening a terminal or unlocking the screen.
An ordinary `exec` does not rerun on an i3 reload or in-place restart. Avoid
`exec_always` here, which would launch additional windows on i3 restarts.

The script requests a Kitty terminal on workspace 1 and a new Firefox window on
workspace 2, finishing on workspace 2. It leaves existing windows alone. Running
it manually again requests another terminal and browser window; it is not
designed to deduplicate existing windows.

## Files and installation

- Repository script: `.local/bin/start-workday`
- Live script: `~/.local/bin/start-workday`
- Repository i3 configuration: `.config/i3/config`
- Live i3 configuration: `~/.config/i3/config`

The current machine uses separate live copies, not symlinks. After editing the
repository script, install it with:

```sh
install -Dm755 ~/Projects/dotfiles/.local/bin/start-workday ~/.local/bin/start-workday
```

Merge the startup entry into the live i3 configuration once. Inspect differences
before replacing the entire file: the live configuration currently uses a custom
lock-screen script and a custom Kitty path that differ from the repository copy.
These pre-existing differences have not been overwritten by this change.

The script uses `kitty` and `firefox` from PATH, with no fixed username or clone
location. Both applications and i3 must be installed.

For a new machine, run `./install-workday` from the cloned repository. This
creates a symlink for the script and adds the startup line to the live config.
Keep the clone in place afterward because the symlink points into it. Repeating
the installer does not add another copy of its startup line. See the README
for the installation scope; other desktop dependencies still require setup.

## Testing and changing applications

```sh
sh -n ~/.local/bin/start-workday
i3 -C -c ~/.config/i3/config
~/.local/bin/start-workday
```

The first two commands check syntax; the last opens real application windows.
Check their placement with Super+1 and Super+2. The startup entry takes effect
at the next login; a reload does not launch it immediately.

Edit the script to change workspace numbers, commands, or add applications.
Each `i3-msg` argument is one quoted i3 command. Startup tracking is deliberately
enabled for application launches within the script so i3 can associate delayed
windows with their launch workspace. Placement depends on the application's
startup-notification behavior; verify new apps, especially ones reusing an
existing process. Manual execution alone is not proof of fresh-login behavior.

To disable automatic startup, comment out the `start-workday` entry in both i3
configuration copies. The script remains available to run manually.

Keep this document updated when changing the startup behavior. Update
`KEYBINDINGS.md` if adding a keyboard shortcut. Document behavior, dependencies,
and how to reproduce the setup; application caches and login data do not belong
in the dotfiles repository.
