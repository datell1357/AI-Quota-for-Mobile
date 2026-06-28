package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gm implements pn2 {
    public static final gm a = new gm();
    public static final a51 b = a51.a("sessionId");
    public static final a51 c = a51.a("firstSessionId");
    public static final a51 d = a51.a("sessionIndex");
    public static final a51 e = a51.a("eventTimestampUs");
    public static final a51 f = a51.a("dataCollectionStatus");
    public static final a51 g = a51.a("firebaseInstallationId");
    public static final a51 h = a51.a("firebaseAuthenticationToken");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        wj3 wj3Var = (wj3) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.a(b, wj3Var.a);
        qn2Var.a(c, wj3Var.b);
        qn2Var.e(d, wj3Var.c);
        qn2Var.g(e, wj3Var.d);
        qn2Var.a(f, wj3Var.e);
        qn2Var.a(g, wj3Var.f);
        qn2Var.a(h, wj3Var.g);
    }
}
