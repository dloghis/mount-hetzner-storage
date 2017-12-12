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
    

# Automatically mount-hetzner-storage
How to mount Hetzner storage box Automatically
---------------------------------------------------------------------------
To automaticaly mount storage disk we are using sshpass

Install sshpass command line
------------------
    yum install sshpass 

    echo 'YOUR-PASSWORD' > /root/.ssh/host.password


