[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
dwmblocks &
feh --bg-fill ~/dotfiles/wallpapers/Herbstlandschaft.jpg
dunst &
exec ~/scripts/startdwm
#exec i3
