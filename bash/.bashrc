#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval SSH_AUTH_SOCK=/tmp/ssh-XXXXXXxH2yM2/agent.3491; export SSH_AUTH_SOCK;
SSH_AGENT_PID=3492; export SSH_AGENT_PID;

# build prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

_blue=$(tput setaf 4)
_green_hl=$(tput setaf 10)
_reset=$(tput sgr0)

PS1='\u@\h:${_blue}\w${_green_hl} $(parse_git_branch)${_reset}\$ '

# load aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# load exports
if [ -f ~/.bash_exports ]; then
	. ~/.bash_exports
fi
