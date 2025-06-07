#!/usr/bin/bash


while true; do
    read -p "Enter the name of the database: " dbName

    if [[ ! "$dbName" =~ ^[a-zA-Z_][a-zA-Z0-9_]*$ ]]; then
        echo "Invalid database name. Must start with a letter or underscore and contain only letters, numbers, or underscores."
        continue
    fi

    if [[ -d "$dbName" ]]; then
        echo "This database already exists."
        continue
    fi

    mkdir "$dbName"
    echo "Database '$dbName' created successfully."
    break
done
