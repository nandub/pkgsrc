# $NetBSD: Makefile,v 1.29 2013/09/02 19:50:47 adam Exp $
#

DISTNAME=	libgksu-2.0.7
PKGREVISION=	24
CATEGORIES=	sysutils
MASTER_SITES=	http://people.debian.org/~kov/gksu/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.nongnu.org/gksu/
COMMENT=	Library that provides a GTK+ frontend to su and sudo

GNU_CONFIGURE=	yes

CONFIGURE_ENV+=	GCONF_SCHEMA_FILE_DIR=${PREFIX}/share/gconf/schemas/
MAKE_ENV+=	GCONF_SCHEMA_FILE_DIR=${PREFIX}/share/gconf/schemas/

USE_LIBTOOL=	yes
USE_TOOLS+=	gmake intltool pkg-config msgfmt

GCONF_SCHEMAS+=		gksu.schemas
PKGCONFIG_OVERRIDE+=	libgksu/libgksu2.pc.in

SUBST_CLASSES+=		xauth
SUBST_SED.xauth+=	-e "s,/usr/bin/xauth,${LOCALBASE}/bin/xauth,g"
SUBST_MESSAGE.xauth=	Fixing path to xauth executable.
SUBST_STAGE.xauth=	post-extract
SUBST_FILES.xauth=	libgksu/gksu-run-helper.c libgksu/libgksu.c

.include "../../devel/GConf/schemas.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../textproc/gtk-doc/buildlink3.mk"
.include "../../security/libgnome-keyring/buildlink3.mk"
.include "../../sysutils/libgtop/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
