package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k81 implements a81 {
    public final /* synthetic */ int n;
    public final /* synthetic */ a81 o;
    public final /* synthetic */ df1 p;

    public k81(a81 a81Var, df1 df1Var) {
        this.n = 0;
        this.p = df1Var;
        this.o = a81Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.a81
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(defpackage.b81 r9, defpackage.dh0 r10) {
        /*
            r8 = this;
            int r0 = r8.n
            r1 = 2
            a81 r2 = r8.o
            t64 r3 = defpackage.t64.a
            ri0 r4 = defpackage.ri0.n
            df1 r5 = r8.p
            switch(r0) {
                case 0: goto L2e;
                case 1: goto L1c;
                default: goto Le;
            }
        Le:
            uq r8 = new uq
            r0 = 6
            r8.<init>(r0, r9, r5)
            java.lang.Object r8 = r2.b(r8, r10)
            if (r8 != r4) goto L1b
            r3 = r8
        L1b:
            return r3
        L1c:
            s33 r8 = new s33
            r8.<init>()
            ke r0 = new ke
            r0.<init>(r8, r9, r5, r1)
            java.lang.Object r8 = r2.b(r0, r10)
            if (r8 != r4) goto L2d
            r3 = r8
        L2d:
            return r3
        L2e:
            boolean r0 = r10 instanceof defpackage.j81
            if (r0 == 0) goto L41
            r0 = r10
            j81 r0 = (defpackage.j81) r0
            int r2 = r0.r
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            r7 = r2 & r6
            if (r7 == 0) goto L41
            int r2 = r2 - r6
            r0.r = r2
            goto L46
        L41:
            j81 r0 = new j81
            r0.<init>(r8, r10)
        L46:
            java.lang.Object r10 = r0.q
            int r2 = r0.r
            r6 = 0
            r7 = 1
            if (r2 == 0) goto L69
            if (r2 == r7) goto L5d
            if (r2 != r1) goto L56
            defpackage.gg4.T(r10)
            goto L9b
        L56:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r8)
            r3 = r6
            goto L9b
        L5d:
            sb3 r8 = r0.v
            b81 r9 = r0.f145u
            k81 r2 = r0.t
            defpackage.gg4.T(r10)     // Catch: java.lang.Throwable -> L67
            goto L87
        L67:
            r9 = move-exception
            goto L9e
        L69:
            defpackage.gg4.T(r10)
            sb3 r10 = new sb3
            hi0 r2 = r0.o
            r2.getClass()
            r10.<init>(r9, r2)
            r0.t = r8     // Catch: java.lang.Throwable -> L9c
            r0.f145u = r9     // Catch: java.lang.Throwable -> L9c
            r0.v = r10     // Catch: java.lang.Throwable -> L9c
            r0.r = r7     // Catch: java.lang.Throwable -> L9c
            java.lang.Object r2 = r5.f(r10, r0)     // Catch: java.lang.Throwable -> L9c
            if (r2 != r4) goto L85
            goto L9a
        L85:
            r2 = r8
            r8 = r10
        L87:
            r8.s()
            a81 r8 = r2.o
            r0.t = r6
            r0.f145u = r6
            r0.v = r6
            r0.r = r1
            java.lang.Object r8 = r8.b(r9, r0)
            if (r8 != r4) goto L9b
        L9a:
            r3 = r4
        L9b:
            return r3
        L9c:
            r9 = move-exception
            r8 = r10
        L9e:
            r8.s()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k81.b(b81, dh0):java.lang.Object");
    }

    public /* synthetic */ k81(a81 a81Var, df1 df1Var, int i) {
        this.n = i;
        this.o = a81Var;
        this.p = df1Var;
    }
}
