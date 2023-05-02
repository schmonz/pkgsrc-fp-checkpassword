# $NetBSD: Makefile,v 1.1 2023/05/02 22:01:50 schmonz Exp $

DISTNAME=		${GITHUB_PROJECT}-${GITHUB_TAG}
PKGNAME=		${GITHUB_PROJECT}-0.0.20171108
CATEGORIES=		sysutils
MASTER_SITES=		${MASTER_SITE_GITHUB:=Moosemorals/}
GITHUB_PROJECT=		fp-checkpassword
GITHUB_TAG=		f92fc7c51bc4bd98f404cb29e843db1cd5ed623f

MAINTAINER=		schmonz@NetBSD.org
HOMEPAGE=		https://github.com/Moosemorals/fp-checkpassword/
COMMENT=		DJB-style checkpassword program for Dovecot passdb
LICENSE=		isc

USE_TOOLS+=		gmake
BUILD_TARGET=		main

INSTALLATION_DIRS=	bin share/doc/${PKGBASE}

#do-build:
#	cd ${WRKSRC} && ${MAKE} main

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/main ${DESTDIR}${PREFIX}/bin/${PKGBASE}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DESTDIR}${PREFIX}/share/doc/${PKGBASE}

.include "../../mk/bsd.pkg.mk"
