tableMenu=("Create table" "List all tables" "Drop table" "Insert into table" "Select from table" "Delete from table" "Update table" "Exit")
operationFlag=true
while [[ operationFlag -eq true ]];
do
    echo "Choose a table operation:"
    select option in "${tableMenu[@]}"
    do
        case $option in
            "Create table")
                source $scriptFilesLocation/table/createTable.sh
                ;;
            "List all tables")
                source $scriptFilesLocation/table/listAllTables.sh
                ;;
            "Drop table")
                source $scriptFilesLocation/table/dropTable.sh
                ;;
            "Insert into table")
                source $scriptFilesLocation/table/insertIntoTable.sh
                ;;
            "Select from table")
                source $scriptFilesLocation/table/selectFromTable.sh
                ;;
            "Delete from table")
                source $scriptFilesLocation/table/deleteFromTable.sh
                ;;
            "Update table")
                source $scriptFilesLocation/table/updateTableData.sh
                ;;
            "Exit")
                echo "Leaving database '$dbName'..."
                exit 0
                ;;
            *)
                echo "Invalid option. Try again."
                ;;
        esac
    done
done
