package defpackage;

import java.math.BigDecimal;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yk4 extends m1 {
    public final /* synthetic */ int g;
    public final /* synthetic */ gn4 h;
    public final rn4 i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ yk4(gn4 gn4Var, String str, int i, rn4 rn4Var, int i2) {
        super(str, i);
        this.g = i2;
        this.h = gn4Var;
        this.i = rn4Var;
    }

    @Override // defpackage.m1
    public final int d() {
        switch (this.g) {
            case 0:
                return ((kz4) this.i).u();
            default:
                return ((uz4) this.i).u();
        }
    }

    @Override // defpackage.m1
    public final boolean e() {
        switch (this.g) {
            case 0:
                return false;
            default:
                return true;
        }
    }

    @Override // defpackage.m1
    public final boolean f() {
        switch (this.g) {
            case 0:
                return ((kz4) this.i).z();
            default:
                return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:150:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x03cb A[EDGE_INSN: B:234:0x03cb->B:161:0x03cb BREAK  A[LOOP:3: B:89:0x0248->B:238:0x0248], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x017e  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean j(java.lang.Long r22, java.lang.Long r23, defpackage.u35 r24, long r25, defpackage.xt4 r27, boolean r28) {
        /*
            Method dump skipped, instruction units count: 1087
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yk4.j(java.lang.Long, java.lang.Long, u35, long, xt4, boolean):boolean");
    }

    public boolean k(Long l, Long l2, h55 h55Var, boolean z) {
        boolean z2;
        Boolean boolG;
        Boolean boolI;
        Boolean boolI2;
        Boolean boolI3;
        pq4.a();
        r45 r45Var = (r45) this.h.a;
        ds4 ds4Var = r45Var.d;
        p15 p15Var = r45Var.j;
        a25 a25Var = r45Var.f;
        boolean zG = ds4Var.G((String) this.b, e05.D0);
        uz4 uz4Var = (uz4) this.i;
        boolean zX = uz4Var.x();
        boolean zY = uz4Var.y();
        boolean zA = uz4Var.A();
        boolean z3 = zX || zY || zA;
        if (z && !z3) {
            r45.l(a25Var);
            a25Var.n.c(Integer.valueOf(this.a), uz4Var.t() ? Integer.valueOf(uz4Var.u()) : null, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID");
            return true;
        }
        nz4 nz4VarW = uz4Var.w();
        boolean zY2 = nz4VarW.y();
        if (!h55Var.y()) {
            z2 = zA;
            if (!h55Var.C()) {
                if (!h55Var.w()) {
                    r45.l(a25Var);
                    a25Var.i.b(p15Var.c(h55Var.v()), "User property has no value, property");
                } else if (nz4VarW.t()) {
                    String strX = h55Var.x();
                    wz4 wz4VarU = nz4VarW.u();
                    r45.l(a25Var);
                    boolG = m1.g(m1.h(strX, wz4VarU, a25Var), zY2);
                } else if (!nz4VarW.v()) {
                    r45.l(a25Var);
                    a25Var.i.b(p15Var.c(h55Var.v()), "No string or number filter defined. property");
                } else if (ub5.Z(h55Var.x())) {
                    String strX2 = h55Var.x();
                    rz4 rz4VarW = nz4VarW.w();
                    if (ub5.Z(strX2)) {
                        try {
                            boolI = m1.i(new BigDecimal(strX2), rz4VarW, 0.0d);
                        } catch (NumberFormatException unused) {
                            boolI = null;
                        }
                        boolG = m1.g(boolI, zY2);
                    } else {
                        boolI = null;
                        boolG = m1.g(boolI, zY2);
                    }
                } else {
                    r45.l(a25Var);
                    a25Var.i.c(p15Var.c(h55Var.v()), h55Var.x(), "Invalid user property value for Numeric number filter. property, value");
                }
                boolG = null;
            } else if (nz4VarW.v()) {
                double D = h55Var.D();
                try {
                    boolI2 = m1.i(new BigDecimal(D), nz4VarW.w(), Math.ulp(D));
                } catch (NumberFormatException unused2) {
                    boolI2 = null;
                }
                boolG = m1.g(boolI2, zY2);
            } else {
                r45.l(a25Var);
                a25Var.i.b(p15Var.c(h55Var.v()), "No number filter for double property. property");
                boolG = null;
            }
        } else if (nz4VarW.v()) {
            z2 = zA;
            try {
                boolI3 = m1.i(new BigDecimal(h55Var.z()), nz4VarW.w(), 0.0d);
            } catch (NumberFormatException unused3) {
                boolI3 = null;
            }
            boolG = m1.g(boolI3, zY2);
        } else {
            r45.l(a25Var);
            a25Var.i.b(p15Var.c(h55Var.v()), "No number filter for long property. property");
            z2 = zA;
            boolG = null;
        }
        r45.l(a25Var);
        a25Var.n.b(boolG == null ? "null" : boolG, "Property filter result");
        if (boolG == null) {
            return false;
        }
        this.c = Boolean.TRUE;
        if (!z2 || boolG.booleanValue()) {
            if (!z || uz4Var.x()) {
                this.d = boolG;
            }
            if (boolG.booleanValue() && z3 && h55Var.t()) {
                long jU = h55Var.u();
                if (l != null) {
                    jU = l.longValue();
                }
                if (zG && uz4Var.x() && !uz4Var.y() && l2 != null) {
                    jU = l2.longValue();
                }
                if (uz4Var.y()) {
                    this.f = Long.valueOf(jU);
                } else {
                    this.e = Long.valueOf(jU);
                }
            }
        }
        return true;
    }
}
