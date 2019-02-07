TERMUX_PKG_HOMEPAGE=https://github.com/relan/exfat
TERMUX_PKG_DESCRIPTION="Free exFAT file system implementation"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=1.3.0
TERMUX_PKG_SRCURL=https://github.com/relan/exfat/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=689bcb4a639acd2d45e6fa0ff455f7f18edb2421d4f4f42909943775adc0e375
TERMUX_PKG_DEPENDS="libfuse"

termux_step_pre_configure () {
	autoreconf -vfi
	export LDFLAGS+=" -llog"
}
