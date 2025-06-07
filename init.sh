#!/usr/bin/bash
currentLocation=$PWD
scriptFilesLocation="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ -d "$currentLocation/DB" ]]; then
    cd "$currentLocation/DB"
else
    mkdir "$currentLocation/DB"
    cd "$currentLocation/DB"
fi

source "$scriptFilesLocation/main.sh"