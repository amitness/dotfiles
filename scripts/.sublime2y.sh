#!/bin/bash
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession; 
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand  "cd $1"  >/dev/null 2>&1 &
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand  "clear" 
qdbus org.kde.yakuake /yakuake/window toggleWindowState; 

