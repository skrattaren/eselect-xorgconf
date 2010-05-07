#summary xorg-conf module for app-admin/eselect
#labels Featured,About

= About =

*eselect-xorg-conf* contains two simple modules for standard [http://gentoo.org/ Gentoo Linux] tool [http://packages.gentoo.org/package/app-admin/eselect app-admin/eselect]. It allows for convenient managing of multiple _xorg.conf_'s for your Xorg server and (for recent Xorg 1.8) _/etc/X11/xorg.conf.d/_ config portions via symlinking. It is especially useful while experimenting with various video drivers or display modes.

It is quite simple result of hacking standard eselect module for kernels (_xorg.conf_) and fontconfig (_xorg.conf.d_).

= Installation =

Get it [http://code.google.com/p/krigstasks-samling/source/browse?repo=esel-xconf here] or (hg-version could be broken) [http://code.google.com/p/krigstasks-samling/downloads/ here] and put in _/usr/share/eselect/modules_, if you feel slackish and daring (it could be broken). Otherwise use *rion* overlay.

= Usage =

Use it just like any other eselect

{{{
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
}}}
or
{{{
 % eselect xorg.conf.d list
Available Xorg config portions (* is enabled):
  [1]   10-evdev.conf *
  [2]   20-synaptics.conf

 % sudo eselect xorg.conf.d enable 2

 % eselect xorg.conf.d list
Available Xorg config portions (* is enabled):
  [1]   10-evdev.conf *
  [2]   20-synaptics.conf *
}}}