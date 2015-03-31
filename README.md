About
=====

*eselect-xorg-conf* contains two simple modules for standard
[Gentoo Linux](http://gentoo.org/) tool
[app-admin/eselect](http://packages.gentoo.org/package/app-admin/eselect). It
allows for convenient managing of multiple `xorg.conf`'s for your Xorg server
and (for recent Xorg 1.8) `/etc/X11/xorg.conf.d/` config portions via
symlinking. It is especially useful while experimenting with various video
drivers or display modes.

It is quite simple result of hacking standard eselect module for kernels
(`xorg.conf`) and fontconfig (`xorg.conf.d`).

Installation
============

Get it [here](https://bitbucket.org/skrattaren/eselect-xorgconf/) or (version
from Mercurial *tip* could be broken)
[here](https://bitbucket.org/skrattaren/eselect-xorgconf/downloads) and put in
`/usr/share/eselect/modules`, if you feel slackish and daring. Otherwise use
*rion* overlay.

Usage
=====

Use it just like any other eselect

    % eselect xorg.conf show
    Current xorg.conf symlink:
      /etc/X11/xorg.conf.nouveau

    % eselect xorg.conf list
    Available xorg.conf symlink targets:
      [1]   backup
      [2]   nouveau *
      [3]   nvidia

    % sudo eselect xorg.conf set 3

    % eselect xorg.conf show
    Current xorg.conf symlink:
      /etc/X11/xorg.conf.nvidia

or

~~~
 % eselect xorg.conf.d list
Available Xorg config portions (* is enabled):
  [1]   10-evdev.conf *
  [2]   20-synaptics.conf

 % sudo eselect xorg.conf.d enable 2

 % eselect xorg.conf.d list
Available Xorg config portions (* is enabled):
  [1]   10-evdev.conf *
  [2]   20-synaptics.conf *
~~~
