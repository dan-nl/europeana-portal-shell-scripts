#!/bin/bash
# copy wars to tomcat webapp directory

msgHeader "INFO" "copy portal wars to tomcat webapp directory"

if [ $copy_wars == true ]; then
	for i in ${war_directories[*]}; do
		if [ -f "$i" ]; then
			cp "$i" "$TOMCAT_DIR"/libexec/webapps/
			status="copied"
		else
			status="does not exist"
		fi

		msg "INFO" "$i\t ( $status )"
	done;

	msg "INFO" ""
else
	msgResultTabbed "INFO" "copy portal wars" "skipped"
	msg "INFO" ""
fi
