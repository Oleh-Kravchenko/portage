# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/qrosspython/qrosspython-9999.ebuild,v 1.2 2014/01/08 13:36:06 maksbotan Exp $

EAPI=5

PYTHON_COMPAT=( python2_7 )
EGIT_REPO_URI="git://github.com/0xd34df00d/Qross.git"

inherit git-2 python-single-r1 cmake-utils

DESCRIPTION="Python scripting backend for Qross."
HOMEPAGE="http://github.com/0xd34df00d/Qross"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="debug"

DEPEND="
	=dev-libs/qrosscore-${PV}
	dev-qt/qtcore:4
	dev-qt/qtgui:4
	${PYTHON_DEPS}
"
RDEPEND="${DEPEND}"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

S="${WORKDIR}/Qross-${PV}"
CMAKE_USE_DIR="${S}/src/bindings/python/qrosspython"
