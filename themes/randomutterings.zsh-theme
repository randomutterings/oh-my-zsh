PROMPT='%n@%m:${PWD/#$HOME/~} %{$fg_bold[red]%}➜ %{$fg[blue]%}$(git_prompt_info) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[blue]%})"

function battery_charge {
    echo `batcharge.py` 2>/dev/null
}

RPROMPT='$(battery_charge) %t%{$reset_color%}'