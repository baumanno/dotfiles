_LUNA_PROMPT="%{%{$fg[green]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg[red]%}%~%{$reset_color%}%} "


precmd_functions=("${precmd_update_git_vars:|precmd_functions}")
chpwd_functions=("${chpwd_update_git_vars:|chpwd_functions}")

PROMPT=$'\n'$_LUNA_PROMPT$' \n$ '
