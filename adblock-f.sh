#!/bin/bash

if [ ! -d "/etc/adblock-scripts" ]; then
  mkdir /etc/adblock-scripts
fi

echo "This will update your current hosts file to update/add the ad blocking. Do you want to continue (yes/no)?"
read user_input

if [ "$user_input" == "yes" ]; then
  echo "Thank you for confirming, beginning now..."
  cd /etc/adblock-scripts

  curl https://hosts.oisd.nl/ > hosts

  mv hosts /etc

  cd
  echo "Finished"
elif [ "$user_input" == "no" ]; then
  echo "Sorry to hear that, Have a good day!"
else
  echo "Invalid input, please try again"
fi
