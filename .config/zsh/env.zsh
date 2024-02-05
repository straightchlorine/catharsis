path+=($HOME/.venv/lib)
path+=($HOME/.cache/yay/eww/target/release)
path+=($HOME/.local/share/language-servers/verible-bin)
path+=($HOME/.local/share/language-servers/arduino-cli/bin)
path+=($HOME/.local/share/language-servers/kotlin-language-server/server/build/install/server/bin)
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

export GROOVY_LANGUAGE_SERVER="$HOME/.local/share/language-servers/groovy-language-server/build/libs/groovy-language-server-all.jar"
export GRADLE_LANGUAGE_SERVER="$HOME/.local/share/language-servers/vscode-gradle/gradle-language-server/build/install/gradle-language-server/bin/gradle-language-server"

export JDTLS_ECLIPSE_EQUINOX_LAUNCHER_PLUGIN="/usr/share/java/jdtls/plugins/org.eclipse.equinox.launcher_1.6.500.v20230717-2134.jar"
export JDTLS_SYSTEM_CONFIGURATION="/usr/share/java/jdtls/config_linux"
export JDTLS_WORKSPACE="$HOME/.local/jdtls_workspaces"

export JAVA_DEBUG_PLUGIN="$HOME/.local/share/language-servers/java-debug/com.microsoft.java.debug.plugin/target"
export JAVA_TEST_RUNNER_PLUGIN="$HOME/.local/share/language-servers/vscode-java-test/server"
