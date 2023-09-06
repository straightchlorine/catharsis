autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

source $ZDOTDIR/plugins.zsh
source $ZDOTDIR/env.zsh

# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 2 numeric
zstyle :compinstall filename '/home/goldberg/.zshrc'

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

# vim mode
bindkey -v
