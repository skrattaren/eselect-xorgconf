#!/bin/sh

# List targets
eselect xorg.conf.d list
# List files
ls -l /etc/X11/xorg.conf.{avail,d}

# Disable first
eselect xorg.conf.d disable 1
# List targets
eselect xorg.conf.d list
# List files
ls -l /etc/X11/xorg.conf.{avail,d}

# Enable evdev
eselect xorg.conf.d enable 10-evdev.conf
# List targets
eselect xorg.conf.d list
# List files
ls -l /etc/X11/xorg.conf.{avail,d}

# Enable non-existing
eselect xorg.conf.d enable 666-diablo.conf

# Disable non-existing
eselect xorg.conf.d disable 666

# Disable disabled
eselect xorg.conf.d disable 1
eselect xorg.conf.d disable 10-evdev.conf

# Enable enabled
eselect xorg.conf.d enable 10-evdev.conf
eselect xorg.conf.d enable 1

