[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vi=nvim
alias vim=nvim

export EDITOR=nvim

export GIT_EDITOR=nvim

set -o vi

if [[ -f "/usr/lib/git-core/git-sh-prompt" ]]; then
    source /usr/lib/git-core/git-sh-prompt
    GIT_PS1_SHOWDIRTYSTATE="yes"
    GIT_PS1_SHOWCOLORHINTS="yes"
    PROMPT_COMMAND='__git_ps1 "\W" "\\\$ "'
fi
