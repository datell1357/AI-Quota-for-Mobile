package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class r30 extends p30 {
    public final a81 q;

    public r30(a81 a81Var, hi0 hi0Var, int i, vy vyVar) {
        super(hi0Var, i, vyVar);
        this.q = a81Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006d  */
    @Override // defpackage.p30, defpackage.a81
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(defpackage.b81 r6, defpackage.dh0 r7) {
        /*
            r5 = this;
            int r0 = r5.o
            r1 = -3
            ri0 r2 = defpackage.ri0.n
            if (r0 != r1) goto L6d
            hi0 r0 = r7.e()
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            ei0 r3 = new ei0
            r4 = 1
            r3.<init>(r4)
            hi0 r4 = r5.n
            java.lang.Object r1 = r4.R(r3, r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 != 0) goto L26
            hi0 r1 = r0.F(r4)
            goto L2b
        L26:
            r1 = 0
            hi0 r1 = defpackage.ix.s(r0, r4, r1)
        L2b:
            boolean r3 = defpackage.nt1.g(r1, r0)
            if (r3 == 0) goto L38
            java.lang.Object r5 = r5.h(r6, r7)
            if (r5 != r2) goto L74
            return r5
        L38:
            w13 r3 = defpackage.w13.s
            fi0 r4 = r1.K(r3)
            fi0 r0 = r0.K(r3)
            boolean r0 = defpackage.nt1.g(r4, r0)
            if (r0 == 0) goto L6d
            hi0 r0 = r7.e()
            boolean r3 = r6 instanceof defpackage.zh3
            if (r3 != 0) goto L5b
            boolean r3 = r6 instanceof defpackage.ym2
            if (r3 == 0) goto L55
            goto L5b
        L55:
            ke r3 = new ke
            r3.<init>(r6, r0)
            r6 = r3
        L5b:
            n r0 = new n
            r3 = 0
            r4 = 7
            r0.<init>(r5, r3, r4)
            java.lang.Object r5 = defpackage.iy3.b(r1)
            java.lang.Object r5 = defpackage.ca.P(r1, r6, r5, r0, r7)
            if (r5 != r2) goto L74
            return r5
        L6d:
            java.lang.Object r5 = super.b(r6, r7)
            if (r5 != r2) goto L74
            return r5
        L74:
            t64 r5 = defpackage.t64.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r30.b(b81, dh0):java.lang.Object");
    }

    @Override // defpackage.p30
    public final Object d(hz2 hz2Var, dh0 dh0Var) {
        Object objH = h(new zh3(hz2Var), dh0Var);
        return objH == ri0.n ? objH : t64.a;
    }

    public abstract Object h(b81 b81Var, dh0 dh0Var);

    @Override // defpackage.p30
    public final String toString() {
        return this.q + " -> " + super.toString();
    }
}
