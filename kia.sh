#!/bin/sh -x

# Which Product
# Standard || Transforamtion || Engineering Change
# Preload || Activation

# WHen will this start? - 30, 20, 10, now
# What is the Target bundle

# --------------------------------------------------------------------------------------------
# Command Below: retrieves just the text next to the choice chosen by user
# x=$(grep -w "$choice" templates/products.txt | awk -F '.' '{print $2}' | sed 's/^[ ]//g')
# Command below: gets the whole paragraph that it matches to until new line
# awk "BEGIN{RS=ORS="\n\n";FS=OFS="\n"}/$x/" templates/subProductDetails.txt;
# code below will output everything except matching line
# awk "BEGIN{RS=ORS="\n\n";FS=OFS="\n"}/$x/" templates/subProductDetails.txt | grep -v "$x";
# --------------------------------------------------------------------------------------------

main_menu () {
    echo "-------------------MENU---------------------"
    printf "\n"
    echo "Please choose a category"
    printf "\n"
    cat templates/products.txt
    printf "\n"
    printf "\n"
    read -p "Enter choice: " choice
}

subProducts () {
    printf "\n"
    echo "---------------SUB-MENU---------------------"

    printf "\n"
    case $choice in
    1)
        file=confirmationEmails.txt;;
    2) 
        file=engineeringChanges.txt;;
    3)
        file=DS8KStandard.txt;;
    4)
        file=DS8KTransformation.txt;;
    5)
        file=hydraProduct.txt;;
    6)
        file=A9000Product.txt;;
    7)
        file=FS9100Product.txt;;
    esac
    cat templates/subProducts/$file
    printf "\n"
    read -p "Enter choice: " schoice
    printf "\n"
}

emailTemplate () {
    echo "------------------EMAIL---------------------" 

    emailName=$(grep -w "$schoice" templates/subProducts/$file | head -1 | awk -F '.' '{print $2}' | sed 's/^[ ]//g')
    sed -n "/$emailName/,/@/p" Templates.txt | grep -v "@" | grep -v "$emailName"
}

main_menu
subProducts
emailTemplate