TERMUX_PKG_HOMEPAGE=http://rakshasa.github.io/rtorrent/
TERMUX_PKG_DESCRIPTION="BitTorrent library with a focus on high performance and good code"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com>"
TERMUX_PKG_VERSION=0.13.7
TERMUX_PKG_SRCURL=https://github.com/rakshasa/rtorrent/releases/download/v0.9.${TERMUX_PKG_VERSION##*.}/libtorrent-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=c738f60f4d7b6879cd2745fb4310bf24c9287219c1fd619706a9d5499ca7ecc1
TERMUX_PKG_DEPENDS="openssl"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-aligned --without-kqueue --disable-debug"

termux_step_pre_configure() {
	autoreconf -fi
}
