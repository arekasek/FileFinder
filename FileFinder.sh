#!/bin/bash

while true; 
 do
    echo "Select the type of element to search for:"
    echo "1. File"
    echo "2. Directory"
    read -p "Choice (1 or 2): " choice

    if [ "$choice" -eq 1 ];
    then
        filter="-type f"
        break
    elif [ "$choice" -eq 2 ];
    then
        filter="-type d"
        break
    else
        echo "Invalid choice. Select 1 or 2"
    fi
done

while true; 
 do
    read -p "Enter the path to the location where you want to search: " location

    if [ ! -d "$location" ];
    then
        echo "The specified location does not exist"
    else
        break
    fi
done

if [ ! -r "$location" ];
then
    echo "You do not have permissions for this location"
    exit 1
fi

validateDate() {
    local date="$1"
    date -d "$date" "+%Y-%m-%d" &> /dev/null
    if [ $? -ne 0 ]; 
    then
        echo "Invalid date format: $date"
        exit 1
    fi

    dateP=$(date -d "$date" "+%Y-%m-%d")
    if [ "$date" != "$dateP" ];
    then
        echo "Invalid date: $date"
        exit 1
    fi
}

read -p "Enter the start date (format YYYY-MM-DD): " start_date
validateDate "$start_date"

read -p "Enter the end date (format YYYY-MM-DD): " end_date
validateDate "$end_date"

if [[ "$end_date" < "$start_date" ]];
then
    echo "The end date must be later than the start date"
    exit 1
fi

echo "Search results:"
find "$location" $filter -newermt "$start_date" ! -newermt "$end_date" -exec stat --format='%Y :%y %n' {} \; | sort -n | cut -d: -f2-
exit 0
