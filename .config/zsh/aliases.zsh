# --- general ---
alias vim="nvim"
alias hibernate="systemctl hibernate"
alias mkdir="mkdir -p"
alias cp="cp -i"
alias rm="rm -i"
alias cd="z"
alias rzsh="source $HOME/.config/zsh/.zshrc"
alias nsnetwork="sudo ss -tup"

alias immich="immich-go"

nivtime() {
    local n="${1:-75}"
    local dir="/data/vault/backup/music/ripped/NIV"
    local total=0 count=0 dur
    for f in "$dir"/*.mp3; do
        [[ $((++count)) -gt $n ]] && break
        dur=$(ffprobe -v error -show_entries format=duration -of csv=p=0 "$f")
        total=$(awk -v t="$total" -v d="$dur" 'BEGIN{print t+d}')
    done
    awk -v s="$total" -v n="$n" 'BEGIN{
      printf "Files: %d\nTotal: %.0fs (%.1fm) = %dh%02dm\n", n, s, s/60, int(s/3600), int((s%3600)/60)
    }'
}

# --- file system ---
alias ls='eza -al --color=always --group-directories-first'
alias ll='eza -l --color=always --group-directories-first'
alias sl='eza -l --color=always --group-directories-first'
alias tree='eza -T --color=always'

# --- python ---
alias venv="source .venv/bin/activate"

# --- git ---
alias glo="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
alias gcl="git clone --depth=1"
alias gs="git status --short --branch"
alias ga="git add"
alias gaa="git add -A"
alias grs="git restore --staged ."
alias gd="git diff"
alias gds="git diff --staged"
alias gd1="git diff HEAD~1"
alias gcm="git commit -m"
alias gca="git commit --amend --no-edit"
alias gp="git push"
alias gpl="git pull"
alias gsw="git switch"
alias gswc="git switch -c"
alias gre="git restore"
alias gb="git branch"
alias grb="git rebase"
alias gme="git merge"
alias gtag="git tag"
alias gwt="git worktree"
alias gpd="git log --oneline @{u}..HEAD"

# --- docker ---
alias drm="docker container rm"
alias drun="docker container run"
alias dlsa="docker container ls -a"
alias dls="docker container ls"
alias drunt="docker container run -it"
alias dstart="docker container start"
alias dstartt="docker container start -ai"
alias dstop="docker container stop"
alias dexec="docker container exec -it"
alias dnls="docker network ls"
alias dstat="docker stats --no-stream --format 'table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.NetIO}}'"
alias dstatw="docker stats --format 'table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.NetIO}}'"
alias dprune="docker system prune -f"
alias dcl="docker compose logs"

alias dsc="docker service create"
alias dsrm="docker service rm"
alias dsu="docker service update"
alias dsls="docker service ls"
alias dsps="docker service ps"

alias dcdu="docker compose down && docker compose up"
alias dcdru="docker compose down && docker compose build && docker compose up"
alias dcu="docker compose up -d"
alias dcd="docker compose down"

# --- arduino ---
alias acli="arduino-cli"
alias aclis="arduino-cli sketch new"
alias aclic="arduino-cli compile"
alias acliu="arduino-cli upload"
alias aclibl="arduino-cli board list"
alias aclill="arduino-cli lib list"
alias aclili="arduino-cli lib install"
alias aclils="arduino-cli lib search"
alias aclinodemcu="arduino-cli board attach -b esp8266:esp8266:nodemcu -p"

# --- kubernetes ---
alias k="kubectl"
alias kg="kubectl get"
alias kgp="kubectl get pods"
alias kga="kubectl get all"
alias kgn="kubectl get namespaces"
alias kd="kubectl describe"
alias kdp="kubectl describe pod"
alias kl="kubectl logs"
alias klf="kubectl logs -f"
alias ke="kubectl exec -it"
alias kns="kubectl config set-context --current --namespace"
alias kctx="kubectl config current-context"
alias kaf="kubectl apply -f"
alias kdf="kubectl delete -f"
alias ktp="kubectl top pods"
alias ktn="kubectl top nodes"

# --- sealed secrets ---
alias kseal="kubeseal --cert=\$HOME/code/fleet/.sealed-secrets-cert.pem -o yaml"
alias kseal-secret='f() { kubectl create secret generic "$1" --namespace="$2" --dry-run=client -o yaml "${@:3}" | kseal; }; f'
alias kseal-literal='f() { kubectl create secret generic "$1" --namespace="$2" --from-literal="$3"="$4" --dry-run=client -o yaml | kseal; }; f'
alias kseal-file='f() { kubectl create secret generic "$1" --namespace="$2" --from-file="$3" --dry-run=client -o yaml | kseal; }; f'

# --- restic ---
# define <NAME>_RESTIC_REPOSITORY and <NAME>_RESTIC_PASSWORD_FILE per device
# (e.g. AUTOMATION_*, DNS_*, MUSIC_*, STATION_*) in keys.zsh, then:
#   switch-restic dns    # sets RESTIC_REPOSITORY/RESTIC_PASSWORD_FILE
#   switch-restic        # lists available profiles and the current one
switch-restic() {
    if [[ -z "$1" ]]; then
        print "current:"
        print "  RESTIC_REPOSITORY=${RESTIC_REPOSITORY:-<unset>}"
        print "  RESTIC_PASSWORD_FILE=${RESTIC_PASSWORD_FILE:-<unset>}"
        print "available:"
        local v
        for v in ${(k)parameters}; do
            [[ "$v" == *_RESTIC_REPOSITORY ]] && print "  ${(L)v%_RESTIC_REPOSITORY}"
        done
        return 0
    fi
    local name="${(U)1}"
    local repo_var="${name}_RESTIC_REPOSITORY"
    local pwd_var="${name}_RESTIC_PASSWORD_FILE"
    if [[ -z "${(P)repo_var}" ]]; then
        print "no ${repo_var} defined" >&2
        return 1
    fi
    if [[ -z "${(P)pwd_var}" ]]; then
        print "no ${pwd_var} defined" >&2
        return 1
    fi
    export RESTIC_REPOSITORY="${(P)repo_var}"
    export RESTIC_PASSWORD_FILE="${(P)pwd_var}"
    print "restic: ${(L)name} -> $RESTIC_REPOSITORY"
}

# --- printing ---
alias lph="lp -o media=A4 -o quality=high -o color"

# --- matlab ---
alias mlab="_JAVA_AWT_WM_NONREPARENTING=1 QT_QPA_PLATFORM=xcb matlab"

# --- latex ---
alias tlmgr="tlmgr --usermode"

# --- arch ---
if [[ -f /etc/arch-release ]]; then
    alias pac="sudo pacman -S"
    alias pacu="sudo pacman -Syu"
    alias pacr="sudo pacman -Rns"
    alias pacq="pacman -Qs"
    alias pacs="pacman -Ss"
    alias mirrors="sudo reflector -c poland -c germany -l 20 -p https --age 12 --sort rate --save /etc/pacman.d/mirrorlist"
fi

# --- gentoo ---
if [[ -f /etc/gentoo-release ]]; then
    alias conn_tailscale="sudo rc-service tailscale start && sudo tailscale up --accept-routes"
    alias disconn_tailscale="sudo tailscale down && sudo rc-service tailscale stop"
    alias gupd='sudo emaint --auto sync && sudo emerge --ask --update --deep --newuse --backtrack=100 @world'
    alias gpreb='sudo emerge --ask @preserved-rebuild'
    alias gcfg='sudo dispatch-conf'
    alias gup='sudo emerge --ask --depclean && sudo eclean-dist --deep'
    alias gseq='echo "1. gupd  2. gpreb (if needed)  3. perl-cleaner/python-updater (if needed)  4. gcfg  5. gup"'
    alias prog='genlop -c'
    alias glog='genlop -l | tail -20'
    alias gnews='eselect news read'
    alias gone='sudo emerge --ask --oneshot'
fi
