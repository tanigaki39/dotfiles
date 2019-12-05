# alias
alias l 'ls'

# function
function reload
  source ~/.config/fish/config.fish
end

function cd
  builtin cd $argv; and ls
end

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

# appearance
set -g theme_display_date no
set -g theme_color_scheme dracula
