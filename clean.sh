#! /bin/bash
# Use this script in conjuction with a VPN to start anonymous surfing

    # Remove the old temporary ipfile
rm ipfile.txt

    # Change the mac address
sudo macchanger -r eth0

    # Start anonsurf (This assumes you have anonsurf installed)
sudo anonsurf start

    # Write your new ip address to the ipfile
ip addr >> ipfile.txt
