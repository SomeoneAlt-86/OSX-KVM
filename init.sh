#!/bin/bash
echo Checking Requirements 
sudo apt-get install qemu uml-utilities virt-manager git \
    wget libguestfs-tools p7zip-full make dmg2img -y > /dev/null 2>&1
echo
echo Setting up KVM-Qemu
echo 1 | sudo tee /sys/module/kvm/parameters/ignore_msrs 
sudo usermod -aG kvm $(whoami)
sudo usermod -aG libvirt $(whoami)
sudo usermod -aG input $(whoami)    
echo Done!
echo

echo Preparing to download OSX
python3 fetch-macOS-v2.py
echo
echo Preparing Disks and Images
dmg2img -i BaseSystem.dmg BaseSystem.img > /dev/null 2>&1
qemu-img create -f qcow2 mac_hdd_ng.img 128G > /dev/null 2>&1
echo All Done!
echo
echo Starting..
./OpenCore-Boot.sh
