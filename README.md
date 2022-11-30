<div align="center">

# 🌸**Apatheia Dot Files**🌸

![GitHub Repo stars](https://img.shields.io/github/stars/AmadeusWM/dotfiles-hyprland?style=for-the-badge&color=E08BCA) ![GitHub last commit](https://img.shields.io/github/last-commit/AmadeusWM/dotfiles-hyprland?style=for-the-badge&color=E08BCA) ![GitHub repo size](https://img.shields.io/github/repo-size/AmadeusWM/dotfiles-hyprland?style=for-the-badge&color=E08BCA)


<br/>

![screen_1](/assets/screenshots/ImagesShowcase.png)

<br/>

</div>

# Details
- **Compositor**: [Hyprland](https://github.com/hyprwm/Hyprland)
- **Top- and sidebar**: [eww](https://github.com/elkowar/eww)
- **Notifications**: [dunst](https://github.com/dunst-project/dunst)
- **Wallpaper**: [dotfiles](https://github.com/AmadeusWM/dotfiles-hyprland) `/themes/apatheia/wallapapers`
- **Terminal**: [kitty](https://github.com/kovidgoyal/kitty)
- **Search menu**: [wofi](https://github.com/uncomfyhalomacro/wofi)

# Usage

## 📦 Required dependencies:
Install these dependencies manually (Arch) 
```shell
hyprland-git nerd-fonts-complete wofi rofi wifi4wofi dunst eww swww swayidle swaylock-effects-git swaylockd sway-audio-idle-inhibit-git pamixer light papirus-icon-theme playerctl waybar-hyprland-git cava waybar-mpris-git kitty xdg-desktop-portal-wlr grim slurp wl-clipboard
```

## 🧙‍♂️ Setup Hyprland Config
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
exec=~/.config/hypr/scripts/variables/set_env primary [ID_OF_PRIMAR_SCREEN] #0, 1, 2, ...
```

### Switching theme or config (Optional)
Assign the `source` parameter in the `hyprland.conf` to a different configuration file.

## ✨ Theming Other Applications
The themes of other applications are saved in the `dots` folder.
`wofi`, `rofi`, `kitty` and `dunst` can be themed by copying the folders into `~/.config`
```bash
cp  ./dots/dunst ~/.config
cp  ./dots/wofi ~/.config
cp  ./dots/rofi ~/.config
cp  ./dots/kitty ~/.config
```

# ⌨️ Keybinds
- `SUPER+Z`: Prev orkspace
- `SUPER+X`: Next orkspace
- `SUPER+CTRL+M`: Quit Hyprland
- `SUPER+1,...9,0`: Switch workspace
- `ALT+1,...9,0`: Move window to workspace
- `SUPER+ALT+1,...9,0`: Move window to workspace (silent)
- `SUPER+B`: Switch Wallpaper
- `SUPER+V`: Open clipboard history
- `SUPER+T` or `CTRl+ALT+T`: Kitty
- `SUPER+F` or `CTRL+ALT+F`: Firefox
- `SUPER+O`: Obsidian
- `SUPER+E`: Nautilus
- `SUPER+A`: VS-code

# 🙏 Credits
- [Back777space](https://github.com/Back777space): for contributing🗿🗿🗿
- [Zenneh](https://github.com/zenneh): the Obsidian theme📔
- [Taylor85345](https://github.com/taylor85345): the well-organized dotfiles, and their top-bar🧔‍♀️
- [flick0](https://github.com/flick0): inspiring hyprland-setup and useful scripts😍
- [Vaxry](https://github.com/vaxerski): HYPRLAND 🤍
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
