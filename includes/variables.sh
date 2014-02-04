#!/bin/bash
# configuration variables for europeana-portal.sh

msgHeader "INFO" "variables"

# alter these variable as appropriate for your environment
# note that the property file can be placed anywhere, the value below is only a suggestion
HOME=~
PROJECT_DIR="$HOME"/websites/europeana-portal
PROPERTY_FILE_DIR="$PROJECT_DIR"/portal/portal2
SHELL_SCRIPT_DIR="$PROJECT_DIR"/shell-scripts
TOMCAT_DIR=/usr/local/Cellar/tomcat6/6.0.37
TOMCAT_WEBAPP_DIR="$TOMCAT_DIR"/libexec/webapps
URL="http://localhost:8080/portal/"

# git project directories within the main PROJECT_DIR
git_directories=( api2 corelib portal portal-translations )

# maven project directories
project_directories=( api2 corelib portal  )

# expected maven wars
wars=( api.war api-demo.war portal.war )

# war target directories
war_directories[0]="$PROJECT_DIR"/api2/api2-war/target/api.war
war_directories[1]="$PROJECT_DIR"/api2/api2-demo/target/api-demo.war
war_directories[2]="$PROJECT_DIR"/portal/portal2/target/portal.war

# webapp project directory names
webapp_projects=( api api-demo portal )
webapp_work=( libexec/work/Catalina/localhost )

msg "INFO" "variable setup complete"
msg "INFO" ""
