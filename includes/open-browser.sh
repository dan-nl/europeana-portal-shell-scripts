#!/bin/sh

if [ $tomcat == true ]; then
	while true; do
		read -p "Do you wish to open your browser to $URL? " yn
		case $yn in
			[Yy]* )
				if which xdg-open > /dev/null; then
				  xdg-open URL
				elif which gnome-open > /dev/null; then
				  gnome-open URL
				elif which open > /dev/null; then
					open $URL
				fi
				break;;
			[Nn]* ) exit;;
			* ) echo "Please answer yes or no.";;
		esac
	done
fi
