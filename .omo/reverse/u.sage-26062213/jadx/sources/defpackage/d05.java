package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d05 {
    public static final Object f = new Object();
    public final String a;
    public final mu4 b;
    public final Object c;
    public final Object d = new Object();
    public volatile Object e = null;

    public /* synthetic */ d05(String str, Object obj, mu4 mu4Var) {
        this.a = str;
        this.c = obj;
        this.b = mu4Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x005f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.Object r4) {
        /*
            r3 = this;
            java.lang.Object r0 = r3.d
            monitor-enter(r0)
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L66
            if (r4 == 0) goto L7
            return r4
        L7:
            pr3 r4 = defpackage.ye4.a
            if (r4 != 0) goto Le
            java.lang.Object r3 = r3.c
            return r3
        Le:
            java.lang.Object r4 = defpackage.d05.f
            monitor-enter(r4)
            boolean r0 = defpackage.pr3.l()     // Catch: java.lang.Throwable -> L1e
            if (r0 == 0) goto L24
            java.lang.Object r0 = r3.e     // Catch: java.lang.Throwable -> L1e
            if (r0 != 0) goto L20
            java.lang.Object r3 = r3.c     // Catch: java.lang.Throwable -> L1e
            goto L22
        L1e:
            r3 = move-exception
            goto L64
        L20:
            java.lang.Object r3 = r3.e     // Catch: java.lang.Throwable -> L1e
        L22:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L1e
            return r3
        L24:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L1e
            java.util.List r4 = defpackage.e05.a     // Catch: java.lang.SecurityException -> L58
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.SecurityException -> L58
        L2b:
            boolean r0 = r4.hasNext()     // Catch: java.lang.SecurityException -> L58
            if (r0 == 0) goto L58
            java.lang.Object r0 = r4.next()     // Catch: java.lang.SecurityException -> L58
            d05 r0 = (defpackage.d05) r0     // Catch: java.lang.SecurityException -> L58
            boolean r1 = defpackage.pr3.l()     // Catch: java.lang.SecurityException -> L58
            if (r1 != 0) goto L50
            r1 = 0
            mu4 r2 = r0.b     // Catch: java.lang.IllegalStateException -> L46 java.lang.SecurityException -> L58
            if (r2 == 0) goto L46
            java.lang.Object r1 = r2.zza()     // Catch: java.lang.IllegalStateException -> L46 java.lang.SecurityException -> L58
        L46:
            java.lang.Object r2 = defpackage.d05.f     // Catch: java.lang.SecurityException -> L58
            monitor-enter(r2)     // Catch: java.lang.SecurityException -> L58
            r0.e = r1     // Catch: java.lang.Throwable -> L4d
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4d
            goto L2b
        L4d:
            r4 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4d
            throw r4     // Catch: java.lang.SecurityException -> L58
        L50:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch: java.lang.SecurityException -> L58
            java.lang.String r0 = "Refreshing flag cache must be done on a worker thread."
            r4.<init>(r0)     // Catch: java.lang.SecurityException -> L58
            throw r4     // Catch: java.lang.SecurityException -> L58
        L58:
            mu4 r4 = r3.b
            if (r4 != 0) goto L5f
        L5c:
            java.lang.Object r3 = r3.c
            goto L63
        L5f:
            java.lang.Object r3 = r4.zza()     // Catch: java.lang.Throwable -> L5c
        L63:
            return r3
        L64:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L1e
            throw r3
        L66:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L66
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.d05.a(java.lang.Object):java.lang.Object");
    }
}
