#!/bin/bash

if [[ -z $(sed -n '/Launcher/p' ~/.config/tint2/tint2rc) && -f ~/.config/tint2/launcherrc ]]; then
sed -n '4,$ p' ~/.config/tint2/launcherrc >> ~/.config/tint2/tint2rc
fi

if [ "$(pidof tint2)" ]; then
    killall tint2
    tint2 &
    exit
else
    tint2 &
    exit
fi
