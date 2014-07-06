# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/virtual/perl-Exporter/perl-Exporter-5.680.0.ebuild,v 1.4 2014/07/05 22:18:18 dilfridge Exp $

DESCRIPTION="Virtual for perl-core/Exporter"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=""
RDEPEND="
	|| (
		(
			=dev-lang/perl-5.18*
			!perl-core/Exporter
		)
		~perl-core/Exporter-${PV}
	)
"
