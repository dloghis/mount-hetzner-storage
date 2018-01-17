# mount-hetzner-storage
How to mount Hetzner storage box
---------------------------------------------------------------------------


Install sshfs command line
------------------------------------

    yum install sshfs fuse-sshfs
  
    mkdir /backup

Mount storage box
------------------------------------
(this command will prompt for a password, you need to do this for the first time)
  
    sshfs YOUR-USER@YOUR-USER.your-storagebox.de:/  /backup
  
Check that your storage is mounted with:

    df -hT

How to mount Hetzner storage box Automatically
---------------------------------------------------------------------------
Edit the script and run it, (be sure that your user and password are ok)

    ./backup-mount.sh

Place your script in crontab and mount every 3-5 min

How to mount Hetzner storage box Automatically on boot with fstab
---------------------------------------------------------------------------
To automatically mount storage disk we are using sshpass
Install sshpass and mount storage disk command line

    yum install sshpass

    echo 'YOUR-PASSWORD' > /root/.ssh/host.password
    
Mounting automatically with fstab is pointless because storage box in Hetzner is unmounted every 5 min of inactivity.
However you can run mount -a every 3-5 min

    nano /etc/fstab

place in to your fstab file at the bottom:

    sshfs#YOUR-USER@YOUR-USER.your-storagebox.de:/  /backup   fuse   auto,ssh_command=sshpass\040-f\040/root/.ssh/host.password\040ssh  0  0

Test it manually

    mount -a
    df -hT
  
Done!

12 Dec 2017
