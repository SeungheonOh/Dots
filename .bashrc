# Begin ~/.bashrc
# Personal aliases and functions.

# ----------------------------------------------------- #
# System wide variables/startups => /etc/profile
# System wide aliases/functions => /etc/bashrc
# Personal variables/startups =>  ~/.bashrc
# Personal aliases/functions => ~/.bashrc
# ----------------------------------------------------- #

# Source
if [ -f "/etc/bashrc" ] ; then
	source /etc/bashrc
fi

source ~/.aliases
source ~/.cargo/env

pathappend ~/Scripts
pathappend /usr/local/go/bin:/$GOPATH/bin

# Prompt
declare -a prompts=("λ" "$" "±" "Δ")

get_prompt_char() {
	echo ${prompts[(($RANDOM % ${#prompts[@]}))]}
}
export PS1='\[\e[1;32m\]$(get_prompt_char)\[\e[0m\] ( \W ) '

# Envs
export GOPATH=$HOME/go
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export EDITOR=v
export DEFAULT_TERM=st

# XRDM Envs
export XRDM_UPDATE=Y
export XRDM_DIR=~/.Xresource.d
export XRDM_FONT_DIR=$XRDM_DIR/fonts
export XRDM_COLOR_DIR=$XRDM_DIR/colors
export XRDM_PRESET_DIR=$XRDM_DIR/presets
export XRDM_PROGRAM_DIR=$XRDM_DIR/programs

source xrdm
# End ~/.bashrc
