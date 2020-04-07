Ebuild for portage, Gentoo's package manager.

**Sacc doesn't compile** on Gentoo out of the box without such an overlay.

Sacc is a client for the [gopher internet protocol](bitreich.org). It is hosted at

git://bitreich.org/sacc

and [mirrored on github](https://github.com/equwal/sacc).

This currently defaults to the `tinfo` ncurses mode, rather than the `txt`
mode. There is a plan to support txt mode by default when the tinfo and
ncurses use flags are missing. The `txt` mode is still available when compiling
from source by editing `config.mk`.

# INSTALLATION
```
cd /var/db/repos/gentoo/net-misc/
git clone equwal.com:sacc-ebuild
mv sacc-ebuild sacc && cd sacc
ebuild ./sacc-1.01.ebuild manifest unpack compile install
```

# Raison d'être
```
Quentin Rameau <quinq@fifth.space> writes:
> Yes, this highly depends on your system.
> There are several ways to pack those objects, and ncurses made a mess
> with it.
>
> This is something to be solved at integration level, like for a
> packager, or a user knowing how he installed it on its own system!
> Yes, this highly depends on your system.
> There are several ways to pack those objects, and ncurses made a mess
> with it.
```
Thus, you should sacc this ebuild into your overlay.
