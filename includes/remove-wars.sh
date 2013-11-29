#!/bin/sh
# remove portal wars

msgHeader "INFO" "remove wars"

if [ $remove_wars == true ]; then
	removeDirectoryOrFile wars "$TOMCAT_DIR"/libexec/webapps/ -f
	msg "INFO" ""
else
	msgResultTabbed "INFO" "remove wars" "skipped"
	msg "INFO" ""
fi
