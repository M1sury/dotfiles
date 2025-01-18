#!/bin/bash

clash=(
	update_freq=1
	icon=$CLASH_ICON
	icon.font="$FONT:Regular:20.0"
	icon.padding_left=10
	# background.color=$BACKGROUND_1
	# background.border_color=$BACKGROUND_2
	label.padding_right=0
	script="$PLUGIN_DIR/app_status.sh"
	click_script="open -a clash"
)

# Add Clash to sketchybar
sketchybar --add item clash right \
	--set clash "${clash[@]}"
