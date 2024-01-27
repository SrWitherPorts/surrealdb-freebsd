PORTNAME=	surrealdb
DISTVERSIONPREFIX=  v
DISTVERSION=	1.1.1
CATEGORIES=	databases

MAINTAINER=	fjachuf@gmail.com
COMMENT=	Real-time, collaborative, scalable, distributed document-graph DB
WWW=		https://surrealdb.com/

LICENSE=	BSL11
LICENSE_NAME=	Business Source License 1.1
LICENSE_FILE=	${WRKSRC}/LICENSE
LICENSE_PERMS=	dist-mirror no-dist-sell pkg-mirror no-pkg-sell auto-accept

LIB_DEPENDS=	libzstd.so:archivers/zstd

USES=	cargo llvm pkgconfig

USE_GITHUB=	yes

USE_RC_SUBR=	${PORTNAME}

PLIST_FILES=	bin/surreal

.include <bsd.port.mk>
