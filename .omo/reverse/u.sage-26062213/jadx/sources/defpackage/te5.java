package defpackage;

import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class te5 implements rf5 {
    public final te5 n;
    public final UUID o;
    public final String p;
    public final String q;
    public Thread r;

    public te5(String str, te5 te5Var, qf5 qf5Var) {
        this.q = str;
        this.n = te5Var;
        this.o = te5Var.o;
        this.p = te5Var.p;
        this.r = Thread.currentThread();
    }

    public static String b(UUID uuid) {
        return "tk-trace-id: ".concat(String.valueOf(Long.toString(uuid.getLeastSignificantBits() >>> 1, 36)));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        qf5 qf5VarC = ye5.c();
        rf5 rf5Var = qf5VarC.b;
        String str = this.q;
        if (rf5Var == null) {
            throw new x60(di0.y(new StringBuilder(str.length() + 101), "Tried to end [", str, "], but no trace was active. This is caused by mismatched or missing calls to beginSpan."));
        }
        if (this == rf5Var) {
            ye5.b(qf5VarC, ((te5) rf5Var).n);
            this.r = null;
            return;
        }
        String str2 = ((te5) rf5Var).q;
        StringBuilder sb = new StringBuilder(str.length() + 79 + str2.length() + 1);
        di0.E(sb, "Tried to end span ", str, ", but that span is not the current span. The current span is ", str2);
        sb.append(".");
        throw new x60(sb.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b3, code lost:
    
        r4 = r4.d;
        r10 = java.lang.Integer.valueOf(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00bd, code lost:
    
        if (r4.containsKey(r10) != false) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bf, code lost:
    
        ((defpackage.pf5) r1.g).d.put(r10, new defpackage.pf5(r8, 1073741824));
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cd, code lost:
    
        if (r15 == null) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00cf, code lost:
    
        r15.c = (defpackage.pf5) r1.g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e1, code lost:
    
        if (r15 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e3, code lost:
    
        r15.c = (defpackage.pf5) r1.g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e9, code lost:
    
        r1.b = r8;
        r1.c++;
        r1.c();
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02d3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0214 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0273  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            Method dump skipped, instruction units count: 762
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.te5.toString():java.lang.String");
    }

    public te5(String str, UUID uuid, String str2, qf5 qf5Var) {
        this.q = str;
        this.n = null;
        this.o = uuid;
        this.p = str2;
        qf5Var.getClass();
        this.r = Thread.currentThread();
    }
}
