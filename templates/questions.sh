#!/bin/bash
$choice=$1 
$schoice=$2 
echo -n "" > email.html
cat email.html

echo ""
echo "Please enter the following:"

DS8KStandardConfirmation () {
    read -p "Client Name: " clientName
    read -p "CSP Case #: " cspCase

    echo "
<html>
<head>
	<title></title>
	<link href='https://svc.webspellchecker.net/spellcheck31/lf/scayt3/ckscayt/css/wsc.css" rel="stylesheet' type='text/css' />
</head>
<body aria-readonly='false'>Dear <strong>$clientName,</strong><br />
&nbsp;<br />
Thank you for requesting an appointment for DS8000 Remote Code Load.<br />
&nbsp;<br />
Your service booking using ticket number <strong>$cspCase</strong> has been confirmed with the details below.<br />
An RCL engineer will contact you before any activity.<br />
&nbsp;<br />
Please review the additional information prior to any DS8880 code update <a href='https://www-01.ibm.com/support/docview.wss?uid=ibm10737923&amp;aid=1'>CDA_8880_CUS_INFO_v5.22.pdf</a><br />
&nbsp;<br />
If you have any questions or need to reschedule, please call us at <span style='color:#0000FF'><strong>1-800-IBM-SERV(426-7378), DAC code #91650</strong></span> or reply to this email.<br />
<br />
<span style='color:#FF0000'><strong>Note!</strong> </span><strong><span style='color:#FF0000'>If the machine is running CSM embedded on the HMC, you will need to perform a takeover from the standby server prior to pre-load and activation RCL activities to ensure that access is maintained. 
<br />
If CSM is running from a stand-alone server, this notice does not apply. You can follow the steps found at</span> </strong><a href='https://ibm.biz/BdzbcQ'><strong>https://ibm.biz/BdzbcQ</strong></a><strong> <span style='color:#FF0000'>on how to perform a takeover.</span></strong><br />
&nbsp;</body>
</html>
" >> email.html
}

TapeConfirmation () {
    read -p "Client Name: " clientName
    read -p "CSP Case #: " cspCase

    echo "
<html>
<head>
	<title></title>
	<link href='https://svc.webspellchecker.net/spellcheck31/lf/scayt3/ckscayt/css/wsc.css' rel='stylesheet' type='text/css' />
</head>
<body aria-readonly='false'><span style='font-family:arial,helvetica,sans-serif'>Dear <strong>$clientName</strong>,<br />
&nbsp;<br />
Thank you for requesting an appointment for Tape Remote Code Load.<br />
&nbsp;<br />
Your service booking using ticket number <strong>$cspCase</strong> has been confirmed with the details below.<br />
&nbsp;<br />
An RCL engineer will contact you before any activity. If you have any questions or need to reschedule, please call us at <span style='color:#0000FF'><strong>1-800-IBM-SERV(426-7378)</strong></span><strong>,</strong><span style='color:#0000FF'><strong> DAC code #91650</strong></span> or reply to this email.<br />
&nbsp;<br />
<span style='color:#FF0000'><strong>Please note! PRIOR TO BEGINNING OF THE CODE UPGRADE PROCEDURE, YOU MUST STOP ALL ACTIVITY TO THE CLUSTER. IF THE CLUSTER IS PART OF A GRID, YOU MUST PLACE IT INTO SERVICE MODE. THE CLUSTER WILL NOT BE OPERATIONAL FOR I/O PROCESSES FOR THE DURATION OF THE CODE UPGRADE.</strong></span></span><br />
&nbsp;</body>
</html>
" >> email.html
}

A9KConfirmation () {
    read -p "Client Name: " clientName
    read -p "CSP Case #: " cspCase

    echo "
<html>
<head>
	<title></title>
	<link href='https://svc.webspellchecker.net/spellcheck31/lf/scayt3/ckscayt/css/wsc.css' rel='stylesheet' type='text/css' />
</head>
<body aria-readonly='false'><span style='font-family:arial,helvetica,sans-serif'>Dear <strong>$clientName</strong>,<br />
&nbsp;<br />
Thank you for requesting an appointment for A9000 Remote Code Load.<br />
&nbsp;<br />
Your service booking using ticket number <strong>$cspCase</strong> has been confirmed with the details below.<br />
&nbsp;<br />
An RCL engineer will contact you before any activity. If you have any questions or need to reschedule, please call us at <span style='color:#0000FF'><strong>1-800-IBM-SERV(426-7378)</strong></span><strong>,</strong><span style='color:#0000FF'><strong> DAC code #91650</strong> </span>or reply to this email.<br />
<span style='color:#FF0000'>&nbsp;<br />
<strong>**Please note!</strong> </span>If current version is lower than 12.3.0, Hyper Swap must be deactivated during the upgrade.<br />
If target bundle is 12.3.1 or higher, Hyper Scale Manager must be upgraded to version 5.5.1 or higher.</span></body>
</html>
" >> email.html
}

FlashConfirmation () {
    read -p "Client Name: " clientName
    read -p "Product: " Product
    read -p "CSP Case #: " cspCase

    echo "
<html>
<head>
	<title></title>
	<link href='https://svc.webspellchecker.net/spellcheck31/lf/scayt3/ckscayt/css/wsc.css' rel='stylesheet' type='text/css' />
</head>
<body aria-readonly='false'><span style='font-family:arial,helvetica,sans-serif'>Dear <strong>$clientName</strong>,<br />
&nbsp;<br />
Thank you for requesting an appointment for <strong>$product </strong>Remote Code Load.<br />
&nbsp;<br />
Your service booking using ticket number <strong>$cspCase</strong> has been confirmed with the details below.<br />
&nbsp;<br />
An RCL engineer will contact you before any activity. If you have any questions or need to reschedule, please call us at <strong><span style='color:#0000FF'>1-800-IBM-SERV(426-7378)</span>, <span style='color:#0000FF'>DAC code #91650</span></strong> or reply to this email.</span><br />
&nbsp;</body>
</html>
" >> email.html
}

# Curates email and calls appropriate function
case $choice in
    1)
        case $schoice in
            1)
                DS8KStandardConfirmation;;
            2)
                TapeConfirmation;;
            3) 
                A9KConfirmation;;
            4)
                FlashConfirmation;;
            5)
                echo "Please enter a valid input"
                exit;;
    2)
        esac
esac

echo "THis is choice: $choice"
echo "This is schoice: $schoice"

# open ./email.html