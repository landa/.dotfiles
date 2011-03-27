# Variables
export EC2_PRIVATE_KEY="/Users/landa/.ec2/pk.pem"
export EC2_CERT="/Users/landa/.ec2/cert.pem"
export BC_REPLAYS="/Users/landa/Dropbox/Battlecode/replays"
export _JAVA_OPTIONS="-Xms32m -Xmx512m"
export PYTHONPATH="/Library/Python/2.6/site-packages/"
export CLICOLOR=1

# PATH
export MYSQL="/usr/local/mysql/bin"
export GIT="/usr/local/git/bin"
export EC2_HOME="/Users/landa/Development/PBD/Amazon/ec2-api-tools-1.3-36506"

PATH="/usr/bin/:${PATH}"
PATH="${PATH}:${MYSQL}"
PATH="${PATH}:${GIT}"
PATH="${PATH}:${EC2_HOME}/bin:/usr/local/bin"
PATH="${PATH}:/usr/local/bin:~/Development/Android/android-sdk-mac_x86-1.5_r3/tools"
export PATH
export JAVA_HOME="/usr"

export PS1="\`if [ \$? = 0 ]; then echo \[\e[33m\]^_^\[\e[0m\]; else echo \[\e[31m\]O_O\[\e[0m\]; fi\`[\u@\h:\w]\\$ "

# Aliases
alias ducks='du -cks * |sort -rn |head -n11'
alias mysql_start='sudo /Library/StartupItems/MySQLCOM/MySQLCOM start'
alias mysql_stop='sudo /Library/StartupItems/MySQLCOM/MySQLCOM stop'

gd() {
	git diff $1 > /var/tmp/gitdiff;
	mate /var/tmp/gitdiff;
}

test -r /sw/bin/init.sh && . /sw/bin/init.sh