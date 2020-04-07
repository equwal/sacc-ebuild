EAPI=7

DESCRIPTION="Gopher client of pure simplicity."
HOMEPAGE="gopher://bitreich.org/1/scm/sacc/log.gph"
SRC_URI="ftp://bitreich.org/releases/sacc/${P}.tgz"
LICENSE="GNU GPLv3"

SLOT="0"

KEYWORDS="~amd64"

# Not sure how to support UI=txt vs UI=ti mode using USE flags.
# IUSE="tinfo ncurses"

#RDEPEND="tinfo? ( sys-libs/ncurses[tinfo] )"
RDEPEND="sys-libs/ncurses[tinfo]"
DEPEND="${RDEPEND}"

src_compile() {
	# The libs should be somehow depend on the USE flags for UI=txt mode
	# UI_TI (default)
	# UI=ti

	# UI_TXT
	# UI=txt LIBS="
	emake LIBS="-lncurses -ltinfo" UI=ti
}

src_install() {
	# Would be nice if DESTDIR was supported by sacc
	emake PREFIX="${D}"/usr MANDIR="${D}"/usr/share/man UI=ti LIBS="-lncurses -ltinfo" install
}
