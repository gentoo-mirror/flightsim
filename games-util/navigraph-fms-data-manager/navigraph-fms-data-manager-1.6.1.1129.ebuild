# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils unpacker xdg-utils

DESCRIPTION="Client for Navigraph FMS Data"
HOMEPAGE="http://www.navigraph.com/"
SRC_URI="http://download.navigraph.com/software/fmsdatamanager/${P}.amd64.deb"

LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="-* ~amd64"
IUSE=""

RESTRICT="mirror"

DEPEND=""
RDEPEND="${DEPEND}
	x11-libs/libxcb[abi_x86_64]
	media-libs/mesa[abi_x86_64]
	sys-libs/zlib[abi_x86_64]
	dev-qt/qtcore:5/5.7[abi_x86_64]
	dev-qt/qtgui:5/5.7[abi_x86_64]
	dev-qt/qtnetwork:5/5.7[abi_x86_64]
	dev-qt/qtxml:5/5.7[abi_x86_64]
	dev-qt/qtwidgets:5/5.7[abi_x86_64]"

S="${WORKDIR}"

src_install() {
	exeinto /opt/navigraph/fms-data-manager
	doexe usr/games/navigraph/fms-data-manager/NGFMSManager
	insinto /opt/navigraph/fms-data-manager
	doins -r usr/games/navigraph/fms-data-manager/res
	insinto /
	doins "usr/share/applications/Navigraph FMS Manager.desktop"
	make_desktop_entry \
		/opt/navigraph/fms-data-manager/NGFMSManager \
		"Navigraph FMS Data Manager" \
		/opt/navigraph/fms-data-manager/res/256x256.png \
		Simulation
}

pkg_postinst() {
	xdg_desktop_database_update
}

pkg_postrm() {
	xdg_desktop_database_update
	ewarn "To use this software you need a Navigraph FMS Data subscription"
	ewarn "Please visit https://www.navigraph.com/Subscription.aspx"
}
