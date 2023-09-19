PORTNAME=	surrealdb
DISTVERSION=	v1.0.0
CATEGORIES=	databases
MASTER_SITES=	https://github.com/surrealdb/surrealdb/

MAINTAINER=	fjachuf@gmail.com
COMMENT=	Real-time, collaborative, scalable, distributed document-graph DB
WWW=		https://surrealdb.com/

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	pkgconf:devel/pkgconf
LIB_DEPENDS=	libzstd.so:archivers/zstd

USES=	cargo llvm

USE_GITHUB=	yes
GH_ACCOUNT=	${PORTNAME}

USE_RC_SUBR=	${PORTNAME}

SUB_FILES=	pkg-message
SUB_LIST=	NAME=${PORTNAME}

PLIST_FILES=	bin/surreal

.include <bsd.port.mk>
