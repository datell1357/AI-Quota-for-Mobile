package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fl implements pn2 {
    public static final fl a = new fl();
    public static final a51 b = a51.a("name");
    public static final a51 c = a51.a("code");
    public static final a51 d = a51.a("address");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        vj0 vj0Var = (vj0) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.a(b, ((in) vj0Var).a);
        in inVar = (in) vj0Var;
        qn2Var.a(c, inVar.b);
        qn2Var.g(d, inVar.c);
    }
}
