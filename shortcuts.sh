# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lah='ls -lah'

alias pmr="python manage.py runserver"
alias apl="ansible-playbook"
alias uu="sudo apt-get update; sudo apt-get upgrade"
alias v="vim"
alias ap="ansible-playbook -vvvv"
alias icanhaz="sudo apt-get install"
alias ..='cd ..'
alias c='clear'
alias nocom="grep -v '^$\|^\s*\#'"
alias memfree="free -k | grep Mem | awk -F' ' '{ print $4 }'"
alias tailsys="sudo tail -f /var/log/syslog"
# infinite history
if [[ $- = *i* ]]; then [[ -d ~/.logs ]] || mkdir ~/.logs; PROMPT_COMMAND='echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log'; fi

