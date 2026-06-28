package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sk implements pn2 {
    public static final sk a = new sk();
    public static final a51 b = a51.a("pid");
    public static final a51 c = a51.a("processName");
    public static final a51 d = a51.a("reasonCode");
    public static final a51 e = a51.a("importance");
    public static final a51 f = a51.a("pss");
    public static final a51 g = a51.a("rss");
    public static final a51 h = a51.a("timestamp");
    public static final a51 i = a51.a("traceFile");
    public static final a51 j = a51.a("buildIdMappingForArch");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        mj0 mj0Var = (mj0) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.e(b, ((rm) mj0Var).a);
        rm rmVar = (rm) mj0Var;
        qn2Var.a(c, rmVar.b);
        qn2Var.e(d, rmVar.c);
        qn2Var.e(e, rmVar.d);
        qn2Var.g(f, rmVar.e);
        qn2Var.g(g, rmVar.f);
        qn2Var.g(h, rmVar.g);
        qn2Var.a(i, rmVar.h);
        qn2Var.a(j, rmVar.i);
    }
}
