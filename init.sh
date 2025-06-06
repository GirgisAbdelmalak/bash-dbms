#!/usr/bin/bash

scriptFilesLocation="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ -d "$scriptFilesLocation/DB" ]]; then
    cd "$scriptFilesLocation/DB"
else
    mkdir "$scriptFilesLocation/DB"
    cd "$scriptFilesLocation/DB"
fi

source "$scriptFilesLocation/main.sh"
