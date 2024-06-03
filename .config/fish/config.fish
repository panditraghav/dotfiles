if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vi=nvim
alias ls="exa --icons --git-ignore"
alias la="exa --all --long --header --icons"
alias lt="exa --long --header --tree --level=2 --icons --git-ignore"
alias lta="exa --all --long --header --tree --level=2 --icons"

abbr -a nm nmtui
abbr -a sn shutdown now
abbr -a im img2sixel
abbr -a gr grep
abbr -a ka killall
# Git
abbr -a gs git status
abbr -a ga git add
abbr -a gp git push origin main
abbr -a gc git commit -m

starship init fish | source
set fish_greeting ""

bind --erase \cd
# Emulates vim's cursor shape behavior
set -g fish_key_bindings fish_vi_key_bindings
# Set the normal and visual mode cursors to a block
set fish_cursor_default block
# Set the insert mode cursor to a line
set fish_cursor_insert line
# Set the replace mode cursors to an underscore
set fish_cursor_replace_one underscore
set fish_cursor_replace underscore
# Set the external cursor to a line. The external cursor appears when a command is started.
# The cursor shape takes the value of fish_cursor_default when fish_cursor_external is not specified.
set fish_cursor_external line
# The following variable can be used to configure cursor shape in
# visual mode, but due to fish_cursor_default, is redundant here
set fish_cursor_visual block
