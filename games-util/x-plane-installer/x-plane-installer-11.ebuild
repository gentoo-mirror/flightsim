# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Installer for X-Plane"
HOMEPAGE="http://www.x-plane.com/"
SRC_URI="http://www.x-plane.com/update/installers11/X-Plane11InstallerLinux.zip"

LICENSE="X-Plane"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	dev-libs/expat
	dev-libs/libbsd
	media-libs/glu
	media-libs/mesa
	sys-devel/gcc
	sys-libs/glibc
	x11-libs/libdrm
	x11-libs/libX11
	x11-libs/libXau
	x11-libs/libxcb
	x11-libs/libXcursor
	x11-libs/libXdamage
	x11-libs/libXdmcp
	x11-libs/libXext
	x11-libs/libXfixes
	x11-libs/libXinerama
	x11-libs/libXrandr
	x11-libs/libXrender
	x11-libs/libxshmfence
	x11-libs/libXxf86vm
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
