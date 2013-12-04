#!/bin/bash
# builds portal projects

msgHeader "INFO" "build projects"

for i in ${project_directories[*]}; do
	build="build_$i"

	if [ "${!build}" == true ]; then
		if [ $run_tests == false ]; then
			maven_options="-DskipTests"
		fi

		if [ $i == 'portal' ]; then
			maven_options="$maven_options $europeana_options"
		fi

		msgResultTabbed "INFO" "$i" "building"
		msgRule "INFO"

		cd "$PROJECT_DIR"/"$i"/
		mvn clean install "$maven_options"

		msg "INFO"
	else
		msgResultTabbed "INFO" "$i" "skipped"
	fi
done;

msg "INFO"
cd $SHELL_SCRIPT_DIR
