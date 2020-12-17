#!/bin/sh

# Provides de-facto batterieees support for lemonbar (https://github.com/lemonboy/bar).
#
# To test, run the following in a shell:
# 
# `sh lemonbar.sh | lemonbar`
#
# Copy the function found below over to your own lemonbar config, change the path
# of batterieees to wherever you have it stored, and enjoy.

batterieees()
{
	script_file=$(../batterieees)

	output_label="B"
	output_text="$output_label $(echo $script_file | awk -F ' ' '{ print $1 " " $2 }')"
	output_color="$(echo $script_file | awk -F ' ' '{ print $3 }')"

	echo "%{F$(echo $output_color)}$output_text"
}

while true
do
	batterieees
	sleep 1
done

