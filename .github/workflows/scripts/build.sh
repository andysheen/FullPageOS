#!/bin/bash
sudo apt install coreutils p7zip-full qemu-user-static

git clone https://github.com/guysoft/CustomPiOS.git
git clone https://github.com/guysoft/FullPageOS.git
cd FullPageOS/src/image
wget -c --trust-server-names 'https://downloads.raspberrypi.org/raspbian_lite_latest'
cd ..
../../CustomPiOS/src/update-custompios-paths
sudo modprobe loop
sudo bash -x ./build_dist