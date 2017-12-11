# mount-hetzner-storage
How to mount Hetzner storage box

EN - English
---------------------------------------------------------------------------
Install dependencies Command line
---------------------------------------------------------------------------

Install sshfs
------------------

    yum install sshfs fuse-sshfs
    
    mkdir /backup

Mount storage box
------------------
    
    sshfs STORAGE-USER@STORAGE-USER.your-storagebox.de:/  /backup
    
