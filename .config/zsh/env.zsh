path+=($HOME/.venv/lib)
path+=($HOME/.cache/yay/eww/target/release)
path+=($HOME/.local/bin)
path+=(/opt/flutter/bin)
export PATH

export TERMINAL="kitty"
export TERM="xterm-256color"

export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
export STARSHIP_CACHE=$HOME/.config/starship/cache

export SUDO_PROMPT="password: "

export BROWSER="firefox"
export VISUAL="nvim"
export EDITOR="nvim"

export GOPATH=$HOME/.local/go

# commit sign prompt
export GPG_TTY=$(tty)

# rustup shell setup
. $HOME/.cargo/env

# Following variables are utilised by neovim config in order to provide full
# support for development in Java. That involves language servers and debugging.
#
# If you do not need such functionality or you have your own configuration,
# feel free to remove all of the following lines after this comment.

# ~~ neovim java support auxiliary variables ~~

# Set it to the path where you have groovy-language-server-all.jar file.
# typically something like this:
# groovy-language-server/build/libs/groovy-language-server-all.jar"
export GROOVY_LANGUAGE_SERVER=""

# Set it to the path where you have gradle-language-server script.
# typically something like this: 
# ../vscode-gradle/gradle-language-server/build/install/gradle-language-server/bin/gradle-language-server
export GRADLE_LANGUAGE_SERVER=""

# For exact configuration, please refer to:
# https://github.com/mfussenegger/nvim-jdtls
export JDTLS_ECLIPSE_EQUINOX_LAUNCHER_PLUGIN=""
export JDTLS_SYSTEM_CONFIGURATION=""
export JDTLS_WORKSPACE=""

# Set to the path where you have downloaded java-debug plugin.
# typically something like this:
# ../java-debug/com.microsoft.java.debug.plugin/target
export JAVA_DEBUG_PLUGIN=""

# set to the path where you have downloaded vscode-java-test plugin.
# typically something like this:
# ../vscode-java-test/server
export JAVA_TEST_RUNNER_PLUGIN=""
