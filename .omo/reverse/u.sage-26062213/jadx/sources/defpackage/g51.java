package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g51 implements po1 {
    public final bt2 n;
    public final r51 o;
    public final String p;
    public final AutoCloseable q;
    public final Object r = new Object();
    public boolean s;
    public d23 t;

    public g51(bt2 bt2Var, r51 r51Var, String str, AutoCloseable autoCloseable) {
        this.n = bt2Var;
        this.o = r51Var;
        this.p = str;
        this.q = autoCloseable;
    }

    @Override // defpackage.po1
    public final bt2 I() {
        bt2 bt2Var;
        synchronized (this.r) {
            if (this.s) {
                throw new IllegalStateException("closed");
            }
            bt2Var = this.n;
        }
        return bt2Var;
    }

    @Override // defpackage.po1
    public final fz a0() {
        synchronized (this.r) {
            if (this.s) {
                throw new IllegalStateException("closed");
            }
            d23 d23Var = this.t;
            if (d23Var != null) {
                return d23Var;
            }
            yp3 yp3VarV = this.o.V(this.n);
            yp3VarV.getClass();
            d23 d23Var2 = new d23(yp3VarV);
            this.t = d23Var2;
            return d23Var2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0014 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() {
        /*
            r2 = this;
            java.lang.Object r0 = r2.r
            monitor-enter(r0)
            r1 = 1
            r2.s = r1     // Catch: java.lang.Throwable -> L1c
            d23 r1 = r2.t     // Catch: java.lang.Throwable -> L1c
            if (r1 == 0) goto L10
            r1.close()     // Catch: java.lang.RuntimeException -> Le java.lang.Exception -> L10 java.lang.Throwable -> L1c
            goto L10
        Le:
            r2 = move-exception
            throw r2     // Catch: java.lang.Throwable -> L1c
        L10:
            java.lang.AutoCloseable r2 = r2.q     // Catch: java.lang.Throwable -> L1c
            if (r2 == 0) goto L1a
            defpackage.xw1.x(r2)     // Catch: java.lang.RuntimeException -> L18 java.lang.Exception -> L1a java.lang.Throwable -> L1c
            goto L1a
        L18:
            r2 = move-exception
            throw r2     // Catch: java.lang.Throwable -> L1c
        L1a:
            monitor-exit(r0)
            return
        L1c:
            r2 = move-exception
            monitor-exit(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g51.close():void");
    }

    @Override // defpackage.po1
    public final r51 getFileSystem() {
        return this.o;
    }

    @Override // defpackage.po1
    public final fl4 getMetadata() {
        return null;
    }
}
