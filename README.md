Example:  Building Systems With Packer
==============

This is a simple example for using Packer (http://packer.io) to build a VMWare ESXi Template from an ISO.

The template can also be configured with some custom finishing scripts (i.e yum update, iptables rules, etc)

## Pre-requisites
This requires you to have installed a working copy of packer on your local computer, more info can be found on the packer website: http://packer.io 

You should also have downloaded and saved locally and ISO for Ubuntu server 14.04.

NOTE: This builder is configured to upload a 'modified' version of VMWare Tools for ESX5.5u2, this is due to a feature/bug introduced with VMWare tools for 5.5u2 that does not allow an unattended install: https://www.vmware.com/support/vsphere5/doc/vsphere-esxi-55u2-release-notes.html#vmwaretoolsissues

## Instructions

1.  Clone this repository.
1.  Modify some basic settings (you will need to change the path for the location of the CentOS ISO).
1.  Modify the ks.cfg, if you require changes specific to your environment.
1.  Modify the esxi-5.5u2-centos6.6-netinstall-base-template.json (as an example I changed the 'ethernet0.networkName' setting.
1.  To create the ESXi template, run the command (from the git checkout directory): packer build -var 'esx_host=**eshhostname**' -var 'esx_username=**esxusername**' -var 'esx_password=**esxpassword**'

