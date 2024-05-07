# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc
export PATH=$PATH:$HOME/.spicetify
alias pkhex="WINEPREFIX=~/Games/Prefixes/PKHex/ DOTNET_ROOT=\"C:\Program Files\dotnet\" DOTNET_BUNDLE_EXTRACT_BASE_DIR=\"Z:\home\auri\Games\PKHex\\dotnet_bundle_extract\" ~/.local/share/lutris/runners/wine/wine-ge-8-22-x86_64/bin/wine ~/Games/PKHex/PKHeX.exe"
alias mcserver="cd ~/Games/MCServer/Server/ && ./start.sh"
alias ytmp3="yt-dlp -x --audio-format mp3 "
eval "$(thefuck --alias)"
. "$HOME/.cargo/env"
