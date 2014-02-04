#!/bin/bash

. ./includes/functions.sh

msgRule "INFO"
msg "INFO" "europeana portal redeploy                                        BEGIN"
msgRule "INFO"
msg "INFO" ""

. ./includes/arguments.sh
. ./includes/variables.sh
. ./includes/gitpull.sh
. ./includes/tomcat-stop.sh
. ./includes/remove-webapp-directories.sh
. ./includes/remove-wars.sh
. ./includes/build-projects.sh
. ./includes/minify.sh
. ./includes/copy-portal-wars.sh
. ./includes/refresh-webapp-assets.sh
. ./includes/tomcat-start.sh

msgRule "INFO"
msg "INFO" "europeana portal redeploy                                     COMPLETE"
msgRule "INFO"
