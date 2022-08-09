# historu
HISTFILE="/home/jordan/.config/zsh/.histfile"
HISTSIZE=1000
SAVEHIST=1000

setopt autocd
bindkey -v
zstyle :compinstall filename '/home/jordan/.config/zsh/.zshrc'

autoload -Uz compinit
compinit

PROMPT=' %F{39}%2~%f %F{76}%#%f '

# alias
alias cat=bat
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
