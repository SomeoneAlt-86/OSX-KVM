#!/bin/bash

python3 fetch-macOS-v2.py
dmg2img -i BaseSystem.dmg BaseSystem.img
./OpenCore-Boot.sh
