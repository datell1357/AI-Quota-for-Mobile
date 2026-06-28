package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class tu0 {
    public static final sg0 a;
    public static final sg0 b;

    static {
        int i = 3;
        a = new sg0("UNDEFINED", i);
        b = new sg0("REUSABLE_CLAIMED", i);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008a A[Catch: all -> 0x0069, DONT_GENERATE, TryCatch #2 {all -> 0x0069, blocks: (B:16:0x0049, B:18:0x0057, B:20:0x005d, B:33:0x008d, B:23:0x006b, B:25:0x0079, B:30:0x0084, B:32:0x008a, B:38:0x009a, B:41:0x00a3, B:40:0x00a0, B:28:0x007f), top: B:54:0x0049, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(defpackage.dh0 r9, java.lang.Object r10) throws defpackage.ru0 {
        /*
            boolean r0 = r9 instanceof defpackage.su0
            if (r0 == 0) goto Lae
            su0 r9 = (defpackage.su0) r9
            ji0 r0 = r9.q
            fh0 r1 = r9.r
            java.lang.Throwable r2 = defpackage.g83.a(r10)
            if (r2 != 0) goto L12
            r3 = r10
            goto L18
        L12:
            c90 r3 = new c90
            r4 = 0
            r3.<init>(r2, r4)
        L18:
            hi0 r2 = r1.e()
            boolean r2 = c(r0, r2)
            r4 = 1
            if (r2 == 0) goto L2f
            r9.s = r3
            r9.p = r4
            hi0 r10 = r1.e()
            b(r0, r10, r9)
            return
        L2f:
            l21 r0 = defpackage.my3.a()
            long r5 = r0.p
            r7 = 4294967296(0x100000000, double:2.121995791E-314)
            int r2 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r2 < 0) goto L46
            r9.s = r3
            r9.p = r4
            r0.s0(r9)
            goto La8
        L46:
            r0.t0(r4)
            hi0 r2 = r1.e()     // Catch: java.lang.Throwable -> L69
            mj1 r3 = defpackage.mj1.W     // Catch: java.lang.Throwable -> L69
            fi0 r2 = r2.K(r3)     // Catch: java.lang.Throwable -> L69
            tu1 r2 = (defpackage.tu1) r2     // Catch: java.lang.Throwable -> L69
            if (r2 == 0) goto L6b
            boolean r3 = r2.b()     // Catch: java.lang.Throwable -> L69
            if (r3 != 0) goto L6b
            java.util.concurrent.CancellationException r10 = r2.N()     // Catch: java.lang.Throwable -> L69
            f83 r10 = defpackage.gg4.q(r10)     // Catch: java.lang.Throwable -> L69
            r9.g(r10)     // Catch: java.lang.Throwable -> L69
            goto L8d
        L69:
            r10 = move-exception
            goto La4
        L6b:
            java.lang.Object r2 = r9.t     // Catch: java.lang.Throwable -> L69
            hi0 r3 = r1.e()     // Catch: java.lang.Throwable -> L69
            java.lang.Object r2 = defpackage.iy3.c(r3, r2)     // Catch: java.lang.Throwable -> L69
            sg0 r5 = defpackage.iy3.a     // Catch: java.lang.Throwable -> L69
            if (r2 == r5) goto L7e
            o64 r5 = defpackage.ix.b0(r1, r3, r2)     // Catch: java.lang.Throwable -> L69
            goto L7f
        L7e:
            r5 = 0
        L7f:
            r1.g(r10)     // Catch: java.lang.Throwable -> L97
            if (r5 == 0) goto L8a
            boolean r10 = r5.u0()     // Catch: java.lang.Throwable -> L69
            if (r10 == 0) goto L8d
        L8a:
            defpackage.iy3.a(r3, r2)     // Catch: java.lang.Throwable -> L69
        L8d:
            boolean r10 = r0.v0()     // Catch: java.lang.Throwable -> L69
            if (r10 != 0) goto L8d
        L93:
            r0.r0(r4)
            goto La8
        L97:
            r10 = move-exception
            if (r5 == 0) goto La0
            boolean r1 = r5.u0()     // Catch: java.lang.Throwable -> L69
            if (r1 == 0) goto La3
        La0:
            defpackage.iy3.a(r3, r2)     // Catch: java.lang.Throwable -> L69
        La3:
            throw r10     // Catch: java.lang.Throwable -> L69
        La4:
            r9.k(r10)     // Catch: java.lang.Throwable -> La9
            goto L93
        La8:
            return
        La9:
            r9 = move-exception
            r0.r0(r4)
            throw r9
        Lae:
            r9.g(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tu0.a(dh0, java.lang.Object):void");
    }

    public static final void b(ji0 ji0Var, hi0 hi0Var, Runnable runnable) throws ru0 {
        try {
            ji0Var.n0(hi0Var, runnable);
        } catch (Throwable th) {
            throw new ru0(th, ji0Var, hi0Var);
        }
    }

    public static final boolean c(ji0 ji0Var, hi0 hi0Var) throws ru0 {
        try {
            return ji0Var.p0(hi0Var);
        } catch (Throwable th) {
            throw new ru0(th, ji0Var, hi0Var);
        }
    }
}
