# https://github.com/jimeh/git-aware-prompt
SESSIND=(☠ ☕ ⚡ ⚰ ☢ ☘ ☔ ⚓ 😀 😈 😎 😡 😱 😸 😾 🙈 🙉 🙊 ✨ 🚀 🚌 🚑 🚒 🚓 🚕 🚗 🚙 🚚 🚬 🚲 🚶 🚽 🛀 🆘 🆙 ⌛ ⏰ ⚽ ⛄ ⛅ ⛔ ⛵ ⛺ ⭐ ⭕ 🌀 🌂 🌄 🌅 🌈 🌊 🌏 🌙 🌛 🌱 🌵 🌷 🌸 🌻 🌽 🌿 🍁 🍄 🍃 🍅 🍆 🍇 🍉 🍊 🍌 🍍 🍏 🍒 🍔 🍕 🍗 🍤 🍦 🍩 🍪 🍰 🍴 🍸 🍺 🎨 🎭 🎯 🎲 🎷 🎸 🎺 🎻 🏀 🏁 🏆 🏈 🏠 🐌 🐍 🐎 🐑 🐒 🐔 🐗 🐘 🐙 🐛 🐝 🐞 🐟 🐢 🐥 🐨 🐫 🐬 🐯 🐰 🐳 🐴 🐵 🐶 🐷 🐸 🐻 🐼 🐽 👀 👊 👑 👓 👹 👻 👽 💀 💊 💎 💣 💦 💩 💰 💸 💾 📌 📎 📡 📺 🔔 🔥 🔨 🔱 🔴 🔵 🔶 🔷 🚦 🚴 🐀 🐄 🐇 🐋 🐓 🐖 🔆 )

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export ICON="${SESSIND[$RANDOM % ${#SESSIND[@]}]}"
export PS1="$ICON  \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] ➤ "
echo -ne "\033]0;$ICON\007"

# hard clear 'cls' command
alias cls='printf "\33c\e[3J"'

# all your history are belong to us...
# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

export PYTHONPATH='/usr/local/Cellar/caffe/1.0_9/python/':$PYTHONPATH

