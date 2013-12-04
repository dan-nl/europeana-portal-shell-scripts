#!/bin/bash
# handles arguments passed to europeana-portal.sh
# @see http://stackoverflow.com/questions/402377/using-getopts-in-bash-shell-script-to-get-long-and-short-command-line-options#answer-7948533

msgHeader "INFO" "detecting arguments"

usage="Example usage:\n\n
 --complete\t\t\t                 pull all github projects, shutdown tomcat, remove webapp directories,\n
                                  \t\t\t\t minify front-end assets, remove wars, build all projects,\n
                                  \t\t\t\t copy wars, start tomcat\n\n

 -bap\t  --buildAllProjects\t     build all europeana-portal project\n
 -ba\t   --buildApi\t\t           build the api project\n
 -bc\t   --buildCore\t\t          build the corelib project\n
 -bp\t   --buildPortal\t\t        build the portal project\n\n

 -d\t    --debug\t\t              sets debug to true\n
 -gp\t   --gitpull\t\t            pulls all projects from github\n
 -h\t    --help\t\t\t             displays this help message\n\n

 -l\t    --local\t\t              uses local europeana.properties file,\n
                                  \t\t\t\t which can contain local solar and mongo references\n
 -m\t    --minify\t\t             minifies the front-end assets\n
 -rt\t   --runTests\t\t           runs tests during maven build\n\n

 -rd\t   --removeDirectories\t    remove webapp directories\n\n
 -rw\t   --removeWars\t\t         removes wars from tomcat directories\n
 -cw\t   --copyWars\t\t           copies wars to tomcat directories\n\n

 --tomcat-restart\t\t             stops tomcat, then starts it\n
 --tomcat-stop\t\t\t              stops tomcat\n
 --tomcat-start\t\t\t             starts tomcat\n"

arguments=( build_api2 build_corelib build_portal copy_wars debug gitpull local )
arguments+=( minify remove_directories remove_wars run_tests tomcat_stop tomcat_start )

for i in ${arguments[*]}; do
	eval $i=false
done;

while true; do
	case "$1" in
		--complete )
			gitpull=true;
			build_api2=true;
			build_corelib=true;
			build_portal=true;
			remove_directories=true;
			remove_wars=true;
			tomcat_stop=true;
			tomcat_start=true;
			minify=true;
			copy_wars=true;
			shift;;
		-bap | --buildAllProjects )
			build_api2=true;
			build_corelib=true;
			build_portal=true;
			shift;;
		-ba | --buildApi )
			build_api2=true;
			shift;;
		-bc | --buildCore )
			build_corelib=true;
			shift;;
		-bp | --buildPortal )
			build_portal=true;
			shift;;

		-cw | --copyWars )
			copy_wars=true;
			shift;;

		-d | --debug )
			debug=true;
			shift;;
		-gp | --gitpull )
			gitpull=true;
			shift;;
		-h | --help )
			echo -e $usage;
			exit;;

		-l | --local )
			local=true;
			shift;;
		-m | --minify )
			minify=true;
			shift;;
		-rt | --runTests )
			run_tests=true;
			shift;;

		-rd | --removeDirectories )
			remove_directories=true;
			shift;;
		-rw | --removeWars )
			remove_wars=true;
			shift;;
		--tomcat-restart )
			tomcat_stop=true;
			tomcat_start=true;
			shift;;
		--tomcat-stop )
			tomcat_stop=true;
			shift;;
		--tomcat-start )
			tomcat_start=true;
			shift;;
		-- ) shift; break;;
		* ) break;;
  esac
done

for i in ${arguments[*]}; do
	if [ ${#i} -lt 7 ]; then
		msg "INFO" "$i \t\t\t= ${!i}"
	elif [ ${#i} -lt 15 ]; then
		msg "INFO" "$i \t\t= ${!i}"
	else
		msg "INFO" "$i \t= ${!i}"
	fi
done;

msg "INFO" ""
