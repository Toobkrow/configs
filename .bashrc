# Check for an interactive session
[ -z "$PS1" ] && return

# define prompt
PS1='\w $ '

# general configuration
source /home/daniel/.generic-shell-rc
