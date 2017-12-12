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
To automatically mount storage disk we are using sshpass

Install sshpass and mount storage disk command line
------------------
    yum install sshpass 

    echo 'YOUR-PASSWORD' > /root/.ssh/host.password
    
    nano /etc/fstab

place in to your fstab file at the bottom:

    sshfs#STORAGE-USER@STORAGE-USER.your-storagebox.de:/  /backup   fuse   auto,ssh_command=sshpass\040-f\040/root/.ssh/host.password\040ssh  0  0

    
