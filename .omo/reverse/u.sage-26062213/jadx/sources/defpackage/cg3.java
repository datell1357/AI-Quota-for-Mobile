package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cg3 extends bv3 implements df1 {
    public long r;
    public int s;
    public /* synthetic */ long t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ dg3 f49u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cg3(dg3 dg3Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.f49u = dg3Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        long j = ((ra4) obj).a;
        cg3 cg3Var = new cg3(this.f49u, (dh0) obj2);
        cg3Var.t = j;
        return cg3Var.q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        cg3 cg3Var = new cg3(this.f49u, dh0Var);
        cg3Var.t = ((ra4) obj).a;
        return cg3Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r15) {
        /*
            r14 = this;
            int r0 = r14.s
            r1 = 3
            r2 = 2
            r3 = 1
            dg3 r4 = r14.f49u
            ri0 r5 = defpackage.ri0.n
            if (r0 == 0) goto L2e
            if (r0 == r3) goto L28
            if (r0 == r2) goto L20
            if (r0 != r1) goto L19
            long r0 = r14.r
            long r2 = r14.t
            defpackage.gg4.T(r15)
            goto L70
        L19:
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r14)
            r14 = 0
            return r14
        L20:
            long r2 = r14.r
            long r6 = r14.t
            defpackage.gg4.T(r15)
            goto L56
        L28:
            long r6 = r14.t
            defpackage.gg4.T(r15)
            goto L40
        L2e:
            defpackage.gg4.T(r15)
            long r6 = r14.t
            tk2 r15 = r4.f
            r14.t = r6
            r14.s = r3
            java.lang.Object r15 = r15.b(r6, r14)
            if (r15 != r5) goto L40
            goto L6d
        L40:
            ra4 r15 = (defpackage.ra4) r15
            long r8 = r15.a
            long r8 = defpackage.ra4.d(r6, r8)
            r14.t = r6
            r14.r = r8
            r14.s = r2
            java.lang.Object r15 = r4.a(r8, r14)
            if (r15 != r5) goto L55
            goto L6d
        L55:
            r2 = r8
        L56:
            ra4 r15 = (defpackage.ra4) r15
            long r11 = r15.a
            tk2 r8 = r4.f
            long r9 = defpackage.ra4.d(r2, r11)
            r14.t = r6
            r14.r = r11
            r14.s = r1
            r13 = r14
            java.lang.Object r15 = r8.a(r9, r11, r13)
            if (r15 != r5) goto L6e
        L6d:
            return r5
        L6e:
            r2 = r6
            r0 = r11
        L70:
            ra4 r15 = (defpackage.ra4) r15
            long r14 = r15.a
            long r14 = defpackage.ra4.d(r0, r14)
            long r14 = defpackage.ra4.d(r2, r14)
            ra4 r0 = new ra4
            r0.<init>(r14)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cg3.q(java.lang.Object):java.lang.Object");
    }
}
