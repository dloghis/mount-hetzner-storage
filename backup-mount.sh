#!/bin/sh

if [ $(mount | grep 'YOUR-USER@YOUR-USER.your-storagebox.de:/servers-backup' | wc -l) -ne 1 ]
then
    echo 'YOUR-PASSWORD' | sshfs -o allow_other YOUR-USER@YOUR-USER.your-storagebox.de:/servers-backup /backup -o password_stdin,allow_other

        # Allow your storage to mount if is busy
        secs=$((2 * 2))
        while [ $secs -gt 0 ]; do
        echo -ne "$secs\033[0K\r"
        sleep 1
        : $((secs--))
        done

    echo 'SSHFS has been mounted.'
else
    echo 'SSHFS is already mounted.'
fi


