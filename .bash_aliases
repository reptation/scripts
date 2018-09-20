export EDITOR=vim
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lh='ls -lh'                                                              
alias lah='ls -lah'
alias lath='ls -lath'
alias lathr='ls -lathr'

alias tailsys='sudo tail -f -n 100 /var/log/syslog'
alias p3='python3'
alias vbm='VBoxManage'
alias v='vim'
alias mp='mplayer'
alias pd='puredata'
alias pmr='python3 manage.py runserver'
alias wl='wc -l'
alias sai='sudo apt install'

#systemd
alias sss='sudo systemctl status'
alias ssr='sudo systemctl restart'
alias ssst='sudo systemctl start'
alias sssp='sudo systemctl stop'

# streaming radio 
alias ktru='xplayer http://www.ktru.org/audiometa/listen4I128m3.m3u'
alias wmbr='mplayer -playlist http://wmbr.org/WMBR_live_128.m3u'

# git
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gca="git commit -am"
alias gcm="git commit -m"
alias gpom="git push origin master"
alias grv="git remote -v"
alias gb="git branch"

alias c="cd"
alias jn='jupyter notebook'
alias uu="sudo apt update; sudo apt dist-upgrade"
alias vs='vagrant ssh'
alias powershell='pwsh'

# rails
alias r="rails"
alias s="server"
alias g="generate"
alias t="test"

# docker
alias dpa="docker ps a"
alias dra="docker rm `docker ps -aq`"

HISTSIZE=100000
HISTFILESIZE=200000
