export MOZ_ENABLE_WAYLAND=1

export TERMINAL="kitty"
export TERM="xterm-256color"

export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export LANG="en_US.UTF-8"
export LC_COLLATE="C.UTF-8"

export GPG_TTY=$(tty)
export SUDO_PROMPT="> password: "

export ZEIT_DB="$HOME/.local/share/zeit/db"

export BROWSER="librewolf"

export VISUAL="nvim"
export EDITOR="nvim"

export GOPATH=$HOME/.local/go
export SCIKIT_LEARN_DATA=$HOME/.scikit_learn
export PYTHONPATH="$PYTHONPATH:$HOME/code/:$HOME/.pyenv/"

# arduino pahts
export ARDUINO_LIB=$HOME/Arduino/libraries/
export ARDUINO_PKG=$HOME/.arduino15/packages/

# rustup shell setup
. $HOME/.cargo/env

# python
alias venv="source .venv/bin/activate"

# pyenv setup
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# conda setup
__conda_setup="$('$HOME/.local/share/anaconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/.local/share/anaconda/etc/profile.d/conda.sh" ]; then
        . "$HOME/.local/share/anaconda/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/.local/share/anaconda/bin:$PATH"
    fi
fi
unset __conda_setup
