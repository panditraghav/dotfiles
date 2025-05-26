#!/bin/fish

function ov
  cd "$(fd "" -t d -d 2 ~/Code | fzf)" && nvim
end
