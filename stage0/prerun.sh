#!/bin/bash -e

if [ ! -d "${ROOTFS_DIR}" ]; then
	bootstrap stretch "${ROOTFS_DIR}" http://raspbian.mirrors.lucidnetworks.net/raspbian/
fi
