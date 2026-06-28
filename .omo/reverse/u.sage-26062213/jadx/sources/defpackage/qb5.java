package defpackage;

import com.google.android.gms.common.api.internal.TaskApiCall;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qb5 {
    public static final ps0 i = new ps0(1);
    public static final va5 j;
    public volatile ic a;
    public final o75 b;
    public final String c;
    public final String d;
    public final boolean e;
    public final np1 f;
    public final jj g;
    public final ui3 h;

    static {
        wp4 wp4Var = wp4.p;
        int i2 = np1.p;
        j = new va5(wp4Var, false, f53.w);
    }

    public qb5(o75 o75Var, va5 va5Var) {
        this.b = o75Var;
        String strA = va5Var.a(o75Var.b);
        this.c = strA;
        this.d = "";
        this.e = va5Var.b;
        this.f = va5Var.c;
        this.a = null;
        this.g = new jj(1);
        this.h = new ui3(o75Var, strA);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00ac A[Catch: all -> 0x005f, TryCatch #1 {all -> 0x005f, blocks: (B:5:0x0005, B:7:0x0009, B:9:0x0013, B:13:0x0026, B:15:0x0031, B:17:0x0039, B:19:0x0043, B:29:0x00a8, B:31:0x00ac, B:34:0x00b7, B:22:0x0061, B:24:0x0085, B:25:0x0092, B:27:0x009a, B:36:0x00bb, B:37:0x00be, B:38:0x00bf, B:8:0x000d), top: B:45:0x0005, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b7 A[Catch: all -> 0x005f, TryCatch #1 {all -> 0x005f, blocks: (B:5:0x0005, B:7:0x0009, B:9:0x0013, B:13:0x0026, B:15:0x0031, B:17:0x0039, B:19:0x0043, B:29:0x00a8, B:31:0x00ac, B:34:0x00b7, B:22:0x0061, B:24:0x0085, B:25:0x0092, B:27:0x009a, B:36:0x00bb, B:37:0x00be, B:38:0x00bf, B:8:0x000d), top: B:45:0x0005, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.ic a() {
        /*
            r6 = this;
            ic r0 = r6.a
            if (r0 != 0) goto Lc3
            monitor-enter(r6)
            ic r0 = r6.a     // Catch: java.lang.Throwable -> L5f
            if (r0 != 0) goto Lbf
            android.os.StrictMode$ThreadPolicy r0 = android.os.StrictMode.allowThreadDiskWrites()     // Catch: java.lang.Throwable -> L5f
            ui3 r1 = r6.h     // Catch: java.lang.Throwable -> Lba
            ic r1 = r1.l()     // Catch: java.lang.Throwable -> Lba
            android.os.StrictMode.setThreadPolicy(r0)     // Catch: java.lang.Throwable -> L5f
            java.lang.Object r0 = r1.e     // Catch: java.lang.Throwable -> L5f
            a13 r0 = (defpackage.a13) r0     // Catch: java.lang.Throwable -> L5f
            int r0 = r0.c     // Catch: java.lang.Throwable -> L5f
            int r0 = r0 + (-2)
            r2 = 15
            if (r0 == r2) goto La7
            r2 = 16
            if (r0 == r2) goto La7
            o75 r0 = r6.b     // Catch: java.lang.Throwable -> L5f
            yc5 r2 = r0.g     // Catch: java.lang.Throwable -> L5f
            r2.a()     // Catch: java.lang.Throwable -> L5f
            boolean r2 = r6.e     // Catch: java.lang.Throwable -> L5f
            if (r2 != 0) goto L61
            ui3 r2 = r6.h     // Catch: java.lang.Throwable -> L5f
            boolean r2 = r2.p()     // Catch: java.lang.Throwable -> L5f
            if (r2 != 0) goto L61
            java.lang.Object r2 = r1.b     // Catch: java.lang.Throwable -> L5f
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> L5f
            boolean r2 = r2.isEmpty()     // Catch: java.lang.Throwable -> L5f
            if (r2 == 0) goto L61
            wd2 r0 = r0.a()     // Catch: java.lang.Throwable -> L5f
            ya5 r2 = new ya5     // Catch: java.lang.Throwable -> L5f
            r3 = 0
            r2.<init>(r6)     // Catch: java.lang.Throwable -> L5f
            r0.execute(r2)     // Catch: java.lang.Throwable -> L5f
            rc5 r0 = defpackage.rc5.A()     // Catch: java.lang.Throwable -> L5f
            java.lang.Object r1 = r1.e     // Catch: java.lang.Throwable -> L5f
            a13 r1 = (defpackage.a13) r1     // Catch: java.lang.Throwable -> L5f
            ic r2 = new ic     // Catch: java.lang.Throwable -> L5f
            r2.<init>(r0, r1)     // Catch: java.lang.Throwable -> L5f
            r0 = r2
            goto La8
        L5f:
            r0 = move-exception
            goto Lc1
        L61:
            wd2 r2 = r0.a()     // Catch: java.lang.Throwable -> L5f
            ya5 r3 = new ya5     // Catch: java.lang.Throwable -> L5f
            r4 = 3
            r3.<init>(r6)     // Catch: java.lang.Throwable -> L5f
            r2.execute(r3)     // Catch: java.lang.Throwable -> L5f
            ui3 r2 = r0.a     // Catch: java.lang.Throwable -> L5f
            java.lang.Object r3 = r1.c     // Catch: java.lang.Throwable -> L5f
            zm4 r3 = (defpackage.zm4) r3     // Catch: java.lang.Throwable -> L5f
            np1 r4 = r6.f     // Catch: java.lang.Throwable -> L5f
            java.lang.String r5 = r6.c     // Catch: java.lang.Throwable -> L5f
            r2.n(r3, r4, r5)     // Catch: java.lang.Throwable -> L5f
            java.lang.String r2 = r6.d     // Catch: java.lang.Throwable -> L5f
            java.lang.String r3 = ""
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L5f
            if (r2 != 0) goto L92
            wd2 r2 = r0.a()     // Catch: java.lang.Throwable -> L5f
            ya5 r3 = new ya5     // Catch: java.lang.Throwable -> L5f
            r4 = 1
            r3.<init>(r6)     // Catch: java.lang.Throwable -> L5f
            r2.execute(r3)     // Catch: java.lang.Throwable -> L5f
        L92:
            ui3 r2 = r6.h     // Catch: java.lang.Throwable -> L5f
            boolean r2 = r2.p()     // Catch: java.lang.Throwable -> L5f
            if (r2 == 0) goto La7
            wd2 r0 = r0.a()     // Catch: java.lang.Throwable -> L5f
            ya5 r2 = new ya5     // Catch: java.lang.Throwable -> L5f
            r3 = 2
            r2.<init>(r6)     // Catch: java.lang.Throwable -> L5f
            r0.execute(r2)     // Catch: java.lang.Throwable -> L5f
        La7:
            r0 = r1
        La8:
            boolean r1 = r6.e     // Catch: java.lang.Throwable -> L5f
            if (r1 == 0) goto Lb7
            java.lang.Object r1 = r0.e     // Catch: java.lang.Throwable -> L5f
            a13 r1 = (defpackage.a13) r1     // Catch: java.lang.Throwable -> L5f
            int r1 = r1.c     // Catch: java.lang.Throwable -> L5f
            r2 = 17
            if (r1 != r2) goto Lb7
            goto Lbf
        Lb7:
            r6.a = r0     // Catch: java.lang.Throwable -> L5f
            goto Lbf
        Lba:
            r1 = move-exception
            android.os.StrictMode.setThreadPolicy(r0)     // Catch: java.lang.Throwable -> L5f
            throw r1     // Catch: java.lang.Throwable -> L5f
        Lbf:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L5f
            return r0
        Lc1:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L5f
            throw r0
        Lc3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qb5.a():ic");
    }

    public final void b() {
        ui3 ui3Var = this.h;
        o75 o75Var = (o75) ui3Var.o;
        x85 x85Var = (x85) o75Var.d.get();
        String str = (String) ui3Var.q;
        x85Var.getClass();
        str.getClass();
        i2 i2VarE = tf1.e(x85.b(x85Var.a.doRead(TaskApiCall.builder().run(new bc5(str, 3)).build()).d(fu0.n, new ny4(22))), wp4.q, o75Var.a());
        int i2 = 1;
        bb5 bb5Var = new bb5(i2, ui3Var);
        o75 o75Var2 = this.b;
        tf1.f(i2VarE, bb5Var, o75Var2.a()).a(new db5(this, i2VarE, i2), o75Var2.a());
    }
}
