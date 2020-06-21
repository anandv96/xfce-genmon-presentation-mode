#!/bin/bash

# toggle presentation mode and reload the genmon-plugin #26 that's an indicator of the status
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -T
xfce4-panel --plugin-event=genmon-26:refresh:bool:true
