#!/bin/bash
echo -n "" > email.html

DS8KStandardConfirmation () {

    echo "Please enter the following:"
    read -p "Clients Name: " clientName

    read -p "CSP Case #: " cspCase

    echo "
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>EMAIL TEMPLATE</title>
</head>
<body>
Dear $clientName,

Thank you for requesting an appointment for DS8000 Remote Code Load.

Your service booking using ticket number $cspCase has been confirmed with the details below.
An RCL engineer will contact you before any activity

Please review the additional information prior to any DS8880 code update CDA_8880_CUS_INFO_v5.22.pdf
If you have any questions or need to reschedule, please call us at 1-800-IBM-SERV(426-7378), DAC code #91650 or reply to this email.

Note! If the machine is running CSM embedded on the HMC, you will need to perform a takeover from the standby server prior to pre-load and activation RCL activities to ensure that access is maintained.
If CSM is running from a stand-alone server, this notice does not apply.

You can follow the steps found at https://ibm.biz/BdzbcQ on how to perform a takeover.
</body>
</html>
" >> email.html
}



# Need to retrieve outside variables
# Pseudo for Logic
# case $choice in
#     1)
#         case $schoice in
#             1)
#                 DS8kStandardConfirmation;;
#             2)
#                 TapeConfirmation;;
#             3) 
#                 A9KConfirmation;;
#             4)
#                 FlashConfirmation;;
#         2)
#         esac
# esac

DS8KStandardConfirmation
cat email.html