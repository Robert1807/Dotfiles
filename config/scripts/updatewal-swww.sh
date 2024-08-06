#!/bin/bash

# **************
# * THEME SWWW *
# **************

# -----------------------------------------------
# Select random wallpaper ans create color scheme
# -----------------------------------------------
wal -q -i ~/wallpaper/

# -------------------------------
# Load current pywal color scheme
# -------------------------------
source "$HOME/.cache/wal/colors.sh

# --------------------------------
# Copy color file to waybar folder
# --------------------------------
cp ~/.cache/wal/colors-waybar.css ~/dotfiles/waybar/

# ------------------------
# get wallpaper image name
# ------------------------
newwall=$(echo $wallpaper | sed "s|$HOME/wallaper/||g")

# ---------------------
# Set the new wallpaper
# ---------------------
swww img $wallpaper --transition-step 20 --transition-fps=20
~/dotfiles/waybar/reload.sh

# -----------------
# Send notification
# -----------------
notify-send "Theme ans wallpaper update" "With image $newwall"

echo "DONE!"