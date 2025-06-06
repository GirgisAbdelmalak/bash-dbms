#! /usr/bin/bash
current_directory=$PWD
if [[ -d $current_directory/DB ]]
then 
    cd $current_directory/DB
else 
    mkdir $current_directory/DB
    cd $current_directory/DB
fi
source main.sh