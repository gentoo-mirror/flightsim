# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Meta package for X-Plane Flight Simulator"
HOMEPAGE="http://www.x-plane.com/"
SRC_URI=""

LICENSE="metapackage"
SLOT="0"
KEYWORDS="-* ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	dev-libs/expat[abi_x86_64]
	dev-libs/libbsd[abi_x86_64]
	media-libs/glu[abi_x86_64]
	media-libs/mesa[abi_x86_64]
	x11-libs/libdrm[abi_x86_64]
	x11-libs/libX11[abi_x86_64]
	x11-libs/libXau[abi_x86_64]
	x11-libs/libxcb[abi_x86_64]
	x11-libs/libXcursor[abi_x86_64]
	x11-libs/libXdamage[abi_x86_64]
	x11-libs/libXdmcp[abi_x86_64]
	x11-libs/libXext[abi_x86_64]
	x11-libs/libXfixes[abi_x86_64]
	x11-libs/libXinerama[abi_x86_64]
	x11-libs/libXrandr[abi_x86_64]
	x11-libs/libXrender[abi_x86_64]
	x11-libs/libxshmfence[abi_x86_64]
	x11-libs/libXxf86vm[abi_x86_64]
"

pkg_postinst() {
	elog "This is only a meta package that pulls in the required"
	elog "dependencies for the X-Plane Flight Simulator."

	ewarn "The X-Plane game is not controlled by portage."
	ewarn "Updates and installation are handled by "
	ewarn "games-utils/x-plane-installer."
}
