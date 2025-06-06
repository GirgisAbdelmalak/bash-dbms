databaseManipulation=("Create Database" "Drop Database" "List Databases" "Connect to Database" "Exit")
select var in "${databaseManipulation[@]}"; do
    case $var in
        "Create Database")
            source databseManipulation/create.sh
            ;;
        "Drop Database")
            source databseManipulation/create.sh
            ;;
        "List Databases")
            source databseManipulation/list.sh
            ;;
        "Connect to Database")
            source databseManipulation/connect.sh
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