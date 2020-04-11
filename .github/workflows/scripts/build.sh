#!/bin/bash
sudo apt install coreutils p7zip-full qemu-user-static

git clone https://github.com/bitbyt3r/CustomPiOS.git
git clone https://github.com/bitbyt3r/FullPageOS.git
cd FullPageOS/src/image
wget -q -c --trust-server-names 'https://downloads.raspberrypi.org/raspbian_lite_latest'
cd ..
../../CustomPiOS/src/update-custompios-paths
sudo modprobe loop
sudo bash -x ./build_dist
