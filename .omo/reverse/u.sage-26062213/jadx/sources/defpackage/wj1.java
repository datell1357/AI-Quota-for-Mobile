package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wj1 {
    public final gy1 a;
    public boolean b;
    public boolean c;
    public boolean d;
    public boolean e;
    public final dg2 f = new dg2();
    public final rm2 g = new rm2();
    public final yf2 h = new yf2(10);

    public wj1(gy1 gy1Var) {
        this.a = gy1Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r19, java.util.List r21, boolean r22) {
        /*
            Method dump skipped, instruction units count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wj1.a(long, java.util.List, boolean):void");
    }

    public final boolean b(ft1 ft1Var, boolean z) {
        e82 e82Var = (e82) ft1Var.p;
        gy1 gy1Var = this.a;
        rm2 rm2Var = this.g;
        boolean zA = rm2Var.a(e82Var, gy1Var, ft1Var, z);
        ug2 ug2Var = rm2Var.a;
        if (!zA) {
            return false;
        }
        boolean z2 = true;
        this.b = true;
        Object[] objArr = ug2Var.n;
        int i = ug2Var.p;
        boolean z3 = false;
        for (int i2 = 0; i2 < i; i2++) {
            z3 = ((gm2) objArr[i2]).e(ft1Var, z) || z3;
        }
        Object[] objArr2 = ug2Var.n;
        int i3 = ug2Var.p;
        boolean z4 = false;
        for (int i4 = 0; i4 < i3; i4++) {
            z4 = ((gm2) objArr2[i4]).d(ft1Var) || z4;
        }
        rm2Var.b(ft1Var);
        if (!z4 && !z3) {
            z2 = false;
        }
        this.b = false;
        if (this.e) {
            this.e = false;
            dg2 dg2Var = this.f;
            int i5 = dg2Var.b;
            for (int i6 = 0; i6 < i5; i6++) {
                d((md2) dg2Var.f(i6));
            }
            dg2Var.d();
        }
        if (this.c) {
            this.c = false;
            c();
        }
        if (this.d) {
            this.d = false;
            rm2Var.a.h();
        }
        return z2;
    }

    public final void c() {
        if (this.b) {
            this.c = true;
            return;
        }
        rm2 rm2Var = this.g;
        ug2 ug2Var = rm2Var.a;
        Object[] objArr = ug2Var.n;
        int i = ug2Var.p;
        for (int i2 = 0; i2 < i; i2++) {
            ((gm2) objArr[i2]).c();
        }
        if (this.d) {
            this.d = true;
        } else {
            rm2Var.a.h();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void d(md2 md2Var) {
        if (this.b) {
            this.e = true;
            this.f.a(md2Var);
            return;
        }
        rm2 rm2Var = this.g;
        dg2 dg2Var = rm2Var.b;
        dg2Var.d();
        dg2Var.a(rm2Var);
        while (dg2Var.i()) {
            rm2 rm2Var2 = (rm2) dg2Var.k(dg2Var.b - 1);
            int i = 0;
            while (true) {
                ug2 ug2Var = rm2Var2.a;
                if (i < ug2Var.p) {
                    gm2 gm2Var = (gm2) ug2Var.n[i];
                    if (nt1.g(gm2Var.c, md2Var)) {
                        rm2Var2.a.k(gm2Var);
                        gm2Var.c();
                    } else {
                        dg2Var.a(gm2Var);
                        i++;
                    }
                }
            }
        }
    }
}
