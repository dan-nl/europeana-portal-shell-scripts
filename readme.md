europeana-portal-shell-scripts
==============================
a shell deployment script for the europeana-portal; inspired by [péter kiraly’s](https://github.com/pkiraly) initial shell scripts. many thanks for his continued support and testing!

installation
-------------
1. clone the project into an appropriate directory. e.g.
    1. ````cd ~/projects/europeana-portal````
    1. ````git clone https://github.com/dan-nl/europeana-portal-shell-scripts.git shell-scripts````

1. assuming you have ~/bin/ on $PATH
    1. ````cp shell-scripts/bin/europeana-portal ~/bin/````
    1. ````chmod +x ~/bin/europeana-portal````
    1. ````nano ~/bin/europeana-portal```` change the directory as appropriate for your environment.

1. ````cp shell-scripts/includes/config.sh.sample config.sh````

1. ````nano shell-scripts/includes/config.sh```` alter as appropriate for your environment.

1. run ````europeana-portal -h```` for usage instructions.
