# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/www-client/vimprobable2/vimprobable2-9999.ebuild,v 1.3 2013/05/26 09:53:29 radhermit Exp $

EAPI=5

inherit toolchain-funcs git-2

EGIT_REPO_URI="git://git.code.sf.net/p/vimprobable/code"
EGIT_PROJECT="vimprobable"

DESCRIPTION="A minimal web browser that behaves like the Vimperator plugin for Firefox"
HOMEPAGE="http://www.vimprobable.org/"

LICENSE="MIT"
SLOT="0"

RDEPEND="net-libs/libsoup:2.4
	net-libs/webkit-gtk:2
	x11-libs/gtk+:2
	x11-libs/libX11"
DEPEND="${RDEPEND}
	dev-lang/perl
	virtual/pkgconfig"

S=${WORKDIR}/${PN}

src_prepare() {
	tc-export CC
}

src_install() {
	dobin ${PN}
	doman ${PN}.1 vimprobablerc.5
}
