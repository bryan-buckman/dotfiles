cds() {
    cd $1 && ls -lah
}
extract() {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2)   tar xvjf "$1"    ;;
            *.tar.gz)    tar xvzf "$1"    ;;
            *.bz2)       bunzip2 "$1"     ;;
            *.rar)       unrar x "$1"     ;;
            *.gz)        gunzip "$1"      ;;
            *.tar)       tar xvf "$1"     ;;
            *.tbz2)      tar xvjf "$1"    ;;
            *.tgz)       tar xvzf "$1"    ;;
            *.zip)       unzip "$1"       ;;
            *.Z)         uncompress "$1"  ;;
            *.7z)        7z x "$1"        ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
man() {
       env \
                LESS_TERMCAP_mb="$(printf '\e[1;31m')" \
                LESS_TERMCAP_md="$(printf '\e[1;31m')" \
                LESS_TERMCAP_me="$(printf '\e[0m')" \
                LESS_TERMCAP_se="$(printf '\e[0m')" \
                LESS_TERMCAP_so="$(printf '\e[1;44;33m')" \
                LESS_TERMCAP_ue="$(printf '\e[0m')" \
                LESS_TERMCAP_us="$(printf '\e[1;32m')" \
                man "$@"
}
certchain() {
if [[ "$#" -ne 1 ]]; then
          echo "Usage: ${FUNCNAME} <ip|domain[:port]>"
          return 1
      fi

      local host_port="$1"

      if [[ "$1" != *:* ]]; then
          local host_port="${1}:443"
      fi

      openssl s_client -connect "${host_port}" </dev/null 2>/dev/null | grep -E '\ (s|i):'
  }

cheat()  {
    curl cht.sh/$1
    }
mkcd() {
    mkdir -p "$1" && cd "$1"
}
newest() {
    find . -type f \( ! -regex '.*/\..*' \) -print0 | xargs -0 stat -c "%Y:%n" | sort -n | tail -n "${1:-5}" | cut -d ':' -f2-
}
qfind () {  
    find . -exec grep -l -s $1 {} \;  return 0
    }
sshasap() {
	until nc -vzw 2 $1 22 > /dev/null 2>&1; do sleep 1; done	
	ssh -X $1;
}
up () {
        local tmp_path=''
        for i in $(seq 1 ${1:-1})
        do
            tmp_path+='../'
        done
        cd "$tmp_path"
    }
weather() {
    curl wttr.in/$1
    }