echo 'KERNEL=="ttyUSB*", ATTRS{idVendor}=="067b", ATTRS{idProduct}=="2303", MODE:="0666", GROUP:="dialout", SYMLINK+="xunjian_base"' >/etc/udev/rules.d/xunjian.rules
service udev reload
sleep 2
service udev restart
