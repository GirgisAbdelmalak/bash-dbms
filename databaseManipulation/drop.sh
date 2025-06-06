#!/usr/bin/bash

validate_db_name() {
    if [[ ! $1 =~ ^[a-zA-Z_][a-zA-Z0-9_]*$ ]]; then
        echo "Invalid database name. Must start with a letter or underscore and contain only letters, numbers, or underscores."
        return 1
    fi
    return 0
}

while true; do
    read -p "Enter the name of the database to drop: " db_name

    if ! validate_db_name "$db_name"; then
        continue
    fi

    if [[ -d "$db_name" ]]; then
        read -p "Are you sure you want to delete the database '$db_name'? This action cannot be undone! (y/n): " confirm
        if [[ $confirm == [Yy] ]]; then
            rm -r "$db_name"
            echo "Database '$db_name' deleted successfully."
        else
            echo "Deletion cancelled."
        fi
        break
    else
        echo "There is no database with this name."
    fi
done
