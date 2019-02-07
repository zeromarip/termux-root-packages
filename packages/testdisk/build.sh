TERMUX_PKG_HOMEPAGE=https://www.cgsecurity.org/wiki/TestDisk
TERMUX_PKG_DESCRIPTION="Free and open-source data recovery utility primarily designed to help recover lost data storage partitions and/or make non-booting disks bootable again"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=7.0
TERMUX_PKG_SRCURL=https://www.cgsecurity.org/testdisk-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=00bb3b6b22e6aba88580eeb887037aef026968c21a87b5f906c6652cbee3442d
TERMUX_PKG_DEPENDS="libuuid, openjpeg, ncurses, exfat, e2fsprogs"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--without-qt
"
