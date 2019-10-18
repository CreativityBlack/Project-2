#!/bin/bash
#!/bin/ksh

echo "Which Product? "
read productName

echo "Which type of Load? "
read loadName

echo "What is the Machine Type-Model-Serial"
read typemodserNumber

echo "What is the Machine Ticket"
read ticketNumber

echo "What is the Machine PMR"
read pmrNumber

echo "Preload or Activation"
read preloadActivation

set icsImages = " "
icsArray=()
while [ "$icsImages" != "done" ]
do
echo "Other ICS Images"
read icsImages
echo "$icsImages"
icsArray+=( "$icsImages" )
echo ${icsArray[*]}
#set -A icsArray ${array[*]} $icsImages 



done 
echo "$icsImages"

#product type of DS8K
if [ "$productName" == "DS8K" ]
then
echo "DS8K"
    # Standard type of load
    if [ "$loadName" == "standard" ]
    then
    echo "standard"
        #preload type
        if [ "$preloadActivation" == "preload" ] 
        then
        echo "preload"
            #finds the place in the text and creates a newletter with the text
            #find_replace () {
            sed -n '336,354p' Templates.txt > newletter.txt
            sed "s/(2834-985-75#####)/$typemodserNumber/g; s/IBM Ticket:/IBM Ticket: $ticketNumber/g; s/PMR:/PMR: $pmrNumber/g" newletter.txt 
          #at newletter.txt
           # }
        #find_replace
        fi
        #activation type
        if [ "$preloadActication" == "activation" ] 
        then
        echo "iam in activation"
            #finds the place in the text and creates a newletter with the text
            
            sed -n '336,354p' Templates.txt > newletter.txt
            sed "s/(2834-985-75#####)/$typemodserNumber/g; s/IBM Ticket:/IBM Ticket: $ticketNumber/g; s/PMR:/PMR: $pmrNumber/g" newletter.txt            }
        fi
    fi
    #transformation type of load
    if [ "$loadName" == "transformation" ]
    then
        #preload load
        if [ "$preloadActivation" == "preload" ] 
        then
            #finds the place in the text and creates a newletter with the text
            sed -n '336,354p' Templates.txt > newletter.txt
            sed "s/(2834-985-75#####)/$typemodserNumber/g; s/IBM Ticket:/IBM Ticket: $ticketNumber/g; s/PMR:/PMR: $pmrNumber/g" newletter.txt
        fi
        #Activation load
        if [ "$preloadActication" == "activation" ] 
        then
            #finds the place in the text and creates a newletter with the text
            sed -n '336,354p' Templates.txt > newletter.txt
            sed "s/(2834-985-75#####)/$typemodserNumber/g; s/IBM Ticket:/IBM Ticket: $ticketNumber/g; s/PMR:/PMR: $pmrNumber/g" newletter.txt
        fi
    fi

fi