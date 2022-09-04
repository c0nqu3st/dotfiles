HISTFILE="~/.config/zsh/.histfile"
HISTSIZE=1000
SAVEHIST=1000

setopt autocd
bindkey -v

autoload -Uz compinit
compinit

PROMPT=' %F{39}%2~%f %F{76}%#%f '

alias ls='ls --color=auto'
alias vim=nvim

function osc7 {
    local LC_ALL=C
    export LC_ALL

    setopt localoptions extendedglob
    input=( ${(s::)PWD} )
    uri=${(j::)input/(#b)([^A-Za-z0-9_.\!~*\'\(\)-\/])/%${(l:2::0:)$(([##16]#match))}}
    print -n "\e]7;file://${HOSTNAME}${uri}\e\\"
}

autoload -Uz add-zsh-hook
add-zsh-hook -Uz chpwd osc7
