#!/bin/sh

# set time in seconds 
secs=$((2 * 3))

while [ $secs -gt 0 ]; do
   echo -ne "$secs\033[0K\r"
   sleep 1
   : $((secs--))
done


# Check if storage is mounted (be sure that your user and password are ok)
if [ $(mount | grep 'YOUR-USER.your-storagebox.de:/servers-backup' | wc -l) -ne 1 ]
then
    echo 'YOUR-PASSWORD' | sshfs YOUR-USER.your-storagebox.de:/YUOR-FOLDER  /backup -o password_stdin,allow_other
    echo 'SSHFS has been mounted.'
else
    echo 'SSHFS is already mounted.'
fi

