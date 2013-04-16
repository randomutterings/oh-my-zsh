PROMPT='%{$fg_bold[blue]%}%n%{$fg_bold[yellow]%}@%{$fg_bold[blue]%}%m:%{$fg[cyan]%}${PWD/#$HOME/~} %{$fg_bold[red]%}➜ %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

function battery_charge {
    echo `batcharge.py` 2>/dev/null
}

RPROMPT='$(battery_charge)'