# $NetBSD: buildlink3.mk,v 1.1 2013/09/13 22:04:07 schmonz Exp $

BUILDLINK_TREE+=	rakudo-star

.if !defined(RAKUDO_STAR_BUILDLINK3_MK)
RAKUDO_STAR_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.rakudo-star+=		rakudo-star>=2013.08
BUILDLINK_ABI_DEPENDS.rakudo-star+=		rakudo-star>=2013.08
BUILDLINK_PKGSRCDIR.rakudo-star?=		../../lang/rakudo-star

.include "../../lang/nqp/buildlink3.mk"
.endif # RAKUDO_STAR_BUILDLINK3_MK

BUILDLINK_TREE+=	-rakudo-star
