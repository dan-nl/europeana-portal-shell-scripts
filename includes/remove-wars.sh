#!/bin/bash
# remove portal wars

msgHeader "INFO" "remove wars"

if [ $remove_wars == true ]; then
	removeDirectoryOrFile wars "$TOMCAT_WEBAPP_DIR"/ -f
	msg "INFO" ""
else
	msgResultTabbed "INFO" "remove wars" "skipped"
	msg "INFO" ""
fi
