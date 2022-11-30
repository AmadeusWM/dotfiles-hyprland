# 🌸**Apatheia Dot Files**🌸
![GitHub Repo stars](https://img.shields.io/github/stars/AmadeusWM/dotfiles-hyprland?style=for-the-badge&color=E08BCA) ![GitHub last commit](https://img.shields.io/github/last-commit/AmadeusWM/dotfiles-hyprland?style=for-the-badge&color=E08BCA) ![GitHub repo size](https://img.shields.io/github/repo-size/AmadeusWM/dotfiles-hyprland?style=for-the-badge&color=E08BCA)

<br>

# Screenshots

<br>

# Usage
## 📦 Required dependencies:
Install these dependencies manually (Arch) 
```shell
hyprland-git nerd-fonts-complete wofi rofi wifi4wofi dunst eww swww swayidle swaylock-effects-git swaylockd sway-audio-idle-inhibit-git pamixer light papirus-icon-theme playerctl waybar-hyprland-git cava waybar-mpris-git kitty xdg-desktop-portal-wlr grim slurp wl-clipboard
```

## Setup Hyprland Config
### Default Theme
Copy all files from the repo to your hyprland config folder, and rename `_hyprland.conf` to `hyprland.conf` .
```bash
git clone git@github.com:AmadeusWM/dotfiles-hyprland.git
cd dotfiles-hyprland
cp -r ./* ~/.config/hypr
# Rename config file
mv ~/.config/hypr/_hyprland.conf ~/.config/hypr/hyprland.conf 
```

### Switching Primary Screen
Add this line to your config:
```conf
exec=~/.config/hypr/scripts/variables/set_env primary 1
```

### Switching theme or config (Optional)
Assign the `source` parameter in the `hyprland.conf` to a different configuration file.

## Theming Other Applications
The themes of other applications are saved in the `dots` folder.
`wofi`, `rofi`, `kitty` and `dunst` can be themed by copying the folders into `~/.config`
```bash
cp  ./dots/dunst ~/.config
cp  ./dots/wofi ~/.config
cp  ./dots/rofi ~/.config
cp  ./dots/kitty ~/.config
```

# Keybinds
`SUPER+B`: Switch Wallpaper

# Credits
- [Back777space](https://github.com/Back777space): for contributing🗿🗿🗿
- [Taylor85345](https://github.com/taylor85345): an amazing
- [flick0](https://github.com/flick0)

# 🔨 TO-DO
- [x] Notifications (this maybe? https://www.reddit.com/r/unixporn/comments/sacxs3/oc_styled_notifications_using_dunst/)
- [x] Swappable wallpaper with wofi
example:
```bash
ls /home/amadeusw/.config/hypr/themes/apatheia/wallpapers | wofi --show dmenu
```
- [ ] Disable and Enable notifications
- [ ] Pull request Dunst: rounded icons
- [ ] Answer issue eww primary screen (first, try the command man): https://github.com/elkowar/eww/issues/382#issuecomment-1281693594
