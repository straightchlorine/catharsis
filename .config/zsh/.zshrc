source $ZDOTDIR/paths.zsh
source $ZDOTDIR/env.zsh
source $ZDOTDIR/keys.zsh
source $ZDOTDIR/dev.zsh
source $ZDOTDIR/aliases.zsh

# autojump setup
[[ -s "$HOME/.autojump/etc/profile.d/autojump.sh" ]] && \
  source "$HOME/.autojump/etc/profile.d/autojump.sh"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

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
<<<<<<< HEAD
  fzf
=======
  fzf-tab
>>>>>>> 989a9ae (feat(config): basic one split)
  gcloud
  genpass
  git-lfs
  git-prompt
  git
  gradle
  helm
  heroku
<<<<<<< HEAD
  zsh-history-substring-search
=======
>>>>>>> 989a9ae (feat(config): basic one split)
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

<<<<<<< HEAD
# fzf configs
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --preview 'bat --color=always {}'"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"

=======
>>>>>>> 989a9ae (feat(config): basic one split)
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
<<<<<<< HEAD
=======

eval "$(zoxide init zsh)"

# completion to use a single column
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-separator ''

# displays as a single vertical list
zstyle ':completion:*' menu select
zstyle ':completion:*' single-column yes
zstyle ':completion:*' format '%d'
zstyle ':completion:*' group-name ''

# reduce the number of columns to 1
export LISTMAX=1
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --preview 'bat --color=always {}'"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

unalias gg
>>>>>>> 989a9ae (feat(config): basic one split)
