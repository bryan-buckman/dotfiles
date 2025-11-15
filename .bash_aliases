## Shell Aliases
alias blkid_="blkid -o list"
alias cat='bat'
alias chown='chown -v --preserve-root'
alias chmod='chmod -v --preserve-root'
alias chgrp='chgrp --preserve-root'
alias chmox="chmod +x --preserve-root"
alias cp='cp -iv'
alias df='df -h'
alias diff='delta'
alias du='du -ch'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ln='ln -iv'
alias ls='eza'
alias mount='mount |column -t'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ping='grc ping'
alias vmstat='vmstat -w'
alias wget='wget -c'

## Directory Aliases

alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## Git Aliases

alias ga='git add'
alias gaa='git add --all'
alias gap='git add --patch'
alias gbr='git branch'
alias gbra='git branch --all'
alias gc='git commit -m'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log --oneline --decorate --graph'
alias gll='git log --oneline'
alias glast='git log -1 HEAD --stat'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gpl='git pull'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias gst='git stash'
alias gstp='git stash pop'

## Miscellaneous Aliases


alias aliases="bat $HOME/.bash_aliases"
alias buu="brew update && brew upgrade"
alias changedfiles="find . -type f -print0 | xargs -0 stat --format '%Z :%z %n' | sort -nr | cut -d: -f2- | head -n 20"
alias cpv="rsync -ah --info=progress2 --no-inc-recursive --stats"
alias csv='column -s, -t' 
alias dcla="docker container ls -a"
alias dlf="docker logs -f --tail 1000"
alias dtail='dmesg|tail'
alias ff="rg --files --hidden --glob '!.git' | fzf --preview 'bat --style=numbers --color=always --line-range :200 {}'"
alias fs="stat -f \'%z bytes\'"
alias fx='firefox --new-instance --profile $(mktemp -d)'
alias ifconfig='grc ifconfig'
alias ipaddr="ip -c a | sed -e 's/\// \//g'"
alias joke='command wget -U "curl/7.55.1" -o /dev/null -qO - https://icanhazdadjoke.com || printf "No jokes today"; echo'
alias lsblkid="lsblk -o name,label,fstype,size,uuid --noheadings"
alias lsd="ls -lF | grep '^d'"
alias lsf="ls -alF --classify --group-directories-first"
alias myip='curl ipinfo.io/ip'
alias nsg='sudo netstat -vatunpe | grep -i $1'
alias path="echo -e ${PATH//:/\\n}"
alias ports='sudo netstat -vatunpe'
alias psg='sudo grc ps -ef | grep -v grep | grep -i $1'
alias rcopy="rsync -av --progress -h"
alias rmove="rsync -av --progress -h --remove-source-files"
alias rupdate="rsync -avu --progress -h"
alias rsynchronize="rsync -avu --delete --progress -h"
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias untar='tar -zxvf'

## Vagrant Aliases
alias vag='vagrant'
alias vagbox='vagrant box'
alias vagboxadd='vagrant box add'
alias vagboxlist='vagrant box list'
alias vagboxremove='vagrant box remove'
alias vagboxupdate='vagrant box update'
alias vagdestroy='vagrant destroy'
alias vaghalt='vagrant halt'
alias vagprovision='vagrant provision'
alias vagresume='vagrant resume'
alias vagssh='vagrant ssh'
alias vagstatus='vagrant status'
alias vagsuspend='vagrant suspend'
alias vagtop='vagrant top'
alias vagvalidate='vagrant validate'
alias vagversion='vagrant version'
alias vagup='vagrant up'

## TCPdump aliases

alias dumppwd="sudo tcpdump port http or port ftp or port smtp or port imap or port pop3 or port telnet -lA | egrep -i -B5 'pass=|pwd=|log=|login=|user=|username=|pw=|passw=|passwd=|password=|pass:|user:|username:|password:|login:|pass |user '"
alias dumpuseragent="sudo tcpdump -vvAls0 | grep 'User-Agent:'"
alias dumpgetreq="sudo tcpdump -vvAls0 | grep 'GET'"


