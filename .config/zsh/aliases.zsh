alias mlab="_JAVA_AWT_WM_NONREPARENTING=1 QT_QPA_PLATFORM=xcb matlab"

# general
alias vim="nvim"
alias hibernate="systemctl hibernate"
alias lph="lp -o media=A4 -o quality=high -o color"
alias tlmgr="tlmgr --usermode"
alias mkdir="mkdir -p"
alias cp="cp -i"
alias rm="rm -i"
alias cd="z"

alias mirrors="sudo reflector -c poland -c germany -l 20 -p https --age 12 --sort rate --save /etc/pacman.d/mirrorlist"

# file system
alias ls='eza -al --color=always --group-directories-first'
alias ll='eza -l --color=always --group-directories-first'
alias sl='eza -l --color=always --group-directories-first'
alias tree='eza -T --color=always'

# git
alias gitlog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
alias rzsh="source $HOME/.config/zsh/.zshrc"
alias gs="git status"
alias gca="git commit --amend --no-edit"
alias gcm="git commit -m"

# docker
alias drm="docker container rm"
alias drun="docker container run"
alias dlsa="docker container ls -a"
alias dls="docker container ls"
alias drunt="docker container run -it"
alias dstart="docker container start"
alias dstartt="docker container start -ai"
alias dexec="docker container exec -it"
alias dnls="docker network ls"

alias dsc="docker service create"
alias dsrm="docker service rm"
alias dsu="docker service update"
alias dsls="docker service ls"
alias dsps="docker service ps"

alias dcdu="docker compose down && docker compose up"
alias dcdru="docker compose down && docker compose build && dockercompose up"
alias dcu="docker compose up"
alias dcd="docker compose down"

# arduino
alias acli="arduino-cli"
alias aclis="arduino-cli sketch new"
alias aclic="arduino-cli compile"
alias acliu="arduino-cli upload"
alias aclibl="arduino-cli board list"
alias aclill="arduino-cli lib list"
alias aclili="arduino-cli lib install"
alias aclils="arduino-cli lib search"
alias aclinodemcu="arduino-cli board attach -b esp8266:esp8266:nodemcu -p"
