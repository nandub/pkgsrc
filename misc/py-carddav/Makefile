# $NetBSD: Makefile,v 1.12 2013/09/02 16:46:13 wiz Exp $

DISTNAME=	pyCardDAV-0.5.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/pyCardDAV/carddav/}
CATEGORIES=	misc
MASTER_SITES=	http://lostpackets.de/pycarddav/downloads/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://pycarddav.lostpackets.de/
COMMENT=	Simple way of accessing a CardDAV resource
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-sqlite3-[0-9]*:../../databases/py-sqlite3
DEPENDS+=	${PYPKGPREFIX}-lxml-[0-9]*:../../textproc/py-lxml
DEPENDS+=	${PYPKGPREFIX}-vobject-[0-9]*:../../textproc/py-vobject
DEPENDS+=	${PYPKGPREFIX}-requests-[0-9]*:../../devel/py-requests

USE_LANGUAGES=	# none

REPLACE_PYTHON=		pycarddav/ui.py
REPLACE_PYTHON+=	pycarddav/controllers.py
REPLACE_PYTHON+=	pycarddav/model.py
REPLACE_PYTHON+=	pycarddav/carddav.py
REPLACE_PYTHON+=	pycarddav/backend.py
REPLACE_PYTHON+=	pycarddav/__init__.py

INSTALLATION_DIRS= bin share/doc/py-carddav share/examples/py-carddav

post-install:
	${INSTALL_DATA} ${WRKSRC}/README* ${DESTDIR}${PREFIX}/share/doc/py-carddav
	${INSTALL_DATA} ${WRKSRC}/pycard.conf.sample ${DESTDIR}${PREFIX}/share/examples/py-carddav

.include "../../lang/python/application.mk"
.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
