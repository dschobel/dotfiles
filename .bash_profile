source ~/code/other/git/contrib/completion/git-completion.bash
alias pull='git pull'
#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

#rails bash completion
export COMP_WORDBREAKS=${COMP_WORDBREAKS/\:/}

_rakecomplete() {
	  COMPREPLY=($(compgen -W "`rake -s -T | awk '{{print $2}}'`" -- ${COMP_WORDS[COMP_CWORD]}))
	    return 0
	}
complete -o default -o nospace -F _rakecomplete rake
