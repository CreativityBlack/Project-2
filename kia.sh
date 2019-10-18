#!/bin/sh -x

# Which Product
# Standard || Transforamtion || Engineering Change
# Preload || Activation

# WHen will this start? - 30, 20, 10, now
# What is the Target bundle

main_menu () {
    echo "-------------------MENU---------------------"
    printf "\n"
    echo "Please choose a category"
    printf "\n"
    cat templates/products.txt
    printf "\n"
    printf "\n"
    read -p "Enter choice: " choice

    x=$(grep -w "$choice" templates/products.txt | awk -F '.' '{print $2}' | sed 's/^[ ]//g')
}

subProducts () {
    printf "\n"
    echo "---------------SUB-MENU---------------------"
    awk "BEGIN{RS=ORS="\n\n";FS=OFS="\n"}/$x/" templates/subProductDetails.txt;
    
    # code below will output everything except matching line
    # awk "BEGIN{RS=ORS="\n\n";FS=OFS="\n"}/$x/" templates/subProductDetails.txt | grep -v "$x";
    printf "\n"
    printf "\n"
    read -p "Enter choice: " schoice

    y=$(grep -w "$schoice" templates/subProductDetails.txt | head -1 | awk -F '.' '{print $2}' | sed 's/^[ ]//g')
    echo $y
}

main_menu
subProducts