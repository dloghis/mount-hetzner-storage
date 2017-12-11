# mount-hetzner-storage
How to mount Hetzner storage box
---------------------------------------------------------------------------


Install sshfs and dependencies Command line
------------------

    yum install sshfs fuse-sshfs
    
    mkdir /backup

Mount storage box
------------------
    
    sshfs STORAGE-USER@STORAGE-USER.your-storagebox.de:/  /backup
    
