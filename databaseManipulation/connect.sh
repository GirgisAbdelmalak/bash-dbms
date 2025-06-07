#! /usr/bin/bash

databases=()
for db in */; do
    [[ -d "$db" ]] && databases+=("${db%/}")
done

if [[ ${#databases[@]} -eq 0 ]]; then
    echo "No databases found."
    exit 1
fi

echo "Select a database to connect to:"
select dbName in "${databases[@]}"; do
    if [[ -n "$dbName" ]]
    then
        cd "$dbName" 
        break
    else
        echo "Invalid selection. Please try again."
    fi
done

source $scriptFilesLocation/tableMenu.sh