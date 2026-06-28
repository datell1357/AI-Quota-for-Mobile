package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xk implements pn2 {
    public static final xk a = new xk();
    public static final a51 b = a51.a("identifier");
    public static final a51 c = a51.a("version");
    public static final a51 d = a51.a("displayVersion");
    public static final a51 e = a51.a("organization");
    public static final a51 f = a51.a("installationUuid");
    public static final a51 g = a51.a("developmentPlatform");
    public static final a51 h = a51.a("developmentPlatformVersion");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        rj0 rj0Var = (rj0) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.a(b, ((ym) rj0Var).a);
        ym ymVar = (ym) rj0Var;
        qn2Var.a(c, ymVar.b);
        qn2Var.a(d, ymVar.c);
        qn2Var.a(e, null);
        qn2Var.a(f, ymVar.d);
        qn2Var.a(g, ymVar.e);
        qn2Var.a(h, ymVar.f);
    }
}
