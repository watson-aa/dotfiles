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
PROMPT='$ICON %F{green}%1~ %F{red}${vcs_info_msg_0_}%f %F{green}%# '

# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
# Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

# MacOS color
export CLICOLOR=1
export LSCOLORS=cxfxexdxbxegedabagacad

# Android stuff
export ANDROID_HOME='/Users/aaron.watson/Library/Android/sdk'
export ANDROID_SDK_ROOT='/Users/aaron.watson/Library/Android/sdk'
export JAVA_HOME='/Users/aaron.watson/Library/Developer/Android/jdk/jdk-21'

# Pyenv initialization
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

