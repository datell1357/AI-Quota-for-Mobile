package defpackage;

import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cg5 implements bg5, ng5 {
    public static final String i = new String();
    public final Level a;
    public final long b;
    public gg5 c;
    public kg5 d;
    public sg5 e;
    public el4 f;
    public Object[] g;
    public final /* synthetic */ wu4 h;

    public cg5(wu4 wu4Var, Level level) {
        Objects.requireNonNull(wu4Var);
        this.h = wu4Var;
        bl4.a.getClass();
        long nanos = TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        hm4.a(level, "level");
        this.a = level;
        this.b = nanos;
    }

    @Override // defpackage.ng5
    public final ng5 a(Throwable th) {
        og5 og5Var = fg5.a;
        hm4.a(og5Var, "metadata key");
        if (th != null) {
            e(og5Var, th);
        }
        return this;
    }

    @Override // defpackage.ng5
    public final ng5 b() {
        jg5 jg5Var = new jg5();
        jg5Var.b = 0;
        if (this.d == null) {
            this.d = jg5Var;
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f9  */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v20, types: [sg5] */
    /* JADX WARN: Type inference failed for: r10v22, types: [tg5] */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r18v0, types: [cg5] */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22, types: [sg5] */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24, types: [sg5] */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v31 */
    @Override // defpackage.ng5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(java.lang.String r19, java.lang.Object[] r20) {
        /*
            Method dump skipped, instruction units count: 776
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cg5.c(java.lang.String, java.lang.Object[]):void");
    }

    public final ye4 d() {
        gg5 gg5Var = this.c;
        return gg5Var != null ? gg5Var : ch5.b;
    }

    public final void e(og5 og5Var, Object obj) {
        if (this.c == null) {
            gg5 gg5Var = new gg5();
            gg5Var.b = new Object[8];
            gg5Var.c = 0;
            this.c = gg5Var;
        }
        this.c.f(og5Var, obj);
    }
}
