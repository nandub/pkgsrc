# $NetBSD: Makefile,v 1.25 2013/06/06 12:54:49 wiz Exp $
#

DISTNAME=	mnemosyne-1.2.2
PKGREVISION=	14
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mnemosyne-proj/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://mnemosyne-proj.org/
COMMENT=	Sophisticated flash-card tool which optimizes your learning process
LICENSE=	gnu-gpl-v2

USE_LANGUAGES=	# none

EGG_NAME=	${DISTNAME:S/^m/M/}

SUBST_CLASSES+=			installpath
SUBST_SED.installpath=		-e 's,/usr/share,${PREFIX}/share,'
SUBST_FILES.installpath=	setup.py
SUBST_MESSAGE.installpath=	Fixing installation path.
SUBST_STAGE.installpath=	pre-build

.include "../../devel/py-game/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../lang/python/egg.mk"
.include "../../graphics/py-imaging/buildlink3.mk"
.include "../../x11/py-qt3-base/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
