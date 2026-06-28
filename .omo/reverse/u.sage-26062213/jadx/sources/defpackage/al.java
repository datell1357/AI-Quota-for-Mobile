package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class al implements pn2 {
    public static final al a = new al();
    public static final a51 b = a51.a("generator");
    public static final a51 c = a51.a("identifier");
    public static final a51 d = a51.a("appQualitySessionId");
    public static final a51 e = a51.a("startedAt");
    public static final a51 f = a51.a("endedAt");
    public static final a51 g = a51.a("crashed");
    public static final a51 h = a51.a("app");
    public static final a51 i = a51.a("user");
    public static final a51 j = a51.a("os");
    public static final a51 k = a51.a("device");
    public static final a51 l = a51.a("events");
    public static final a51 m = a51.a("generatorType");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        jk0 jk0Var = (jk0) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.a(b, ((xm) jk0Var).a);
        xm xmVar = (xm) jk0Var;
        qn2Var.a(c, xmVar.b.getBytes(kk0.a));
        qn2Var.a(d, xmVar.c);
        qn2Var.g(e, xmVar.d);
        qn2Var.a(f, xmVar.e);
        qn2Var.d(g, xmVar.f);
        qn2Var.a(h, xmVar.g);
        qn2Var.a(i, xmVar.h);
        qn2Var.a(j, xmVar.i);
        qn2Var.a(k, xmVar.j);
        qn2Var.a(l, xmVar.k);
        qn2Var.e(m, xmVar.l);
    }
}
