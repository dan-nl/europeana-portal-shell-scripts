#!/bin/bash
# prepare tomcat options and start it up

msgHeader "INFO" "starting tomcat"

if [ $tomcat_start == true ]; then
	msg "INFO" "preparing tomcat options"

	# include options
	. ./includes/europeana-options.sh
	. ./includes/catalina-options.sh

	# display tomcat options
	msg "INFO" "CATALINA_OPTS=$CATALINA_OPTS"
	msg "INFO" "EUROPEANA_OPTS=$EUROPEANA_OPTS"

	export CATALINA_OPTS="$CATALINA_OPTS $EUROPEANA_OPTS"

	# startup tomcat
	"$TOMCAT_DIR"/bin/startup.sh

	msgHeader "INFO" "tomcat started"
	msg "INFO" "the portal can be viewed at: $URL"
	msg "INFO" ""
else
	msgResultTabbed "INFO" "start tomcat" "skipped"
	msg "INFO" ""
fi
