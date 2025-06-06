scriptFilesLocation="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
databaseManipulation=("Create Database" "Drop Database" "List Databases" "Connect to Database" "Exit")
select var in "${databaseManipulation[@]}"; do
    case $var in
        "Create Database")
            source $scriptFilesLocation/databaseManipulation/create.sh
            ;;
        "Drop Database")
            source $scriptFilesLocation/databaseManipulation/drop.sh
            ;;
        "List Databases")
            source $scriptFilesLocation/databaseManipulation/list.sh
            ;;
        "Connect to Database")
            source $scriptFilesLocation/databaseManipulation/connect.sh
            ;;
        "Exit")
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done