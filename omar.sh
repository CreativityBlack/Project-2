#!/bin/bash

# main menu function - displays the categories available.
main_menu () {
echo "-------------------MENU---------------------"
printf "\n"
echo "Please choose a category"
printf "\n"
echo "1 - DS8000 Standard"
printf "\n"
read -p "Enter choice: " choice

case $choice in
    1)
        ds8kstandard;;
esac
}

# ds8kstandard function - displays the various templates available.
ds8kstandard () {
echo "-------------DS8000 Standard-----------------"
printf "\n"
echo "Please choose a template"
printf "\n"
echo "1 - Health Check only starting"
printf "\n"
read -p "Enter choice: " schoice

case $schoice in
    1)
        ;;
esac

}

# copies seleted template from file and makes new file with selected text.
find_replace () {
sed -n '336,354p' Templates.txt > newletter.txt
#$sed 's/unix/linux/' newletter.txt

}

main_menu
#find_replace

