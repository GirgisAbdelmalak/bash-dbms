#!/usr/bin/bash
currentDirectory=$PWD
scriptFilesLocation="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ -d "$currentDirectory/DB" ]]; then
    cd "$currentDirectory/DB"
else
    mkdir "$currentDirectory/DB"
    cd "$currentDirectory/DB"
fi

source "$scriptFilesLocation/main.sh"
