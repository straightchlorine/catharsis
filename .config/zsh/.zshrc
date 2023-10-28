autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

source $ZDOTDIR/plugins.zsh
source $ZDOTDIR/env.zsh

# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 2 numeric
zstyle :compinstall filename '$HOME/.zshrc'

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

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=$HOME/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

# vim mode
bindkey -v

# please completion
source <(plz --completion_script)
