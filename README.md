# xfce-genmon-presentation-mode
XFCE genmon panel plugin script to monitor and quickly toggle presentation mode

# Installation
- install [xfce4-genmon-plugin](https://docs.xfce.org/panel-plugins/xfce4-genmon-plugin)
- clone this repo
- in the `presentation-mode-ganmon.sh` change `MY_DIR` to the location of the folder
- add a new xfce-ganmon plugin to your panel and set the executable `/path/to/folder/presentation-mode-ganmon.sh`
- in `toggle-pres-mode.sh` change the X value in `ganmon-X` to your plugins value
> where “genmon-X” is the widget name of the particular genmon instance. To get this name, go to the panel properties screen and on the Items tab, hover your mouse over the genmon plugin to get it's internal name. 

# Behaviour
When clicked the presentation mode is toggled and the plugin is reloaded (to refresh the image). You can also add a keyboard shortcut to call the `toggle-pres-mode.sh`


# Configuration
## Edit the refresh time for your plugin
Change the `Period(s)` property in the ganmon plugin to a time of your choice. I set it as 3600 because I don't need it to constantly refresh.

## To change the images used
The current images used are the mozilla emojis for 'hot-beverage' and 'sleep-symbol'
You can change the images used by changing the respective variable names.
I have changed the images to 20x20 pixels, you can resize the `image.png.orig` files as necessary.

## To add extra things to do on click
Edit the `toggle-pres-mode.sh` to add extra actions
