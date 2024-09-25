#!/usr/bin/env bash

pkill -f nwg-wrapper ; nwg-wrapper -s timezones.sh -r 1000 -c timezones.css -p right -a start -mr 50 -mt 50 -j right &
