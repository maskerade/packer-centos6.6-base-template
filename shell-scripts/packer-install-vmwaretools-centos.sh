#!/bin/bash

# Give some feedback
echo "Now installing VMWare tools"
sleep 5

# Make sure perl is available
apt-get -q -y install perl

# Mount the cdrom drive
cd /home/vagrant
#mkdir /home/vagrant/cdrom
#mount /dev/cdrom /home/vagrant/cdrom

# Install the drivers
cp /home/vagrant/VMwareTools-*.gz /home/vagrant
tar -zxvf VMwareTools*.gz
./vmware-tools-distrib/vmware-install.pl -d

# Cleanup
#umount /home/vagrant/cdrom
#rm -rf /tmp/cdrom 
#rm -rf VMwareTools*.gz
#rm -rf vmware-tools-distrib

