TERMUX_PKG_HOMEPAGE=https://www.aircrack-ng.org
TERMUX_PKG_DESCRIPTION="an 802.11 WEP and WPA-PSK keys cracking program"
TERMUX_PKG_VERSION=1.3
TERMUX_PKG_SRCURL=https://download.aircrack-ng.org/aircrack-ng-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=8ae08a7c28741f6ace2769267112053366550e7f746477081188ad38410383ca
TERMUX_PKG_MAINTAINER="Auxilus @Auxilus"
TERMUX_PKG_DEPENDS="libnl, openssl, libpcap, pciutils"
TERMUX_PKG_BUILD_DEPENDS="libnl-dev, openssl-dev, libpcap-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--host=$TERMUX_HOST_PLATFORM
"

termux_step_pre_configure () {
	NOCONFIGURE=1 ./autogen.sh
}
