# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Installer for X-Plane"
HOMEPAGE="http://www.x-plane.com/"
SRC_URI="http://www.x-plane.com/update/installers11/X-Plane11InstallerLinux.zip"

LICENSE="X-Plane"
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

S="${WORKDIR}"

QA_PREBUILT="opt/bin/${PN}"

src_install() {
	exeinto /opt/bin
	newexe "X-Plane 11 Installer Linux" "${PN}"
}

pkg_postinst() {
	elog "Your installer is available in /opt/bin/${PN}"
	elog
	elog "This installer can install a demo of the game, but a license must"
	elog "be purchased for continued use. Please visit: ${HOMEPAGE}"
}
