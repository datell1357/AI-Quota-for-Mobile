package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kl implements pn2 {
    public static final kl a = new kl();
    public static final a51 b = a51.a("timestamp");
    public static final a51 c = a51.a("type");
    public static final a51 d = a51.a("app");
    public static final a51 e = a51.a("device");
    public static final a51 f = a51.a("log");
    public static final a51 g = a51.a("rollouts");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        gk0 gk0Var = (gk0) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.g(b, ((dn) gk0Var).a);
        dn dnVar = (dn) gk0Var;
        qn2Var.a(c, dnVar.b);
        qn2Var.a(d, dnVar.c);
        qn2Var.a(e, dnVar.d);
        qn2Var.a(f, dnVar.e);
        qn2Var.a(g, dnVar.f);
    }
}
