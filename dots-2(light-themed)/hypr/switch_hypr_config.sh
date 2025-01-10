#!/bin/bash

# Define the path to your main config file
MAIN_CONFIG="$HOME/.config/hypr/hyprland.conf"

# Define the two source configurations
CONFIG1="$HOME/.config/hypr/hyprland.conf1"
CONFIG2="$HOME/.config/hypr/hyprland.conf2"

# Check which config is currently in use
if grep -q "source = $CONFIG1" "$MAIN_CONFIG"; then
    # Switch to the second config
    sed -i "s|source = $CONFIG1|source = $CONFIG2|" "$MAIN_CONFIG"
else
    # Switch to the first config
    sed -i "s|source = $CONFIG2|source = $CONFIG1|" "$MAIN_CONFIG"
fi

# Reload Hyprland to apply the new configuration
hyprctl reload

