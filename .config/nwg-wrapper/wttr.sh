#!/usr/bin/env bash

locale=Ann+Arbor
todo=$(cat /home/omk/Documents/todo.txt)
wttr2=$(curl wttr.in/"$locale"?format="%C+%t++%f\n")
wttr3=$(curl wttr.in/"$locale"?format="++%w+++%P\n")
wttr4=$(curl wttr.in/"$locale"?format="懲+%h++爫+%p\n")

echo '<span size="20000" foreground="#ccc" face="monospace">'$locale''
echo '</span><span size="25000" foreground="#ccc">'$wttr2'</span><span size="20000" foreground="#ccc">'
echo $wttr3'</span><span size="18000" foreground="#ccc">'
echo $wttr4'</span><span size="12000" foreground="#ccc">'
echo "$todo"'</span>'
