package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gl implements pn2 {
    public static final gl a = new gl();
    public static final a51 b = a51.a("name");
    public static final a51 c = a51.a("importance");
    public static final a51 d = a51.a("frames");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        xj0 xj0Var = (xj0) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.a(b, ((jn) xj0Var).a);
        jn jnVar = (jn) xj0Var;
        qn2Var.e(c, jnVar.b);
        qn2Var.a(d, jnVar.c);
    }
}
