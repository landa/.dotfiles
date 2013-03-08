# Variables
export CLICOLOR=1

export PS1="\`if [ \$? = 0 ]; then echo \[\e[33m\]^.^\[\e[0m\]; else echo \[\e[31m\]O.o\[\e[0m\]; fi\`[\[\033[0;37m\]\u\[\033[0;32m\]@\[\033[0;37m\]\h\[\033[1;32m\]:\[\033[1;37m\]\w\[\033[0m\]]\[\033[1;32m\]\$(__git_ps1 \"%s\")\[\033[0m\]$ "

# Aliases

function gl {
  grep --color=always -r "$*" . | grep --color=always -v \.svn | less -R
}
