############################
# WELCOME
############################

# Logos from fastfetch
fastfetch # --logo-color-1 blue --logo-color-2 red --logo-type small --logo-padding-left 1 --logo-padding-top 1 --structure none

# Kata sambutan
#printf '\n Welcome to ArchLinux!' | figlet -f term | lolcat

############################
# BASIC SETTINGS
############################

# Bahasa & editor
export LANG=en_US.UTF-8
export EDITOR=nano

# Path
export PATH="$HOME/bin:/usr/local/bin:$PATH"

############################
# HISTORY CONFIGURATION
############################

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY          # history tidak tertimpa
setopt HIST_IGNORE_DUPS        # hilangkan duplikat
setopt HIST_IGNORE_SPACE       # command diawali spasi tidak disimpan
setopt HIST_REDUCE_BLANKS      # hapus spasi berlebih
setopt INC_APPEND_HISTORY      # simpan history langsung

############################
# COMPLETION SYSTEM
############################

autoload -Uz compinit
compinit

# Completion behavior
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' verbose yes

############################
# PROMPT
############################

autoload -Uz colors
colors

# Prompt format
PROMPT=$'\n %F{red}❯%F{blue}❯ %f'

# Prompt kanan (optional)
RPROMPT='%F{red}[%F{blue} %~ %F{red}]%f'

############################
# ALIASES
############################

alias ls='ls --color=auto'
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias ..='cd ..'
alias ...='cd ../..'

alias rm='trash-put'

alias flashdisk='cd /run/media/$USER'

############################
# SAFETY & QUALITY OF LIFE
############################

setopt CORRECT                 # koreksi typo command
setopt NO_BEEP                 # matikan beep

############################
# PERFORMANCE
############################

unsetopt PROMPT_SP             # prompt lebih cepat

