#!/bin/bash
(
  flock 200

  killall -q polybar

  while pgrep -u $UID -x polybar > /dev/null; do sleep 0.5; done

  outputs=$(xrandr --query | egrep  " connected (primary )?[0-9]{4}" | cut -d" " -f1)
  tray_output=eDP

  for m in $outputs; do
    if [[ $m == "DisplayPort-2" || $m == "DisplayPort-3" ]]; then
        tray_output=$m
    fi
  done

  for m in $outputs; do
    export MONITOR=$m
    export TRAY_POSITION=none
    if [[ $m == $tray_output ]]; then
      TRAY_POSITION=right
    fi

    polybar --reload alexbar </dev/null >/var/tmp/polybar-$m-hucka.log 2>&1 200>&- &
    disown
  done
) 200>/var/tmp/polybar-launch-hucka.lock
