#!/bin/bash

# **************
# * THEME SWWW *
# **************

# -----------------------------------------------
# Select random wallpaper ans create color scheme
# -----------------------------------------------
wal -q -i ~/Pictures/Wallpapers/

# -------------------------------
# Load current pywal color scheme
# -------------------------------
source "$HOME/.cache/wal/colors.sh"

# -----------------------------
# Copy wallpaper to cache files
# -----------------------------
cp $wallpaper ~/.cache/current_wallpaper.jpg

# --------------------------------
# Copy color file to waybar folder
# --------------------------------
#cp ~/.cache/wal/colors-waybar.css ~/.config/waybar/

# ------------------------
# get wallpaper image name
# ------------------------
newwall=$(echo $wallpaper | sed "s|$HOME/wallaper/||g")

# ---------------------
# Set the new wallpaper
# ---------------------
swww img $wallpaper \
    --transition-bezier .43,1.19,1,.4 \
    --transition-fps=60 \
    --transition-type="simple" \
    --transition-duration=0.1 \
    --transition-pos "$( hyprctl cursorpos )"

#/home/robert/.config/waybar/killnc.sh
#/home/robert/.config/waybar/reloadnc.sh
#/home/robert/.config/waybar/killbar.sh
#/home/robert/.config/waybar/reload.sh
#sleep 1

# -----------------
# Send notification
# -----------------
#notify-send "Theme ans wallpaper update" "With image $newwall"

echo "DONE!"