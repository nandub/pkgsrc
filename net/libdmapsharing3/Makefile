# $NetBSD: Makefile,v 1.9 2013/09/02 19:51:20 adam Exp $

DISTNAME=	libdmapsharing-2.9.15
PKGNAME=	${DISTNAME:S/sharing/sharing3/}
PKGREVISION=	8
CATEGORIES=	net
MASTER_SITES=	http://www.flyn.org/projects/libdmapsharing/

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Implementation of the DMAP family of protocols (v3)
HOMEPAGE=	http://www.flyn.org/projects/libdmapsharing/
LICENSE=	gnu-lgpl-v2.1

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake pkg-config

PKGCONFIG_OVERRIDE=	libdmapsharing-3.0.pc.in

BUILDLINK_ABI_DEPENDS.gst-plugins0.10-base+= gst-plugins0.10-base>=0.10.23.2
BUILDLINK_ABI_DEPENDS.libsoup24+= libsoup24>=2.32

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libgee/buildlink3.mk"
.include "../../graphics/gdk-pixbuf2/buildlink3.mk"
.include "../../multimedia/gst-plugins0.10-base/buildlink3.mk"
.include "../../net/avahi/buildlink3.mk"
.include "../../net/libsoup24/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
