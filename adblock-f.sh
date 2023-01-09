#!/bin/sh
FILE=/etc/adblock-scripts
if [ -f "$FILE" ]; then
    cd /etc/adblock-scripts && curl https://hosts.oisd.nl/ > hosts && cd && cd /etc/adblock-scripts && mv hosts /etc && cd
else 
    cd /etc && mkdir adblock-scripts && cd /etc/adblock-scripts && curl https://hosts.oisd.nl/ > hosts && cd && cd /etc/adblock-scripts && mv hosts /etc && cd
fi
