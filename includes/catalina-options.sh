#!/bin/sh

CATALINA_OPTS='-Xmx4096m -XX:+CMSClassUnloadingEnabled -XX:+CMSPermGenSweepingEnabled -XX:MaxPermSize=1024M'

if [ $debug == true ]; then
	CATALINA_OPTS="-Xdebug -Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=n"
fi
