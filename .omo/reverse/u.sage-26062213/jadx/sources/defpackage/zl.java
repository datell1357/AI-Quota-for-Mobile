package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zl implements pn2 {
    public static final zl a = new zl();
    public static final a51 b = a51.a("rolloutId");
    public static final a51 c = a51.a("parameterKey");
    public static final a51 d = a51.a("parameterValue");
    public static final a51 e = a51.a("variantId");
    public static final a51 f = a51.a("templateVersion");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        z93 z93Var = (z93) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.a(b, ((wo) z93Var).b);
        wo woVar = (wo) z93Var;
        qn2Var.a(c, woVar.c);
        qn2Var.a(d, woVar.d);
        qn2Var.a(e, woVar.e);
        qn2Var.g(f, woVar.f);
    }
}
