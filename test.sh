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

#Create a while loop to add the ics extra strings into icsImages and loop through until user type done
set icsImages = " "
icsArray=()
while [ "$icsImages" != "done" ]
    do
    #input and read the extra images
    echo "•	Any other ICS image(s) that will need to be re-installed after the code is updated"
    read icsImages
    #echo "$icsImages"
    #checks to see if the user hasnt inputed done
    if [ "$icsImages" != "done" ]
    then
    #adds the string to the array
        icsArray+=( "$icsImages" )
    fi
    #echo ${icsArray[*]}
 done
#echo "$icsImages"
echo ${icsArray[*]}

#product type of DS8K
if [ "$productName" == "DS8K" ]
then
echo "DS8K"
    # Standard type of load
    if [ "$loadName" == "standard" ]
    then
    echo "standard"
        #standard preload type
        if [ "$preloadActivation" == "preload" ] 
        then
        echo "preload"
            #finds the place in the text and creates a newletter with the text
            #find_replace () {
            sed -n '336,354p' Templates.txt > newletter.txt

            #Replaces the specif string for type/model/serial number and adds extra ics names
            sed "s/(2834-985-75#####)/$typemodserNumber/g; s/IBM Ticket:/IBM Ticket: $ticketNumber/g; s/PMR:/PMR: $pmrNumber/g; s/•	Any other ICS image(s) that will need to be re-installed after the code is updated/${icsArray[*]}/g" newletter.txt 
        #Standard activation
        elif [ "$preloadActivation" == "activation" ] 
        then
        echo "iam in activation"
            #finds the place in the text and creates a newletter with the text
            
            sed -n '336,354p' Templates.txt > newletter.txt


            #Replaces the specif string for type/model/serial number and ics names
            sed "s/(2834-985-75#####)/$typemodserNumber/g; s/IBM Ticket:/IBM Ticket: $ticketNumber/g; s/PMR:/PMR: $pmrNumber/g; s/•	Any other ICS image(s) that will need to be re-installed after the code is updated/${icsArray[*]}/g" newletter.txt 
        fi
    
    #transformation type of load
    elif [ "$loadName" == "transformation" ]
    then
    echo "i am in transformation"
        #transformation preload load
        if [ "$preloadActivation" == "preload" ] 
        then
        echo "hello in transf preload"
            #finds the place in the text and creates a newletter with the text
            sed -n '336,354p' Templates.txt > newletter.txt


            #Replaces the specif string for type/model/serial number and ics names
            sed "s/(2834-985-75#####)/$typemodserNumber/g; s/IBM Ticket:/IBM Ticket: $ticketNumber/g; s/PMR:/PMR: $pmrNumber/g; s/•	Any other ICS image(s) that will need to be re-installed after the code is updated/${icsArray[*]}/g" newletter.txt 
        
        #transfromation Activation load
        elif [ "$preloadActivation" == "activation" ] 
        then
        echo "hello in trans acti"
            #finds the place in the text and creates a newletter with the text
            sed -n '336,354p' Templates.txt > newletter.txt

            #Replaces the specif string for type/model/serial number and ics names
            sed "s/(2834-985-75#####)/$typemodserNumber/g; s/IBM Ticket:/IBM Ticket: $ticketNumber/g; s/PMR:/PMR: $pmrNumber/g; s/•	Any other ICS image(s) that will need to be re-installed after the code is updated/${icsArray[*]}/g" newletter.txt 
        fi
    fi

fi