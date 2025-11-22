export HISTFILE="$HOME/.config/zsh/.histfile"
export HISTSIZE=50000
export SAVEHIST=50000
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY

source $ZDOTDIR/paths.zsh
source $ZDOTDIR/env.zsh
source $ZDOTDIR/keys.zsh
source $ZDOTDIR/dev.zsh
source $ZDOTDIR/aliases.zsh

# autojump setup
[[ -s "$HOME/.autojump/etc/profile.d/autojump.sh" ]] && \
  source "$HOME/.autojump/etc/profile.d/autojump.sh"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gallois"
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 14
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  alias-finder
  aliases
  ansible
  archlinux
  arduino-cli
  autojump
  aws
  azure
  bazel
  bgnotify
  branch
  catimg
  colored-man-pages
  colorize
  command-not-found
  conda
  conda-env
  copybuffer
  copyfile
  copypath
  dbt
  dnote
  docker-compose
  docker
  dotenv
  encode64
  eza
  fasd
  fzf
  fzf-tab
  gcloud
  genpass
  git-lfs
  git-prompt
  git
  gradle
  helm
  heroku
  jira
  k9s
  kitty
  kubectl
  pip
  rust
  safe-paste
  scala
  sudo
  terraform
  tailscale
  systemd
  tmux
  vi-mode
  vscode
  virtualenv
  zoxide
)

source $ZSH/oh-my-zsh.sh

# fzf-tab configuration (MUST come after oh-my-zsh.sh)
zstyle ':fzf-tab:*' fzf-flags --height=40% --layout=reverse --border

# disable preview for commands, keep it for files/directories
zstyle ':fzf-tab:complete:*:*' fzf-preview 'bat --color=always $realpath 2>/dev/null || eza -1 --color=always $realpath 2>/dev/null'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:complete:kill:argument-rest' fzf-preview 'ps --pid=$word -o cmd --no-headers -w -w'
zstyle ':fzf-tab:*' switch-group '<' '>'

# fzf general configs
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:wrap"

# enable fzf key bindings (Ctrl+R for history search)
source /usr/share/fzf/key-bindings.zsh

bindkey -v
bindkey '^R' fzf-history-widget

# completion styling
setopt AUTO_LIST
setopt AUTO_MENU
setopt NO_LIST_BEEP

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

unalias gg
