PROMPT="%(?:%{$fg_bold[blue]%}%* :%{$fg_bold[blue]%}%* )"
PROMPT+="%{$fg[white]%}%n%{$fg[white]%}@%{$fg[white]%}%m%{$reset_color%}"
PROMPT+=' %{$fg_bold[blue]%}%~%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}\uE0A0 %{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[white]%}>"
ZSH_THEME_GIT_PROMPT_CLEAN=""
