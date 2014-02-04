#!/bin/bash
# remove portal webapp directories

msgHeader "INFO" "remove webapp directories"

if [ $remove_directories == true ]; then
	removeDirectoryOrFile webapp_projects "$TOMCAT_WEBAPP_DIR"/ -d
	msg "INFO" ""
else
	msgResultTabbed "INFO" "remove webapp directories" "skipped"
	msg "INFO" ""
fi
