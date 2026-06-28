package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tk2 {
    public xk2 a;
    public xk2 b;
    public ne1 c = new je(9, this);
    public qi0 d;

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0052, code lost:
    
        if (r0 == r1) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006b, code lost:
    
        if (r0 == r1) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006d, code lost:
    
        return r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(long r8, long r10, defpackage.fh0 r12) {
        /*
            r7 = this;
            boolean r0 = r12 instanceof defpackage.rk2
            if (r0 == 0) goto L14
            r0 = r12
            rk2 r0 = (defpackage.rk2) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.s = r1
        L12:
            r12 = r0
            goto L1a
        L14:
            rk2 r0 = new rk2
            r0.<init>(r7, r12)
            goto L12
        L1a:
            java.lang.Object r0 = r12.q
            int r1 = r12.s
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L35
            if (r1 == r4) goto L31
            if (r1 != r3) goto L2b
            defpackage.gg4.T(r0)
            goto L6e
        L2b:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r7)
            return r2
        L31:
            defpackage.gg4.T(r0)
            goto L55
        L35:
            defpackage.gg4.T(r0)
            xk2 r0 = r7.a
            if (r0 == 0) goto L41
            xk2 r0 = r0.H0()
            goto L42
        L41:
            r0 = r2
        L42:
            r5 = 0
            ri0 r1 = defpackage.ri0.n
            if (r0 != 0) goto L5a
            xk2 r7 = r7.b
            if (r7 == 0) goto L72
            r12.s = r4
            java.lang.Object r0 = r7.I(r8, r10, r12)
            if (r0 != r1) goto L55
            goto L6d
        L55:
            ra4 r0 = (defpackage.ra4) r0
            long r5 = r0.a
            goto L72
        L5a:
            xk2 r7 = r7.a
            if (r7 == 0) goto L62
            xk2 r2 = r7.H0()
        L62:
            r7 = r2
            if (r7 == 0) goto L72
            r12.s = r3
            java.lang.Object r0 = r7.I(r8, r10, r12)
            if (r0 != r1) goto L6e
        L6d:
            return r1
        L6e:
            ra4 r0 = (defpackage.ra4) r0
            long r5 = r0.a
        L72:
            ra4 r7 = new ra4
            r7.<init>(r5)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tk2.a(long, long, fh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(long r5, defpackage.fh0 r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof defpackage.sk2
            if (r0 == 0) goto L13
            r0 = r7
            sk2 r0 = (defpackage.sk2) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            sk2 r0 = new sk2
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.q
            int r1 = r0.s
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2c
            if (r1 != r3) goto L26
            defpackage.gg4.T(r7)
            goto L44
        L26:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            return r2
        L2c:
            defpackage.gg4.T(r7)
            xk2 r4 = r4.a
            if (r4 == 0) goto L37
            xk2 r2 = r4.H0()
        L37:
            if (r2 == 0) goto L49
            r0.s = r3
            java.lang.Object r7 = r2.T(r5, r0)
            ri0 r4 = defpackage.ri0.n
            if (r7 != r4) goto L44
            return r4
        L44:
            ra4 r7 = (defpackage.ra4) r7
            long r4 = r7.a
            goto L4b
        L49:
            r4 = 0
        L4b:
            ra4 r6 = new ra4
            r6.<init>(r4)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tk2.b(long, fh0):java.lang.Object");
    }

    public final qi0 c() {
        qi0 qi0Var = (qi0) this.c.a();
        if (qi0Var != null) {
            return qi0Var;
        }
        k21.n("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
        return null;
    }
}
