
Debian
====================
This directory contains files used to package northernd/northern-qt
for Debian-based Linux systems. If you compile northernd/northern-qt yourself, there are some useful files here.

## northern: URI support ##


northern-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install northern-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your northernqt binary to `/usr/bin`
and the `../../share/pixmaps/northern128.png` to `/usr/share/pixmaps`

northern-qt.protocol (KDE)

