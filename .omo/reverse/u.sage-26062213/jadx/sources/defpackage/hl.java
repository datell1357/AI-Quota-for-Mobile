package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hl implements pn2 {
    public static final hl a = new hl();
    public static final a51 b = a51.a("pc");
    public static final a51 c = a51.a("symbol");
    public static final a51 d = a51.a("file");
    public static final a51 e = a51.a("offset");
    public static final a51 f = a51.a("importance");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        wj0 wj0Var = (wj0) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.g(b, ((ln) wj0Var).a);
        ln lnVar = (ln) wj0Var;
        qn2Var.a(c, lnVar.b);
        qn2Var.a(d, lnVar.c);
        qn2Var.g(e, lnVar.d);
        qn2Var.e(f, lnVar.e);
    }
}
