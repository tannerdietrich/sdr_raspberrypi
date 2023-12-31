#!/bin/bash

# print command in shell script and wait for confirmation before executing
trap 'read -p "run: $BASH_COMMAND "' DEBUG

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y vim build-essential cmake libfftw3-dev libglfw3-dev libglew-dev libvolk2-dev libzstd-dev libsoapysdr-dev libairspyhf-dev libairspy-dev libiio-dev libad9361-dev librtaudio-dev libhackrf-dev librtlsdr-dev libbladerf-dev liblimesuite-dev p7zip-full wget libusb-1.0-0-dev