# Import colorsheme from wal
(cat ~/.cache/wal/sequences &)

# Path to your oh-my-zsh installation.
export ZSH="/home/aadil/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="mortalscumbag"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

plugins=(
	git
	zsh-autosuggestions
	colored-man-pages
)

source $ZSH/oh-my-zsh.sh


# Compilation flags
export ARCHFLAGS="-arch x86_64"

alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias i3config="$EDITOR ~/.config/i3/config"
alias polybarconfig="$EDITOR  ~/.config/polybar/config"
alias picomconf="$EDITOR ~/.config/picom/picom.conf"
alias dotfiles="~/Work/Programming/dotfiles"
alias code=vscodium

alias codedir="~/Work/Programming"
alias repodir="~/Work/Repos"

alias lock="i3lock -c 000000 && systemctl suspend"

export TERM=xterm-256color
