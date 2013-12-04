#!/bin/bash
# shutdown tomcat

msgHeader "INFO" "shutting down tomcat"

if [ $tomcat_stop == true ]; then
	pid=`ps aux | grep tomcat | grep -v grep | awk '{print $2}'`

	if [ "$pid" != "" ]; then
		"$TOMCAT_DIR"/bin/shutdown.sh
		sleep 1
		msgRule "INFO"
		msg "INFO" "tomcat shutdown"
		msgRule "INFO"
		msg "INFO" ""
	else
		msgResultTabbed "INFO" "tomcat" "not running"
		msg "INFO" ""
	fi
else
	msgResultTabbed "INFO" "shutting down tomcat" "skipped"
	msg "INFO" ""
fi
