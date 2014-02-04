#!/bin/bash
# refresh webapp assets

msgHeader "INFO" "refresh webapp assets"

if [ $refresh_webapp_assets == true ]; then
	REFRESH_FROM="$PROJECT_DIR"/portal/portal2/src/main/webapp
	REFRESH_TARGET="$TOMCAT_WEBAPP_DIR"/portal

	rsync -avz "$REFRESH_FROM"/WEB-INF/jsp/ "$REFRESH_TARGET"/WEB-INF/jsp
	rsync -avz "$REFRESH_FROM"/WEB-INF/tags/ "$REFRESH_TARGET"/WEB-INF/tags
	rsync -avz "$REFRESH_FROM"/themes/ "$REFRESH_TARGET"/themes
	msg "INFO" ""
else
	msgResultTabbed "INFO" "refresh webapp assets" "skipped"
	msg "INFO" ""
fi
