#!/bin/bash
# minifies portal2 front-end assets

msgHeader "INFO" "minify front-end assets"

if [ $minify == true ]; then
	msg "INFO" "minifying front-end assets"
	cd $PROJECT_DIR/portal/portal2/
	mvn -f pom-minify.xml minify:minify package
else
	msgResultTabbed "INFO" "minification" "skipped"
fi

cd $SHELL_SCRIPT_DIR
msg "INFO" ""
