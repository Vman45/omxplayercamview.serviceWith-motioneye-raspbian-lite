#!/bin/bash -e
on_chroot << EOF
wget https://github.com/Motion-Project/motion/releases/download/release-4.1.1/pi_stretch_motion_4.1.1-1_armhf.deb
sleep 2
dpkg -i pi_stretch_motion_4.1.1-1_armhf.deb
EOF
