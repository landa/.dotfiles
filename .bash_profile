export CLICOLOR=1

parse_svn_branch() {
  parse_svn_url | sed -e 's#^'"$(parse_svn_repository_root)"'##g' | awk '{print " ("$1")" }'
}
parse_svn_url() {
  svn info 2>/dev/null | sed -ne 's#^URL: ##p'
}
parse_svn_repository_root() {
  svn info 2>/dev/null | sed -ne 's#^Repository Root: ##p'
}

function gl {
  grep --color=always -r "$*" . | grep --color=always -v \.svn | less -R
}

alias ls="ls --color"

export PS1="\[\033[0;37m\]\u\[\033[0;32m\]\`if [ \$? = 0 ]; then echo \[\e[32m\]@\[\e[0m\]; else echo \[\e[31m\]@\[\e[0m\]; fi\`\[\033[0;37m\]\h\[\033[0m\]:\[\033[1;37m\]\w\[\033[0m\]\[\033[1;32m\]\[\033[0m\]$ "
