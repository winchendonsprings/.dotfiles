#vim_ins_mode="%{$fg[white]%}[INS]%{$reset_color%}"
#vim_cmd_mode="%{$fg[yellow]%}[CMD]%{$reset_color%}"
#vim_mode=$vim_ins_mode
#      
#function zle-keymap-select {
#           vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
#               zle reset-prompt
#  }
#zle -N zle-keymap-select
#       
#function zle-line-finish {
#           vim_mode=$vim_ins_mode
#  }
#zle -N zle-line-finish

function zle-line-init zle-keymap-select {
VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
#RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
zle reset-prompt
}

PROMPT='%{$fg[blue]%}%~%{$fg[red]%}$(git_prompt_info)%{$reset_color%}${vim_mode}${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$EPS1 '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"

zle -N zle-line-init
zle -N zle-keymap-select

