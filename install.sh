#!/bin/bash

# the installation needs to be run with superuser privilegies
if [[  $(id -u) -ne 0 ]]; then
  echo "Please, run this script as root or with sudo."
  exit 0
fi

if [[ "$#" -eq 0 ]]; then
  path="/usr/bin/"
  echo "Path of the program was not specified, installing into the /usr/bin/."
elif [[ "$#" -eq 1 ]] && [[ "$1" =~ ^[\/a-z] ]];then
  path="$1"
  echo 'The program will be installed into the "$1".'
else
  echo "Wrong path, please try again."
  exit 0
fi

if [[ `echo ${path: -1}` != "/" ]]; then
  path=`echo "$path/"`
fi

name=`echo "$path"ssh-server-fingerprints`

echo "Installing..."
wget -q https://raw.githubusercontent.com/LordShedy/ssh-server-fingerprints/master/ssh-server-fingerprints -O "$name"

chmod +x "$name"
echo "Program installed!"

# self deletion of this installation script
rm -- "$0"
exit 0
