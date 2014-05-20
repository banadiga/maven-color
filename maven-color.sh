# Define coloers
NORMAL=`echo -e '\033[0m'`

RED=`echo -e '\033[31m'`
GREEN=`echo -e '\033[0;32m'`
BLUE=`echo -e '\033[0;34m'`
YELLOW=`echo -e '\033[0;33m'`

BRED=`echo -e '\033[1;31m'`
BGREEN=`echo -e '\033[1;32m'`
BBLUE=`echo -e '\033[1;34m'`
BYELLOW=`echo -e '\033[1;33m'`

# Define function whit will color highlighting maven output
color_maven() {
  mvn $* | sed \
                 -e "s/Tests run: \([^,]*\), Failures: \([^,]*\), Errors: \([^,]*\), Skipped: \([^,]*\)/${BLUE}Tests run: \1, Failures: \2, Errors: \3, Skipped: \4${NORMAL}/g" \
                 -e "s/\(\[ERROR\].*\)/${BRED}\1${NORMAL}/g" \
                 -e "s/\(.*ERROR.*\)/${RED}\1${NORMAL}/g" \
                 -e "s/\(FAILURE.*\)/${BRED}\1${NORMAL}/g" \
                 -e "s/\(\[WARNING\].*\)/${YELLOW}\1${NORMAL}/g"\
                 -e "s/\(\[INFO\].*\)/${GREEN}\1${NORMAL}/g" \
                 -e "s/\(\[DEBUG\].*\)/${GREEN}\1${NORMAL}/g" \
                 -e "s/\(\[INFO\].*SUCCESS.*\)/${BGREEN}\1${NORMAL}/g" \
                 -e "s/\(\[INFO\].*FAILURE.*\)/${BRED}\1${NORMAL}/g" \
                 -e "s/\(\[INFO\].*SKIPPED.*\)/${BYELLOW}\1${NORMAL}/g"
}

# Short alias
alias mvnc=color_maven # To run eny 'maven' comand with color highlighting
alias mci="mvnc clean install" # To run 'mvn clean install' with color highlighting
alias mcist="mci -Dmaven.test.skip=true -Dmaven.it.skip=true" # For run 'mvn clean install -Dmaven.test.skip=true -Dmaven.it.skip=true' with color highlighting

complete -o default -o nospace -F _mvn mvnc # To add command autocomplete