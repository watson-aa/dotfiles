# Random session indicator emoji
SESSIND=(☠ ☕ ⚡ ⚰ ☢ ☘ ☔ ⚓ 😀 😈 😎 😡 😱 😸 😾 🙈 🙉 🙊 ✨ 🚀 🚌 🚑 🚒 🚓 🚕 🚗 🚙 🚚 🚬 🚲 🚶 🚽 🛀 🆘 🆙 ⌛ ⏰ ⚽ ⛄ ⛅ ⛔ ⛵ ⛺ ⭐ ⭕ 🌀 🌂 🌄 🌅 🌈 🌊 🌏 🌙 🌛 🌱 🌵 🌷 🌸 🌻 🌽 🌿 🍁 🍄 🍃 🍅 🍆 🍇 🍉 🍊 🍌 🍍 🍏 🍒 🍔 🍕 🍗 🍤 🍦 🍩 🍪 🍰 🍴 🍸 🍺 🎨 🎭 🎯 🎲 🎷 🎸 🎺 🎻 🏀 🏁 🏆 🏈 🏠 🐌 🐍 🐎 🐑 🐒 🐔 🐗 🐘 🐙 🐛 🐝 🐞 🐟 🐢 🐥 🐨 🐫 🐬 🐯 🐰 🐳 🐴 🐵 🐶 🐷 🐸 🐻 🐼 🐽 👀 👊 👑 👓 👹 👻 👽 💀 💊 💎 💣 💦 💩 💰 💸 💾 📌 📎 📡 📺 🔔 🔥 🔨 🔱 🔴 🔵 🔶 🔷 🚦 🚴 🐀 🐄 🐇 🐋 🐓 🐖 🔆 )
export ICON="${SESSIND[$RANDOM % ${#SESSIND[@]}]}"

# Autoload zsh add-zsh-hook and vcs_info functions (-U autoload w/o substition, -z use zsh style)
autoload -Uz add-zsh-hook vcs_info
# Enable substitution in the prompt.
setopt prompt_subst
# Run vcs_info just before a prompt is displayed (precmd)
add-zsh-hook precmd vcs_info
# add ${vcs_info_msg_0} to the prompt
# e.g. here we add the Git information in red  
PROMPT='$ICON %1~ %F{red}${vcs_info_msg_0_}%f %# '

# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
# Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

#export JAVA_HOME=/opt/jdk/sapmachine-jdk-19.jdk/Contents/Home
#export PATH="/opt/jdk/sapmachine-jdk-11.0.16.1.jdk/Contents/Home/bin:$PATH"
export PATH="/Applications/STMicroelectronics/STM32Cube/STM32CubeProgrammer/STM32CubeProgrammer.app/Contents/MacOs/bin/:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/opt/homebrew/opt/tcl-tk/bin:$PATH"

export PATH="$HOMEBREW_PREFIX/opt/grep/libexec/gnubin:$PATH"

export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export DOCKER_HOST=tcp://docker-machine.local:2375
