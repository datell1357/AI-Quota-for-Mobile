package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fe0 implements ce0 {
    public final lw2 n;
    public final lw2 o;
    public final ThreadLocal p;
    public final AtomicBoolean q;
    public final long r;

    public fe0(final gw4 gw4Var, final String str, int i) {
        str.getClass();
        this.p = new ThreadLocal();
        final int i2 = 0;
        this.q = new AtomicBoolean(false);
        bx3 bx3Var = cy0.o;
        this.r = c75.S(30, gy0.SECONDS);
        if (i <= 0) {
            k21.f("Maximum number of readers must be greater than 0");
            throw null;
        }
        this.n = new lw2(i, new ne1() { // from class: de0
            @Override // defpackage.ne1
            public final Object a() {
                int i3 = i2;
                String str2 = str;
                gw4 gw4Var2 = gw4Var;
                switch (i3) {
                    case 0:
                        jb3 jb3VarD = gw4Var2.d(str2);
                        ix.r(jb3VarD, "PRAGMA query_only = 1");
                        return jb3VarD;
                    default:
                        return gw4Var2.d(str2);
                }
            }
        });
        final int i3 = 1;
        this.o = new lw2(1, new ne1() { // from class: de0
            @Override // defpackage.ne1
            public final Object a() {
                int i32 = i3;
                String str2 = str;
                gw4 gw4Var2 = gw4Var;
                switch (i32) {
                    case 0:
                        jb3 jb3VarD = gw4Var2.d(str2);
                        ix.r(jb3VarD, "PRAGMA query_only = 1");
                        return jb3VarD;
                    default:
                        return gw4Var2.d(str2);
                }
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01cc A[Catch: all -> 0x01e5, TRY_LEAVE, TryCatch #2 {all -> 0x01e5, blocks: (B:106:0x01c6, B:108:0x01cc, B:110:0x01d6, B:111:0x01db), top: B:141:0x01c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v5 */
    @Override // defpackage.ce0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object G(boolean r20, defpackage.df1 r21, defpackage.fh0 r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fe0.G(boolean, df1, fh0):java.lang.Object");
    }

    public final void b(boolean z) {
        String str = z ? "reader" : "writer";
        StringBuilder sb = new StringBuilder();
        sb.append("Timed out attempting to acquire a " + str + " connection.");
        sb.append("\n\nWriter pool:\n");
        this.o.c(sb);
        sb.append("Reader pool:");
        sb.append('\n');
        this.n.c(sb);
        ix.U(5, sb.toString());
        throw null;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.q.compareAndSet(false, true)) {
            this.n.b();
            this.o.b();
        }
    }

    public fe0(gw4 gw4Var) {
        this.p = new ThreadLocal();
        this.q = new AtomicBoolean(false);
        bx3 bx3Var = cy0.o;
        this.r = c75.S(30, gy0.SECONDS);
        lw2 lw2Var = new lw2(1, new cc(6, gw4Var));
        this.n = lw2Var;
        this.o = lw2Var;
    }
}
