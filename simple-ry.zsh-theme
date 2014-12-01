PROMPT='%{$bg[default]$fg[magenta]%}%~%{$bg[default]$fg[red]%}$(git_prompt_info)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"

# show vim mode on right side of term
function zle-line-init zle-keymap-select {
VIM_NORMAL_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
RPROMPT="${${KEYMAP/vicmd/$VIM_NORMAL_PROMPT}/(main|viins)/}"
zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
