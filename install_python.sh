#!/bin/bash

echo "DOWNLOADING PYTHON INSTALLER"
curl -L -O https://www.python.org/ftp/python/3.10.5/Python-3.10.5.tgz

echo "RUNNING INSTALLER"
tar -xf Python-3.10.5.tgz
cd Python-3.10.5 || exit
./configure --enable-optimizations
make -j"$(nproc)"
sudo make altinstall

echo "REMOVING INSTALLER FILES"
cd ..
rm -rf Python-3.10.5 Python-3.10.5.tgz

echo "DONE"
echo "PYTHON (3.10.5) INSTALLED"

xdg-open .

read -p "Press Enter to continue..."
exit 0
