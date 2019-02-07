TERMUX_PKG_HOMEPAGE=https://www.tuxera.com/community/open-source-ntfs-3g/
TERMUX_PKG_DESCRIPTION="Implementation of the Microsoft Windows NTFS file system with read-write support"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=2017.3.23
TERMUX_PKG_SRCURL=https://tuxera.com/opensource/ntfs-3g_ntfsprogs-${TERMUX_PKG_VERSION}.tgz
TERMUX_PKG_SHA256=3e5a021d7b761261836dcb305370af299793eedbded731df3d6943802e1262d5
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--with-fuse=external
"

termux_step_pre_configure () {
	export LDFLAGS+=" -llog"
}
