#!/usr/bin/env bash

#time=$(LC_ALL=C TZ='America/Chicago' date +'%A, %d. %B')
#todo=$(cat /home/omk/Documents/todo.txt)
wttr=$(curl https://wttr.in/?format="%C+%t++%f\n")
echo '<span size="35000" foreground="#ccc">'$time'</span><span size="30000" foreground="#ccc">'
echo $wttr'</span>' #<span size="20000" foreground="#ccc">'
#echo $todo'</span>'
cat /home/omk/Documents/todo.txt
