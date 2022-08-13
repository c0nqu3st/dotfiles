# historu
HISTFILE="/home/jordan/.config/zsh/.histfile"
HISTSIZE=1000
SAVEHIST=1000

autoload -Uz add-zsh-hook

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

#OSC-7 esacpe sequence
function osc7 {
    local LC_ALL=C
    export LC_ALL

    setopt localoptions extendedglob
    input=( ${(s::)PWD} )
    uri=${(j::)input/(#b)([^A-Za-z0-9_.\!~*\'\(\)-\/])/%${(l:2::0:)$(([##16]#match))}}
    print -n "\e]7;file://${HOSTNAME}${uri}\e\\"
}
add-zsh-hook -Uz chpwd osc7
