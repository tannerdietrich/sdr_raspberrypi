#!/bin/bash

# print command in shell script and wait for confirmation before executing
trap 'read -p "run: $BASH_COMMAND "' DEBUG

cd ~/workspace
git clone git://osmocom.org/rtl-sdr.git
cd rtl-sdr/
mkdir build
cd build
sudo cmake ../ -DINSTALL_UDEV_RULES=ON
make -j 4
sudo make install
sudo ldconfig
sudo cp ../rtl-sdr.rules /etc/udev/rules.d/
cd /etc/modprobe.d