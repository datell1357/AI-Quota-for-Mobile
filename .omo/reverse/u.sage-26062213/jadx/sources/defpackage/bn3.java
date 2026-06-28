package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bn3 implements vs1 {
    public final hh2 a = new hh2();
    public final jj b = new jj(0);
    public final mt c = new mt(3, new kc(2, null, 2));

    public bn3(String str) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x005d, code lost:
    
        if (r8 == r5) goto L25;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r6v0, types: [bn3] */
    /* JADX WARN: Type inference failed for: r6v1, types: [fh2] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v4, types: [fh2] */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // defpackage.vs1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(defpackage.pe1 r7, defpackage.fh0 r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof defpackage.zm3
            if (r0 == 0) goto L13
            r0 = r8
            zm3 r0 = (defpackage.zm3) r0
            int r1 = r0.f441u
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f441u = r1
            goto L18
        L13:
            zm3 r0 = new zm3
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.s
            int r1 = r0.f441u
            r2 = 2
            r3 = 1
            r4 = 0
            ri0 r5 = defpackage.ri0.n
            if (r1 == 0) goto L41
            if (r1 == r3) goto L37
            if (r1 != r2) goto L31
            java.lang.Object r6 = r0.q
            fh2 r6 = (defpackage.fh2) r6
            defpackage.gg4.T(r8)     // Catch: java.lang.Throwable -> L2f
            goto L60
        L2f:
            r7 = move-exception
            goto L64
        L31:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r6)
            return r4
        L37:
            hh2 r6 = r0.r
            java.lang.Object r7 = r0.q
            pe1 r7 = (defpackage.pe1) r7
            defpackage.gg4.T(r8)
            goto L53
        L41:
            defpackage.gg4.T(r8)
            r0.q = r7
            hh2 r6 = r6.a
            r0.r = r6
            r0.f441u = r3
            java.lang.Object r8 = r6.j(r0)
            if (r8 != r5) goto L53
            goto L5f
        L53:
            r0.q = r6     // Catch: java.lang.Throwable -> L2f
            r0.r = r4     // Catch: java.lang.Throwable -> L2f
            r0.f441u = r2     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r8 = r7.k(r0)     // Catch: java.lang.Throwable -> L2f
            if (r8 != r5) goto L60
        L5f:
            return r5
        L60:
            r6.b(r4)
            return r8
        L64:
            r6.b(r4)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bn3.a(pe1, fh0):java.lang.Object");
    }

    @Override // defpackage.vs1
    public final Object b(fh0 fh0Var) {
        return new Integer(this.b.a.get());
    }

    @Override // defpackage.vs1
    public final Object c(en0 en0Var) {
        return new Integer(this.b.a.incrementAndGet());
    }

    @Override // defpackage.vs1
    public final a81 d() {
        return this.c;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // defpackage.vs1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(defpackage.df1 r6, defpackage.fh0 r7) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r7 instanceof defpackage.an3
            if (r0 == 0) goto L13
            r0 = r7
            an3 r0 = (defpackage.an3) r0
            int r1 = r0.f10u
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f10u = r1
            goto L18
        L13:
            an3 r0 = new an3
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.s
            int r1 = r0.f10u
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L32
            if (r1 != r2) goto L2c
            boolean r5 = r0.r
            hh2 r6 = r0.q
            defpackage.gg4.T(r7)     // Catch: java.lang.Throwable -> L2a
            goto L52
        L2a:
            r7 = move-exception
            goto L5d
        L2c:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r5)
            return r3
        L32:
            defpackage.gg4.T(r7)
            hh2 r5 = r5.a
            boolean r7 = r5.g()
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r7)     // Catch: java.lang.Throwable -> L58
            r0.q = r5     // Catch: java.lang.Throwable -> L58
            r0.r = r7     // Catch: java.lang.Throwable -> L58
            r0.f10u = r2     // Catch: java.lang.Throwable -> L58
            java.lang.Object r6 = r6.f(r1, r0)     // Catch: java.lang.Throwable -> L58
            ri0 r0 = defpackage.ri0.n
            if (r6 != r0) goto L4e
            return r0
        L4e:
            r4 = r6
            r6 = r5
            r5 = r7
            r7 = r4
        L52:
            if (r5 == 0) goto L57
            r6.b(r3)
        L57:
            return r7
        L58:
            r6 = move-exception
            r4 = r6
            r6 = r5
            r5 = r7
            r7 = r4
        L5d:
            if (r5 == 0) goto L62
            r6.b(r3)
        L62:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bn3.e(df1, fh0):java.lang.Object");
    }
}
