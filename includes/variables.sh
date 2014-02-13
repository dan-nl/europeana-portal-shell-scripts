#!/bin/bash
# configuration variables for europeana-portal.sh

msgHeader "INFO" "variables"

# maven project directories
# build order matters: corelib first, then api2, then portal
project_directories=( corelib api2 portal  )

# expected maven wars
wars=( api.war api-demo.war portal.war )

# war target directories
war_directories[0]="$PROJECT_DIR"/api2/api2-war/target/api.war
war_directories[1]="$PROJECT_DIR"/api2/api2-demo/target/api-demo.war
war_directories[2]="$PROJECT_DIR"/portal/portal2/target/portal.war

# webapp project directory names
webapp_projects=( api api-demo portal )
webapp_work=( $TOMCAT_WORK_DIR )

msg "INFO" "variable setup complete"
msg "INFO" ""
