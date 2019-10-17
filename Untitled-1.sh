#!/bin/bash

catdoc -a Email.doc

echo "Which Product? "
read productName

echo "What is the Machine Type"
read machineAType

echo "What is the Machine Model"
read modelNumber

echo "What is the Machine Serial"
read serialNumber

echo "What is the Machine Ticket"
read ticketNumber

echo "What is the Machine PMR"
read pmrNumber


 echo "Preload or Activation"
read preloadActivation
   

#DS8K Product
if ("$productName" == DS8K) [

    echo "What type of Load?"
read typeofLoad



    if ("$typeofLoad" == standard) [



     if ("$preloadActivation" == preload) [

#need to copy the email and change the email by putting in all the typ, model, serial, ibm ticket, pmr


        ]
    else 
     if("$preloadActivation" == activation) [

        ]
    then 
        fi
    ]
else 
    if ("$typeofLoad" == transformation) [



     if ("$preloadActivation" == preload) [






#need to copy the email and change the email by putting in all the typ, model, serial, ibm ticket, pmr
        ]
     else 
    if("$preloadActivation" == Activation) [


        ]
    then 
       fi
    ]
    then 
fi

]
    
