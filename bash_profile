
# added by Miniconda2 3.18.3 installer
export PATH="/Users/guacw5/miniconda2/bin:$PATH"

export NVM_DIR="/Users/guacw5/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

###-tns-completion-start-###
if [ -f /Users/guacw5/.tnsrc ]; then 
    source /Users/guacw5/.tnsrc 
fi
###-tns-completion-end-###

# https://github.com/jimeh/git-aware-prompt
SESSIND=(☠ ☕ ⚡ ⚰ ☢ ☘ ☔ ⚓ 😀 😈 😎 😡 😱 😸 😾 🙈 🙉 🙊 ✨ 🚀 🚌 🚑 🚒 🚓 🚕 🚗 🚙 🚚 🚬 🚲 🚶 🚽 🛀 🆘 🆙 ⌛ ⏰ ⚽ ⛄ ⛅ ⛔ ⛵ ⛺ ⭐ ⭕ 🌀 🌂 🌄 🌅 🌈 🌊 🌏 🌙 🌛 🌱 🌵 🌷 🌸 🌻 🌽 🌿 🍁 🍄 🍃 🍅 🍆 🍇 🍉 🍊 🍌 🍍 🍏 🍒 🍔 🍕 🍗 🍤 🍦 🍩 🍪 🍰 🍴 🍸 🍺 🎨 🎭 🎯 🎲 🎷 🎸 🎺 🎻 🏀 🏁 🏆 🏈 🏠 🐌 🐍 🐎 🐑 🐒 🐔 🐗 🐘 🐙 🐛 🐝 🐞 🐟 🐢 🐥 🐨 🐫 🐬 🐯 🐰 🐳 🐴 🐵 🐶 🐷 🐸 🐻 🐼 🐽 👀 👊 👑 👓 👹 👻 👽 💀 💊 💎 💣 💦 💩 💰 💸 💾 📌 📎 📡 📺 🔔 🔥 🔨 🔱 🔴 🔵 🔶 🔷 🚦 🚴 🐀 🐄 🐇 🐋 🐓 🐖 🔆 )

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="${SESSIND[$RANDOM % ${#SESSIND[@]}]}  \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] ➤ "
