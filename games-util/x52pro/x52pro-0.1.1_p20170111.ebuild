# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools vcs-snapshot

SRC_REVISION=9070d885885dfd0cef0900d7d41a3a0bf9350b14

DESCRIPTION="Saitek X52pro drivers & controller mapping software for Linux"
HOMEPAGE="https://github.com/nirenjan/x52pro-linux"
SRC_URI="https://github.com/nirenjan/x52pro-linux/archive/${SRC_REVISION}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

CDEPEND="virtual/libusb:1"
DEPEND="${CDEPEND}
	dev-lang/python"
RDEPEND="${CDEPEND}"

src_prepare() {
	default
	eautoreconf
}
