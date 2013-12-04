#!/bin/bash
# pulls in the git projects registered in variables.sh

msgHeader "INFO" "git pull"

for i in ${git_directories[*]}; do
	if [ $gitpull == true ]; then
		msg "INFO" $i
		cd $PROJECT_DIR/$i
		output=$(git pull)
		msg "INFO" "$output"
		msg "INFO" ""
	else
		msgResultTabbed "INFO" "$i" "skipped"
	fi
done;

msg "INFO" ""

cd $SHELL_SCRIPT_DIR
