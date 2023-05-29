### Note
This is the fork of kholia/OSX-KVM with just a little simpler setup. I have personally tried both macOS-Simple-KVM by foxlet and kholia's OSX-KVM. I like the simplicity of macOS-Simple-KVM . This fork uses the same code but makes the installation a little easier .


### Requirements

* A modern Linux distribution. E.g. Ubuntu 22.04 LTS 64-bit or later.

* QEMU >= 6.2.0

* A CPU with Intel VT-x / AMD SVM support is required (`grep -e vmx -e svm /proc/cpuinfo`)

* A CPU with SSE4.1 support is required for >= macOS Sierra

* A CPU with AVX2 support is required for >= macOS Mojave

Note: Older AMD CPU(s) are known to be problematic. AMD FX-8350 works but
Phenom II X3 720 does not. Ryzen processors work just fine.


### Installation Preparation

* Clone this repository on your QEMU system. Files from this repository are
  used in the following steps.

  ```
  cd ~

  git clone --depth 1 --recursive https://github.com/SomeoneAlt-86/OSX-KVM.git

  cd OSX-KVM
  ```

  Repository updates can be pulled via the following command:

  ```
  git pull --rebase
  ```

  This repository uses rebase based workflows heavily.


### Boot to MacOS 

- CLI method (primary). Just run the `init.sh` script to initialize basically everything and make your computer ready to boot MacOS.

  ```
  ./init.sh
  ```


### Motivation
It's just the plain OSX-KVM but with a little simpler setup, so that you are ready to go in no time.
