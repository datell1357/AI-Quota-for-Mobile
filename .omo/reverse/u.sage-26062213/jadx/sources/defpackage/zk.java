package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zk implements pn2 {
    public static final zk a = new zk();
    public static final a51 b = a51.a("arch");
    public static final a51 c = a51.a("model");
    public static final a51 d = a51.a("cores");
    public static final a51 e = a51.a("ram");
    public static final a51 f = a51.a("diskSpace");
    public static final a51 g = a51.a("simulator");
    public static final a51 h = a51.a("state");
    public static final a51 i = a51.a("manufacturer");
    public static final a51 j = a51.a("modelClass");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        sj0 sj0Var = (sj0) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.e(b, ((bn) sj0Var).a);
        bn bnVar = (bn) sj0Var;
        qn2Var.a(c, bnVar.b);
        qn2Var.e(d, bnVar.c);
        qn2Var.g(e, bnVar.d);
        qn2Var.g(f, bnVar.e);
        qn2Var.d(g, bnVar.f);
        qn2Var.e(h, bnVar.g);
        qn2Var.a(i, bnVar.h);
        qn2Var.a(j, bnVar.i);
    }
}
