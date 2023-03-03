<div align="center">

# 🌸**Apatheia Dot Files**🌸

![GitHub Repo stars](https://img.shields.io/github/stars/AmadeusWM/dotfiles-hyprland?style=for-the-badge&color=E08BCA) ![GitHub last commit](https://img.shields.io/github/last-commit/AmadeusWM/dotfiles-hyprland?style=for-the-badge&color=E08BCA) ![GitHub repo size](https://img.shields.io/github/repo-size/AmadeusWM/dotfiles-hyprland?style=for-the-badge&color=E08BCA)


<br/>

![screen_1](/assets/screenshots/ImagesShowcase.png)

</div>

# Details
- **OS**: Arch Linux
- **Compositor**: [Hyprland](https://github.com/hyprwm/Hyprland)
- **Top- and sidebar**: [eww](https://github.com/elkowar/eww)
- **Notifications**: [dunst](https://github.com/dunst-project/dunst)
- **Wallpaper Loader**: [swww](https://github.com/Horus645/swww)
- **Wallpaper**: `/themes/apatheia/wallpapers`
- **Terminal**: [kitty](https://github.com/kovidgoyal/kitty)
- **Search menu**: [wofi](https://github.com/uncomfyhalomacro/wofi)
- **Fetch script**: `nitch`
- **Browser**: Firefox
- **Font**: [Nerd Font](https://www.nerdfonts.com/)

# Theme Variants
These theme variants can be added to the `themes` folder.
## Winter Theme
[❄ Winter Theme](https://github.com/AmadeusWM/hyprland-winter)

# Usage
## 📦 Required dependencies:
Install these dependencies manually (Arch) 
```shell
hyprland-git nerd-fonts-complete wofi dunst jq eww-wayland swayidle swaylock-effects-git swaylockd sway-audio-idle-inhibit-git bc pamixer light-git papirus-icon-theme playerctl cava kitty xdg-desktop-portal-wlr grim slurp wl-clipboard socat swappy cliphist hyprpicker nm-connection-editor dictd wl-clip-persist-git blueberry
```
Background utility:
either `swww-git` or `azote`;
Follow the [Quick Start Instructions from Hyprland](https://wiki.hyprland.org/Getting-Started/Quick-start/)

## 🧙‍♂️ Setup Hyprland Config
### Default Theme
Copy all files from the repo to your hyprland config folder, and rename `_hyprland.conf` to `hyprland.conf` .
```bash
git clone https://github.com/AmadeusWM/dotfiles-hyprland.git
cd dotfiles-hyprland
cp -r ./* ~/.config/hypr
# Rename config file
mv ~/.config/hypr/_hyprland.conf ~/.config/hypr/hyprland.conf 
```

### Switching Primary Screen
Add this line to your config:
```conf
exec=~/.config/hypr/scripts/variables/set_env primary [ID_OF_PRIMAR_SCREEN] # 0, 1, 2, ...
```

### Switching theme or config (Optional)
Assign the `source` parameter in the `hyprland.conf` to a different configuration file.

## ✨ Theming Other Applications

<details>
<summary>
instructions 
</summary>

### Default Applications
The themes of other applications are saved in the `dots` folder.
`wofi`, `rofi`, `kitty` and `dunst` can be themed by copying the folders into `~/.config`
```bash
cp  ./dots/dunst ~/.config
cp  ./dots/wofi ~/.config
cp  ./dots/rofi ~/.config
cp  ./dots/kitty ~/.config
```

### Spotify (Spicetify)
Install spicetify. (AUR: `spicetify-cli`)
Copy `dots/spicetify/Dribbblish` to `~/.config/spicetify/Themes` (or wherever your spicetify themes are stored)
Then:
```bash
cd "$(dirname "$(spicetify -c)")/Themes/Dribbblish"
mkdir -p ../../Extensions
cp dribbblish.js ../../Extensions/.
spicetify config extensions dribbblish.js
spicetify config current_theme Dribbblish color_scheme apatheia
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
spicetify apply
```
### Discord (Better Discord)
install from AUR: `betterdiscordctl`

Copy `dots/BetterDiscord/Apatheia.theme.css` to `~/snap/discord/145/.config/BetterDiscord/`

#### For Discord (Installed With Snap)
```bash
betterdiscordctl --d-install snap install 
```
#### Webcord
```bash
webcord --add-css-theme ~/.config/hypr/dots/BetterDiscord/Apatheia.theme.css
```

### Obsidian
The Obsidian theme can be found in the community theme store, just look up `Apatheia`. Install the theme which is developed by @AmadeusWM, @Zenneh. 

### VS-code
The Apatheia theme can be found on the marketplace. 
Look up `Apatheia` from `Amadeus Wolf`

#### If You Want To Change It
You'll have to upload it to the vs-code marketplace.
Follow the docs:
1. Generate theme repository
    - https://code.visualstudio.com/api/extension-guides/color-theme#create-a-new-color-theme
2. Publish theme
    - https://code.visualstudio.com/api/working-with-extensions/publishing-extension#next-steps

### Firefox
First and foremost, go to about:addons in your firefox. And enable the `Dark` theme.
#### Firefox Theme
1. in Firefox go to about:config. Change `toolkit.legacyUserProfileCustomizations.stylesheets` to "True"
2. Find your profile folder (go to the url `about:profiles` in firefox, and open the folder of your active profile)
3. Copy the `chrome` folder from `dots/firefox` to the aforementioned profile folder.
4. Restart firefox, you theme should be updated

<details>
<summary>
MacOS Fix overlapping controls
</summary>

1. Open this file in your editor: `dotfiles-hyprland/dots/firefox/chrome/window-controls/wc-without-tabline.css`
2. Uncomment the following: (in `:root:not([inFullscreen]) toolbar#nav-bar`
```css
margin-left: calc(
        var(--wc-right-space) * 2 + 60px
    ) !important; 
```
3. Comment in this line:
```css
margin-left: 0px;
```
4. Your file should look like this
```css
@import "window-controls.css";

:root:not([inFullscreen]) toolbar#nav-bar {
    z-index: 1 !important;
    position: relative !important;
    /* shift toolbar to the right based on initial width */
    margin-left: calc(
        var(--wc-right-space) * 2 + 60px
    ) !important; 
    /* margin-left: 0px; */
}

#TabsToolbar .toolbar-items {
    display: none !important;
}

.titlebar-buttonbox {
    flex-direction: row-reverse;
}

#TabsToolbar.browser-toolbar {
    display: inline-block !important;
    position: absolute;
    top: var(--wc-vertical-shift) !important;
    left: var(--wc-left-space) !important;
}
```
</details>
    
<details>
<summary>
Windows: Window Control Buttons At the Right Side
</summary>

The solution is to replace this line: (in `chrome/config.css`)
```css
@import "window-controls/wc-without-tabline.css";
```
with the following:
```css
@import "window-controls/wc-without-tabline-r.css";
```
Afterwards your buttons should be visible.
</details>

#### Tree Style Tabs
1. Install the Tree Style Tabs extension from [here](https://addons.mozilla.org/en-US/firefox/addon/tree-style-tab/)
2. Visit `Preferences` with `ctrl+shift+a>Tree Style Tab>Preferences`
3. Scroll to the bottom, and Press `Import` in `All Configs`
4. Import the `config.json` from `dots/firefox/treestyletab/config.json`
5. Then go to `Advanced` and scroll down
6. Choose `Load from file` and upload the following `dots/firefox/treestyletab/treestyletab.css` (*optional*: if the theme of TST doesn't match the new firefox theme)

#### Night Tab
1. Install the nighttab extension from [here](https://addons.mozilla.org/en-US/firefox/addon/nighttab/)
2. Go to night tab settings (top right), and then the data tab
3. Import `dots/firefox/night-tab/night-tab.json`
4. You'll have to change the colors yourself if you change the theme from the default

### GTK Theme
For GTK: [Orchis-Theme](https://github.com/vinceliuice/Orchis-theme)
Edit the following files:
- `~/.config/gtk-3.0/settings.ini`
- `~/.config/gtk-4.0/settings.ini`
to:
```conf
[Settings]
gtk-application-prefer-dark-theme=1
gtk-theme-name = Orchis-Dark
```
and you might have to run: 
```bash
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
```
### Eww Bar
Credits to https://github.com/taylor85345
Dependency: `eww-wayland`

</details>

---

<br/>

# ⌨️ Keybinds 
All keybinds can be found in the `keybinds` folder
- `SUPER+SPACE`: Application Launcher (wofi)
- `SUPER+Z`: Prev workspace
- `SUPER+X`: Next workspace
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
- `SUPER+C`: Color Picker (`hyprpicker`)
- `PRINT`: Screenshot a part of your screen
- `SUPER+PRINT`: Record a part of your screen
- `SUPER+SHIFT+B`: Reset Top Bar (e.g. when connecting new screen)

# ⭐ Credits
- [Back777space](https://github.com/Back777space): for contributing🗿🗿🗿
- [Zenneh](https://github.com/zenneh): the Obsidian theme
- [Taylor85345](https://github.com/taylor85345): the well-organized dotfiles, and top-bar
- [flick0](https://github.com/flick0): inspiring hyprland-setup and useful scripts
- [Vaxry](https://github.com/vaxerski): hyprland


---

<br/>
<br/>
<br/>

# 🔨 TO-DO
- [x] Notifications (this maybe? https://www.reddit.com/r/unixporn/comments/sacxs3/oc_styled_notifications_using_dunst/)
- [x] Swappable wallpaper with wofi
example:
```bash
ls /home/amadeusw/.config/hypr/themes/apatheia/wallpapers | wofi --show dmenu
```
- [x] Disable and Enable notifications
- [x] Pull request Dunst: rounded icons
- [ ] Answer issue eww primary screen (first, try the command man): https://github.com/elkowar/eww/issues/382#issuecomment-1281693594

## 💖 Support
<a href="https://www.buymeacoffee.com/amadeusWM"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=amadeusWM&button_colour=5F7FFF&font_colour=ffffff&font_family=Poppins&outline_colour=000000&coffee_colour=FFDD00"></a>
