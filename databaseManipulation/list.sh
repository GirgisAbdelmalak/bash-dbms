currentDirectory=$PWD
count=$(find $currentDirectory -mindepth 1 -maxdepth 1 -type d | wc -l)

if [[ $count -eq 0 ]]; then
    echo "No databases found."
else
    
    for db in "$currentDirectory"/*
    do
        if [[ -d $db ]]; then
            echo "$(basename "$db")"
        fi
    done
fi
