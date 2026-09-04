#!/bin/bash

still -c 'slurp | grim -g- - | tee ~/Pictures/Screenshots/$(date +%d-%b-%Y__%I:%M:%S%p).png' | wl-copy
notify-send "Ka-chink"

