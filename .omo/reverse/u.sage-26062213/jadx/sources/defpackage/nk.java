package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nk implements pn2 {
    public static final nk a = new nk();
    public static final a51 b = a51.a("requestTimeMs");
    public static final a51 c = a51.a("requestUptimeMs");
    public static final a51 d = a51.a("clientInfo");
    public static final a51 e = a51.a("logSource");
    public static final a51 f = a51.a("logSourceName");
    public static final a51 g = a51.a("logEvent");
    public static final a51 h = a51.a("qosTier");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        q72 q72Var = (q72) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.g(b, ((oo) q72Var).a);
        oo ooVar = (oo) q72Var;
        qn2Var.g(c, ooVar.b);
        qn2Var.a(d, ooVar.c);
        qn2Var.a(e, ooVar.d);
        qn2Var.a(f, ooVar.e);
        qn2Var.a(g, ooVar.f);
        qn2Var.a(h, x03.n);
    }
}
