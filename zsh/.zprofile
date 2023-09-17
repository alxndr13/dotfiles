export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export GOPATH="/home/hucka/go/"
export PATH="/home/hucka/.local/bin/:$PATH"
export BROWSER="chromium.desktop"


export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=wayland
export XDG_CURRENT_DESKTOP="sway"
export XDG_SESSION_DESKTOP="sway"
export WLR_NO_HARDWARE_CURSORS=1
export GTK_THEME="Catppuccin-Frappe-Standard-Sky-Dark"
# https://www.reddit.com/r/kde/comments/mqpuxk/comment/guka2e2/?utm_source=share&utm_medium=web2x&context=3
#export GTK_USE_PORTAL=1
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec sway --debug --verbose >> /var/log/sway-hucka.log
fi
