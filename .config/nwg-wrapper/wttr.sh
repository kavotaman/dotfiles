#!/usr/bin/env bash

todo=$(cat /home/omk/Documents/todo.txt)
wttr2=$(curl wttr.in/43402?format="%C+%t++%f\n")
wttr3=$(curl wttr.in/43402?format="++%w+++%P\n")
wttr4=$(curl wttr.in/43402?format="懲+%h++爫+%p\n")

echo '<span size="25000" foreground="#ccc">'$wttr2'</span><span size="20000" foreground="#ccc">'
echo $wttr3'</span><span size="18000" foreground="#ccc">'
echo $wttr4'</span><span size="12000" foreground="#ccc">'
echo "$todo"'</span>'
