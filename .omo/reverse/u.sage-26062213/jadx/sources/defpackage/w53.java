package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w53 implements sk3 {
    public static final int g;
    public static final w43 h;
    public final iz3 a;
    public final n61 b;
    public final jh c;
    public final x53 d;
    public final qk3 e;
    public final hh2 f;

    static {
        bx3 bx3Var = cy0.o;
        g = (int) cy0.h(c75.S(24, gy0.HOURS), gy0.SECONDS);
        h = new w43("com/google/firebase/sessions//");
    }

    public w53(iz3 iz3Var, n61 n61Var, jh jhVar, x53 x53Var, qk3 qk3Var) {
        iz3Var.getClass();
        n61Var.getClass();
        jhVar.getClass();
        x53Var.getClass();
        qk3Var.getClass();
        this.a = iz3Var;
        this.b = n61Var;
        this.c = jhVar;
        this.d = x53Var;
        this.e = qk3Var;
        this.f = new hh2();
    }

    @Override // defpackage.sk3
    public final Boolean a() {
        return this.e.a().a;
    }

    @Override // defpackage.sk3
    public final Double b() {
        return this.e.a().b;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:0|2|(2:4|(1:6)(1:7))(0)|8|(1:(3:(1:(5:13|63|14|57|58)(2:18|19))(5:20|62|21|45|(3:47|48|49)(4:50|(1:53)|(3:56|57|58)|55))|59|60)(1:25))(2:26|(3:31|(0)|55)(1:30))|61|34|(3:36|37|38)(3:41|(3:44|45|(0)(0))|55)) */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0086, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0087, code lost:
    
        r2 = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a9 A[Catch: all -> 0x004e, TRY_LEAVE, TryCatch #1 {all -> 0x004e, blocks: (B:21:0x004a, B:45:0x009f, B:47:0x00a9, B:50:0x00b2), top: B:62:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b2 A[Catch: all -> 0x004e, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x004e, blocks: (B:21:0x004a, B:45:0x009f, B:47:0x00a9, B:50:0x00b2), top: B:62:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    @Override // defpackage.sk3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(defpackage.dh0 r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w53.c(dh0):java.lang.Object");
    }

    @Override // defpackage.sk3
    public final cy0 d() {
        Integer num = this.e.a().c;
        if (num == null) {
            return null;
        }
        bx3 bx3Var = cy0.o;
        return new cy0(c75.S(num.intValue(), gy0.SECONDS));
    }
}
