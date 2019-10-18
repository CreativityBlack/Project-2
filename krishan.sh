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
if [ "$productName" == DS8K ] 

    echo "What type of Load?"
read typeofLoad

then

    if [ "$typeofLoad" == standard ] 

    then 
        

     if [ "$preloadActivation" == preload ] 
then
#need to copy the email and change the email by putting in all the typ, model, serial, ibm ticket, pmr
# copies seleted template from file and makes new file with selected text.
find_replace () {
sed -n '336,354p' Templates.txt > newletter.txt
#$sed 's/unix/linux/' newletter.txt

        
     
     if[ "$preloadActivation" == activation ] 
    
        
     
       
    
 
    if [ "$typeofLoad" == transformation ] 
    then 
        


     if [ "$preloadActivation" == preload ]  

    then    
        




#need to copy the email and change the email by putting in all the typ, model, serial, ibm ticket, pmr
        
      
    if[ "$preloadActivation" == Activation ] 


     
        fi
    
fi