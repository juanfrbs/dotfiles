# Created by newuser for 5.9

setopt autocd              # change directory just by typing its name
#setopt correct            # auto correct mistakes
setopt interactivecomments # allow comments in interactive mode
setopt magicequalsubst     # enable filename expansion for arguments of the form ‘anything=expression’
setopt nonomatch           # hide error message if there is no match for the pattern
setopt notify              # report the status of background jobs immediately
setopt numericglobsort     # sort filenames numerically when it makes sense
setopt promptsubst         # enable command substitution in prompt

WORDCHARS=${WORDCHARS//\/} # Don't consider certain characters part of the word

# enable completion features
autoload -Uz compinit
compinit -d ~/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' rehash true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# History configurations
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
#setopt share_history         # share command history data

# force zsh to show the complete history
alias history="history 0"

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# zathura function
zathurapdf ()
{
	file=$1
	zathura $file &> /dev/null & disown
}

# bat
alias bat=batcat
export BAT_THEME="ansi"

# upgrade
alias upgrade='sudo apt update && sudo apt upgrade -y'

# brightness
alias brightup='sudo brightnessctl -d "intel_backlight" set 60%'

# power
alias performance='sudo powerprofilesctl set performance'
alias balanced='sudo powerprofilesctl set balanced'

eval "$(starship init zsh)"

eval "$(/home/<USER>/.local/bin/mise activate zsh)"
export PATH="/home/<USER>/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/<USER>/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

. ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
. ~/.zsh/artisan.plugin.zsh
