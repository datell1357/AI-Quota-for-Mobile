package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jl implements pn2 {
    public static final jl a = new jl();
    public static final a51 b = a51.a("batteryLevel");
    public static final a51 c = a51.a("batteryVelocity");
    public static final a51 d = a51.a("proximityOn");
    public static final a51 e = a51.a("orientation");
    public static final a51 f = a51.a("ramUsed");
    public static final a51 g = a51.a("diskUsed");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        bk0 bk0Var = (bk0) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.a(b, ((pn) bk0Var).a);
        pn pnVar = (pn) bk0Var;
        qn2Var.e(c, pnVar.b);
        qn2Var.d(d, pnVar.c);
        qn2Var.e(e, pnVar.d);
        qn2Var.g(f, pnVar.e);
        qn2Var.g(g, pnVar.f);
    }
}
