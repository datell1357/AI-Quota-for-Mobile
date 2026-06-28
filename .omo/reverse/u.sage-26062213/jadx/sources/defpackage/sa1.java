package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sa1 implements qa1 {
    public final qv3 a;
    public final cb b;
    public final xh1 c;
    public final wa1 d;
    public final dd1 e;

    public sa1(qv3 qv3Var, cb cbVar) {
        xh1 xh1Var = ta1.a;
        wa1 wa1Var = new wa1();
        va1 va1Var = wa1.a;
        xi1 xi1Var = yu0.a;
        va1Var.getClass();
        dm0.c(ca.B(va1Var, xi1Var).F(d01.n).F(new bu3(null)));
        dd1 dd1Var = new dd1(9);
        this.a = qv3Var;
        this.b = cbVar;
        this.c = xh1Var;
        this.d = wa1Var;
        this.e = dd1Var;
        new v(10, this);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0087 A[Catch: Exception -> 0x008f, TRY_ENTER, TryCatch #1 {Exception -> 0x008f, blocks: (B:15:0x0028, B:17:0x003b, B:20:0x0040, B:22:0x0044, B:28:0x005e, B:45:0x0087, B:46:0x008e, B:23:0x004b, B:25:0x004f, B:27:0x005a), top: B:54:0x0028 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.c54 a(defpackage.b54 r6) {
        /*
            r5 = this;
            xh1 r0 = r5.c
            java.lang.Object r1 = r0.n
            pr3 r1 = (defpackage.pr3) r1
            monitor-enter(r1)
            java.lang.Object r2 = r0.o     // Catch: java.lang.Throwable -> L24
            s82 r2 = (defpackage.s82) r2     // Catch: java.lang.Throwable -> L24
            java.lang.Object r2 = r2.b(r6)     // Catch: java.lang.Throwable -> L24
            c54 r2 = (defpackage.c54) r2     // Catch: java.lang.Throwable -> L24
            if (r2 == 0) goto L27
            boolean r3 = r2.o     // Catch: java.lang.Throwable -> L24
            if (r3 == 0) goto L19
            monitor-exit(r1)
            return r2
        L19:
            java.lang.Object r2 = r0.o     // Catch: java.lang.Throwable -> L24
            s82 r2 = (defpackage.s82) r2     // Catch: java.lang.Throwable -> L24
            java.lang.Object r2 = r2.d(r6)     // Catch: java.lang.Throwable -> L24
            c54 r2 = (defpackage.c54) r2     // Catch: java.lang.Throwable -> L24
            goto L27
        L24:
            r5 = move-exception
            goto L98
        L27:
            monitor-exit(r1)
            wa1 r1 = r5.d     // Catch: java.lang.Exception -> L8f
            r1.getClass()     // Catch: java.lang.Exception -> L8f
            ra1 r1 = r6.a     // Catch: java.lang.Exception -> L8f
            dd1 r5 = r5.e     // Catch: java.lang.Exception -> L8f
            java.lang.Object r5 = r5.o     // Catch: java.lang.Exception -> L8f
            rv2 r5 = (defpackage.rv2) r5     // Catch: java.lang.Exception -> L8f
            int r2 = r6.c     // Catch: java.lang.Exception -> L8f
            pb1 r3 = r6.b     // Catch: java.lang.Exception -> L8f
            if (r1 == 0) goto L5a
            boolean r4 = r1 instanceof defpackage.uo0     // Catch: java.lang.Exception -> L8f
            if (r4 == 0) goto L40
            goto L5a
        L40:
            boolean r4 = r1 instanceof defpackage.vg1     // Catch: java.lang.Exception -> L8f
            if (r4 == 0) goto L4b
            vg1 r1 = (defpackage.vg1) r1     // Catch: java.lang.Exception -> L8f
            android.graphics.Typeface r5 = r5.f(r1, r3, r2)     // Catch: java.lang.Exception -> L8f
            goto L5e
        L4b:
            boolean r5 = r1 instanceof defpackage.e52     // Catch: java.lang.Exception -> L8f
            if (r5 == 0) goto L58
            e52 r1 = (defpackage.e52) r1     // Catch: java.lang.Exception -> L8f
            dh1 r5 = r1.e     // Catch: java.lang.Exception -> L8f
            java.lang.Object r5 = r5.n     // Catch: java.lang.Exception -> L8f
            android.graphics.Typeface r5 = (android.graphics.Typeface) r5     // Catch: java.lang.Exception -> L8f
            goto L5e
        L58:
            r5 = 0
            goto L64
        L5a:
            android.graphics.Typeface r5 = r5.c(r3, r2)     // Catch: java.lang.Exception -> L8f
        L5e:
            c54 r1 = new c54     // Catch: java.lang.Exception -> L8f
            r1.<init>(r5)     // Catch: java.lang.Exception -> L8f
            r5 = r1
        L64:
            if (r5 == 0) goto L87
            java.lang.Object r1 = r0.n
            pr3 r1 = (defpackage.pr3) r1
            monitor-enter(r1)
            java.lang.Object r2 = r0.o     // Catch: java.lang.Throwable -> L81
            s82 r2 = (defpackage.s82) r2     // Catch: java.lang.Throwable -> L81
            java.lang.Object r2 = r2.b(r6)     // Catch: java.lang.Throwable -> L81
            if (r2 != 0) goto L83
            boolean r2 = r5.o     // Catch: java.lang.Throwable -> L81
            if (r2 == 0) goto L83
            java.lang.Object r0 = r0.o     // Catch: java.lang.Throwable -> L81
            s82 r0 = (defpackage.s82) r0     // Catch: java.lang.Throwable -> L81
            r0.c(r6, r5)     // Catch: java.lang.Throwable -> L81
            goto L83
        L81:
            r5 = move-exception
            goto L85
        L83:
            monitor-exit(r1)
            return r5
        L85:
            monitor-exit(r1)
            throw r5
        L87:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Exception -> L8f
            java.lang.String r6 = "Could not load font"
            r5.<init>(r6)     // Catch: java.lang.Exception -> L8f
            throw r5     // Catch: java.lang.Exception -> L8f
        L8f:
            r5 = move-exception
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "Could not load font"
            r6.<init>(r0, r5)
            throw r6
        L98:
            monitor-exit(r1)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sa1.a(b54):c54");
    }

    public final c54 b(ra1 ra1Var, pb1 pb1Var, int i, int i2) {
        cb cbVar = this.b;
        cbVar.getClass();
        int i3 = cbVar.n;
        pb1 pb1Var2 = (i3 == 0 || i3 == Integer.MAX_VALUE) ? pb1Var : new pb1(ix.k(pb1Var.n + i3, 1, 1000));
        this.a.getClass();
        return a(new b54(ra1Var, pb1Var2, i, i2, null));
    }
}
