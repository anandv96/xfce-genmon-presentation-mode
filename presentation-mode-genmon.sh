#!/bin/bash

# the directory where the script folder is located
MY_DIR=/home/anand/applications/xfce-genmon/pres-monitor-check/xfce-genmon-presentation-mode

# image status icons
IMG_TRUE=${MY_DIR}/mozilla-hot-beverage.png
IMG_FALSE=${MY_DIR}/mozilla-sleeping-symbol.png

# txt status strings
# used for tooltip
TXT_TRUE="Presentation Mode is ON"
TXT_FALSE="Prsentation Mode is OFF"

# start off with the assumption that it's false
IMG_STATUS=${IMG_FALSE}
TXT_STATUS=${TXT_FALSE}

isPresMode="xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode"

if [ `${isPresMode}` = 'true' ]; then
	IMG_STATUS=${IMG_TRUE}
	TXT_STATUS=${TXT_TRUE}
else
	IMG_STATUS=${IMG_FALSE}
	TXT_STATUS=${TXT_FALSE}
fi

echo "<img>${IMG_STATUS}</img>
	<tool>${TXT_STATUS}</tool>
	<click>${MY_DIR}/toggle-pres-mode.sh</click>"
