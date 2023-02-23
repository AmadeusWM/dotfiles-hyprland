#!/bin/sh
virsh --connect qemu:///system start windows11

looking-glass-client -m KEY_RIGHTCTRL

# destroy windows session when window is closed
virsh --connect qemu:///system destroy windows11