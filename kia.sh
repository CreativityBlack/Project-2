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

    # x=$(grep -w "$choice" templates/products.txt | awk -F '.' '{print $2}' | sed 's/^[ ]//g')
}

subProducts () {
    printf "\n"
    echo "---------------SUB-MENU---------------------"

    case $choice in
    1)
        file=confirmationEmails.txt
        cat templates/subProducts/confirmationEmails.txt;;
    2) 
        file=engineeringChanges.txt
        cat templates/subProducts/engineeringChanges.txt;;
    3)
        file=DS8KStandard.txt
        cat templates/subProducts/DS8KStandard.txt;;
    4)
        file=DS8KTransformation.txt
        cat templates/subProducts/DS8KTransformation.txt;;
    5)
        file=hydraProduct.txt
        cat templates/subProducts/hydraProduct.txt;;
    6)
        file=A9000Product.txt
        cat templates/subProducts/A9000Product.txt;;
    7)
        file=FS9100Product.txt
        cat templates/subProducts/FS9100Product.txt;;
    esac
    # awk "BEGIN{RS=ORS="\n\n";FS=OFS="\n"}/$x/" templates/subProductDetails.txt;
    # echo $text
    # code below will output everything except matching line
    # awk "BEGIN{RS=ORS="\n\n";FS=OFS="\n"}/$x/" templates/subProductDetails.txt | grep -v "$x";
    printf "\n"
    read -p "Enter choice: " schoice
}

emailTemplate () {
    printf "/n"
    echo "------------------EMAIL---------------------" 

    emailName=$(grep -w "$schoice" templates/subProducts/$file | head -1 | awk -F '.' '{print $2}' | sed 's/^[ ]//g')
    echo $emailName
}

main_menu
subProducts
emailTemplate