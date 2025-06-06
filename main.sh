databaseManipulation=("Create Database" "Drop Database" "List Databases" "Connect to Database" "Exit")
select var in "${databaseManipulation[@]}"; do
    case $var in
        "Create Database")
            ;;
        "Drop Database")
            ;;
        "List Databases")
            ;;
        "Connect to Database")
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