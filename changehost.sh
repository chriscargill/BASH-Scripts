#! /bin/bash
# Use this script to change your hosts and hostname files with a new randomized hostname


    # A list of random words/numbers separated by spaces, put in as many as you want here
randomName=(gimmsa6 00340006 14m21198 002posa07 cargamella 0llo0000.777 Am1az32sY)

    # Choose a random number up to length(randomName) + 1
randomNumber=$(( RANDOM % 8 ))

    # Select one of the randomNames and add the number to the end
randomHost=${randomName[$randomNumber]}$randomNumber

cd /etc

    # Change the hosts file with the new host name
sudo cat <<EOT > hosts
127.0.0.1       localhost
127.0.1.1       $randomHost

# The following lines are desirable for IPv6 capable hosts
::1     localhost ip6-localhost ip6-loopback
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
EOT

    # Change the hostname file with the new host name
sudo cat <<EOT > hostname
$randomHost
EOT

    # Restart the computer for the changes to take effect
sudo reboot