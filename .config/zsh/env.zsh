path+=($HOME/automation)
path+=($HOME/.venv/lib)
export PATH

export TERMINAL="kitty"
export TERM="xterm-256color"

export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
export STARSHIP_CACHE=$HOME/.config/starship/cache

export SUDO_PROMPT="password: "

export BROWSER="firefox"
export VISUAL="nvim"
export EDITOR="nvim"

# commit sign prompt
export GPG_TTY=$(tty)

# aliases
alias vim="nvim"

alias ls='exa -al --color=always --group-directories-first'
alias ll='exa -l --color=always --group-directories-first'
alias sl='exa -l --color=always --group-directories-first'

alias gitlog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"

# rustup shell setup
. $HOME/.cargo/env
