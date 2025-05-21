[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
dwmblocks &
feh --bg-scale ~/dotfiles/wallpapers/Herbstlandschaft.jpg &
exec ~/scripts/startdwm
#exec i3
