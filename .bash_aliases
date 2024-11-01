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
alias dpa="docker ps -a"
alias dpqa="docker ps -qa"
alias dr="docker rm" 
alias ds="docker stop" 
#alias dra='docker rm "$(docker ps -aq)"'

# kubernetes
alias kgp="kubectl get pods"
alias kgd="kubectl get deployments"
alias kl="kubectl logs"

HISTSIZE=100000
HISTFILESIZE=200000
alias memfree="free -k | grep Mem | awk -F' ' '{ print $4 }'"

alias icanhaz="sudo apt-get install"
# infinite history
if [[ $- = *i* ]]; then [[ -d ~/.logs ]] || mkdir ~/.logs; PROMPT_COMMAND='echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log'; fi

alias ap="ansible-playbook -vvvv"
alias mkx="chmod +x"
alias nn="netstat -nat"
alias nng="netstat -nat | grep"
alias hg="history | grep"

alias nocom="grep -v '^$\|^\s*\#'"

# kubernetes
alias k='kubectl'
alias kpfa='kubectl port-forward service/argocd-server -n argocd 8080:443'
alias kce='k exec -it $(k get pods -n rps | grep kconnect) -n rps -- bash'
alias kpfg='kubectl port-forward pod/$(kubectl get pods -n monitoring| grep -o "^[^ ]*" | grep grafana) -n monitoring 3000:3000'

