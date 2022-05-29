### [awesome](https://awesomewm.org)

#### Preparing the file structure

1. If you have are new to customizing awesome, first copy the default config file into your .config directory.
```bash
cp /etc/xdg/awesome/rc.lua ~/.config
```

2. Create a themes directory inside of your awesome config directory
```bash
mkdir ~/.config/awesome/themes
```

#### Install using Git

If you are a git user, you can install the theme and keep up to date by cloning the repo:

```bash
cd ~/.config/awesome/themes
git clone https://github.com/luispflamminger/dracula-awesome.git dracula
```

#### Install manually

1. Download using the [GitHub .zip download](https://github.com/luispflamminger/dracula-awesome/archive/refs/heads/master.zip) option and unzip them.
2. Place the "dracula" folder inside of the "themes" folder we created earlier.

#### Activate the theme

1. Open the file ```~/.config/awesome/rc.lua``` in your favorite text editor
2. To change the theme, find this line near the beginning of the file:
```lua
beautiful.init(gears.filesystem.get_themes_dir() .. "default/theme.lua")
```
3. Change it to the following:
```lua
beautiful.init("/home/USER/.config/dracula/theme.lua")
```
Substitute USER for your username