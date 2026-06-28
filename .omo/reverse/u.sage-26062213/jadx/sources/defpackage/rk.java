package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rk implements pn2 {
    public static final rk a = new rk();
    public static final a51 b = a51.a("arch");
    public static final a51 c = a51.a("libraryName");
    public static final a51 d = a51.a("buildId");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        lj0 lj0Var = (lj0) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.a(b, ((sm) lj0Var).a);
        sm smVar = (sm) lj0Var;
        qn2Var.a(c, smVar.b);
        qn2Var.a(d, smVar.c);
    }
}
