#!/bin/sh
if [[ -d /etc/adblock-scripts ]]; 
then
    cd /etc/adblock-scripts; curl https://hosts.oisd.nl/ > hosts; cd /etc/adblock-scripts; mv hosts /etc; cd
else 
    cd /etc; mkdir adblock-scripts; cd /etc/adblock-scripts; curl https://hosts.oisd.nl/ > hosts; cd /etc/adblock-scripts; mv hosts /etc; cd
fi
