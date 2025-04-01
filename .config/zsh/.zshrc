source $ZDOTDIR/env.zsh

# autojump setup
[[ -s "$HOME/.autojump/etc/profile.d/autojump.sh" ]] && \
  source "$HOME/.autojump/etc/profile.d/autojump.sh"

export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
ZSH_THEME="random"

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
  gcloud
  genpass
  git-lfs
  git-prompt
  git
  gradle
  helm
  heroku
  zsh-history-substring-search
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

# fzf configs
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --preview 'bat --color=always {}'"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"

# completions:
fpath+=~/.zfunc
autoload -Uz compinit && compinit -u

export LANG=en_PL.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export ARCHFLAGS="-arch $(uname -m)"

HISTFILE=$HOME/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000

# vim mode
bindkey -v
