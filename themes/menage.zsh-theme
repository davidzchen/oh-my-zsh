# ------------------------------------------------------------------------------
#          FILE:  kphoen.zsh-theme
#   DESCRIPTION:  oh-my-zsh theme file.
#        AUTHOR:  Kévin Gomez (geek63@gmail.com)
#       VERSION:  1.0.0
#    SCREENSHOT:
# ------------------------------------------------------------------------------


if [[ "$TERM" != "dumb" ]] && [[ "$DISABLE_LS_COLORS" != "true" ]]; then
    PROMPT='[%{$fg_bold[yellow]%}%n@%m%{$reset_color%}:%{$fg_bold[blue]%}%~%{$reset_color%}$(git_prompt_info)]
%# '

    ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg_bold[green]%}"
    ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_DIRTY=""
    ZSH_THEME_GIT_PROMPT_CLEAN=""

    # display exitcode on the right when >0
    return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"

    RPROMPT='${return_code}$(git_prompt_status)%{$reset_color%}'

    ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%} ✚"
    ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[blue]%} ✹"
    ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%} ✖"
    ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[magenta]%} ➜"
    ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[yellow]%} ═"
    ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[cyan]%} ✭"
else
    PROMPT='[%n@%m:%~$(git_prompt_info)]
%# '

    ZSH_THEME_GIT_PROMPT_PREFIX=" on"
    ZSH_THEME_GIT_PROMPT_SUFFIX=""
    ZSH_THEME_GIT_PROMPT_DIRTY=""
    ZSH_THEME_GIT_PROMPT_CLEAN=""

    # display exitcode on the right when >0
    return_code="%(?..%? ↵)"

    RPROMPT='${return_code}$(git_prompt_status)'

    ZSH_THEME_GIT_PROMPT_ADDED=" ✚"
    ZSH_THEME_GIT_PROMPT_MODIFIED=" ✹"
    ZSH_THEME_GIT_PROMPT_DELETED=" ✖"
    ZSH_THEME_GIT_PROMPT_RENAMED=" ➜"
    ZSH_THEME_GIT_PROMPT_UNMERGED=" ═"
    ZSH_THEME_GIT_PROMPT_UNTRACKED=" ✭"
fi
