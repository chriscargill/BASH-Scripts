#! /bin/bash
# This script was meant to be used in conjuction with clean.sh
# Use this to stop the anonymous surfing

#Write out current ip address
ip addr >> ipfile.txt

# Stop anonsurf (This assumes that you had anonsurf running before starting this script)
sudo anonsurf stop

# Change mac address
sudo macchanger -p eth0

#Write new ip address to file for comparison
ip addr >> ipfile.txt
