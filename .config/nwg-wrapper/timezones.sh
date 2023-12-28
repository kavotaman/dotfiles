#!/usr/bin/env bash

# Some countries below have more than one time zone,
# and it makes sense to use cities instead of countries.
# Use tzselect to find their time zones.

time=$(TZ='America/Chicago' date +'%H:%M:%S')
echo '<span size="25000" foreground="#f2ee00" face="monospace" weight="bold">Memphis '$time'</span>'

echo '<span size="large" face="monospace" foreground="#ccc">'
time=$(TZ='Australia/Brisbane' date +"%H:%M")
echo 'To              <b>'$time'</b>'

time=$(TZ='Europe/Rome' date +"%H:%M")
echo 'Ri	<b>'$time'</b>'

time=$(TZ='America/Sao_Paulo' date +"%H:%M")
echo 'Sao Paulo	<b>'$time'</b>'

time=$(TZ='Europe/London' date +"%H:%M")
echo 'London	<b>'$time'</b>'
echo '</span>'
