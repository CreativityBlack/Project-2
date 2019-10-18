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
    #clear
}

subProducts () {
    printf "\n"
    echo "---------------SUB-MENU---------------------"
    printf "\n"
    # grep -A 4 "$x" templates/subProductDetails.txt
    # cat templates/subProductDetails.txt
    # echo $x
    # perl -00 -ne "print if /^$x\.\s+/" templates/subProductDetails.txt;
    perl -00 -ne "print if /^$x\.\s+/" templates/subProductDetails.txt;
    echo hello
}

main_menu
subProducts