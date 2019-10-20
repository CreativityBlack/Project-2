#!/bin/sh -x

# --------------------------PERSONAL NOTES----------------------------------------------------
# --------------------------------------------------------------------------------------------
# Command Below: retrieves just the text next to the choice chosen by user
# x=$(grep -w "$choice" templates/products.txt | awk -F '.' '{print $2}' | sed 's/^[ ]//g')
# Command below: gets the whole paragraph that it matches to until new line
# awk "BEGIN{RS=ORS="\n\n";FS=OFS="\n"}/$x/" templates/subProductDetails.txt;
# code below will output everything except matching line
# awk "BEGIN{RS=ORS="\n\n";FS=OFS="\n"}/$x/" templates/subProductDetails.txt | grep -v "$x";
# --------------------------------------------------------------------------------------------
# --------------------------------------------------------------------------------------------

# Asks users to chose a main products
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

# Based on users first choice, will ask user to pick specific email templates
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

    x=$(grep -w "$choice" templates/products.txt | awk -F '.' '{print $2}' | sed 's/^[ ]//g')
    cat templates/subProducts/$file
    printf "\n"
    read -p "Enter choice: " schoice
    printf "\n"
}

emailTemplateQuestions () {
    echo "---------------QUESTIONS--------------------"
    
    export choice
    export schoice
    . ./templates/questions.sh
}

# Will output email template according
emailTemplate () {
    echo "------------------EMAIL---------------------" 

    # emailName=$(grep -w "$schoice" templates/subProducts/$file | head -1 | awk -F '.' '{print $2}' | sed 's/^[ ]//g')
    # sed -n "/$emailName/,/@/p" Templates.txt | grep -v "@" | grep -v "$emailName"

    
}

# Calling function names
main_menu
subProducts
emailTemplate