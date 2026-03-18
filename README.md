<h3 align="center">catharsis</h3>

<div>
  <p align="center">
    Personal dotfiles for an Arch + Sway setup. What I use daily.
  </p>
</div>

## About

- **zsh** - shell config, aliases, paths, plugins
- **kitty** - terminal emulator, wallpaper-matched color scheme
- **waybar** - bar config (legacy scripts still present, will likely be removed)
- **dunst** - notification daemon
- **zathura** - PDF viewer
- **nvim** - Neovim config (git submodule, hosted on Codeberg)

Music is handled by Navidrome rather than mpd these days, but the mpd config
is still here for reference.

## Getting Started

The repo is meant to live in `$HOME`. The `.gitignore` is inverted - it
ignores everything by default and only tracks what's explicitly listed.

```sh
git clone --recurse-submodules <repo-url> ~
```

## Dependencies

- Sway, Waybar, Dunst, Kitty, Zathura
- JetBrainsMono Nerd Font, IBM Plex Mono
- [rofi-wayland](https://github.com/A417ya/rofi-wayland) with themes from [adi1090x/rofi](https://github.com/adi1090x/rofi)
- curl (for Waybar weather script, if kept)
