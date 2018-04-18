#!/bin/bash -e
on_chroot << EOF
pip install motioneye
EOF


install -v -d	"${ROOTFS_DIR}/etc/motioneye"
install -v -m 644 "${ROOTFS_DIR}/usr/local/share/motioneye/extra/motioneye.conf.sample" "${ROOTFS_DIR}/etc/motioneye/motioneye.conf"
sleep 2

on_chroot << \EOF
sed -i 's/8765/80/g' /etc/motioneye/motioneye.conf
EOF

install -v -m 644 "${ROOTFS_DIR}/usr/local/share/motioneye/extra/motioneye.systemd-unit-local" "${ROOTFS_DIR}/etc/systemd/system/motioneye.service"
sleep 2

on_chroot << EOF
systemctl daemon-reload
sleep 2
systemctl enable motioneye
EOF
