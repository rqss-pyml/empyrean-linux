#!/bin/bash

printf '\e[8;50;101t'

echo "REMOVING INTERFERENCES"
python3.10 -m pip uninstall -r interferences.txt -y

echo "INSTALLING REQUIREMENTS"
python3.10 -m pip install --force-reinstall -r requirements.txt

clear
cd BUILD || exit
python3.10 main.py

read -p "Press Enter to continue..."
exit 0
