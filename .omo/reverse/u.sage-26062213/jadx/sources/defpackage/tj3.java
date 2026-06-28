package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tj3 {
    public static final double f = Math.random();
    public static final /* synthetic */ int g = 0;
    public final e61 a;
    public final n61 b;
    public final gk3 c;
    public final h21 d;
    public final hi0 e;

    public tj3(e61 e61Var, n61 n61Var, gk3 gk3Var, h21 h21Var, hi0 hi0Var) {
        e61Var.getClass();
        n61Var.getClass();
        gk3Var.getClass();
        h21Var.getClass();
        hi0Var.getClass();
        this.a = e61Var;
        this.b = n61Var;
        this.c = gk3Var;
        this.d = h21Var;
        this.e = hi0Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x007b, code lost:
    
        if (r0.b(r1) == r5) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(defpackage.tj3 r6, defpackage.fh0 r7) {
        /*
            gk3 r0 = r6.c
            boolean r1 = r7 instanceof defpackage.sj3
            if (r1 == 0) goto L15
            r1 = r7
            sj3 r1 = (defpackage.sj3) r1
            int r2 = r1.s
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.s = r2
            goto L1a
        L15:
            sj3 r1 = new sj3
            r1.<init>(r6, r7)
        L1a:
            java.lang.Object r6 = r1.q
            int r7 = r1.s
            r2 = 2
            r3 = 1
            java.lang.String r4 = "FirebaseSessions"
            ri0 r5 = defpackage.ri0.n
            if (r7 == 0) goto L39
            if (r7 == r3) goto L35
            if (r7 != r2) goto L2e
            defpackage.gg4.T(r6)
            goto L7e
        L2e:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r6)
            r6 = 0
            return r6
        L35:
            defpackage.gg4.T(r6)
            goto L47
        L39:
            defpackage.gg4.T(r6)
            f71 r6 = defpackage.f71.a
            r1.s = r3
            java.lang.Object r6 = r6.b(r1)
            if (r6 != r5) goto L47
            goto L7d
        L47:
            java.util.Map r6 = (java.util.Map) r6
            java.util.Collection r6 = r6.values()
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            boolean r7 = r6 instanceof java.util.Collection
            if (r7 == 0) goto L5d
            r7 = r6
            java.util.Collection r7 = (java.util.Collection) r7
            boolean r7 = r7.isEmpty()
            if (r7 == 0) goto L5d
            goto Lb3
        L5d:
            java.util.Iterator r6 = r6.iterator()
        L61:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto Lb3
            java.lang.Object r7 = r6.next()
            aj0 r7 = (defpackage.aj0) r7
            bm0 r7 = r7.a
            boolean r7 = r7.a()
            if (r7 == 0) goto L61
            r1.s = r2
            java.lang.Object r6 = r0.b(r1)
            if (r6 != r5) goto L7e
        L7d:
            return r5
        L7e:
            sk3 r6 = r0.a
            java.lang.Boolean r6 = r6.a()
            if (r6 == 0) goto L8b
        L86:
            boolean r3 = r6.booleanValue()
            goto L94
        L8b:
            sk3 r6 = r0.b
            java.lang.Boolean r6 = r6.a()
            if (r6 == 0) goto L94
            goto L86
        L94:
            if (r3 != 0) goto L9e
            java.lang.String r6 = "Sessions SDK disabled through settings API. Events will not be sent."
            android.util.Log.d(r4, r6)
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            return r6
        L9e:
            double r6 = defpackage.tj3.f
            double r0 = r0.a()
            int r6 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r6 > 0) goto Lab
            java.lang.Boolean r6 = java.lang.Boolean.TRUE
            return r6
        Lab:
            java.lang.String r6 = "Sessions SDK has dropped this session due to sampling."
            android.util.Log.d(r4, r6)
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            return r6
        Lb3:
            java.lang.String r6 = "Sessions SDK disabled through data collection. Events will not be sent."
            android.util.Log.d(r4, r6)
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tj3.a(tj3, fh0):java.lang.Object");
    }
}
