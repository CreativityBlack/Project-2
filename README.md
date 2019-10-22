# Project-2
Bash script 
This project is to create a program to edit email Template and make it ready to send. 



sed -i 's/original/new/g' file.txt

Explanation:

    sed = Stream Editor
    -i = in-place (i.e. save back to the original file)

    The command string:
        s = the substitute command
        original = a regular expression describing the word to replace (or just the word itself)
        new = the text to replace it with
        g = global (i.e. replace all and not just the first occurrence)

    file.txt = the file name
    
  I will send you the Template by email 
    
    
----------------------------------------------------------------------------------------------------------------
* Currently this project is only has templates available for `Confirmation Emails`.

Please run `bash kia.sh` to start the program choose `1` for Menu and `Any provided # for Sub-Menu`.
