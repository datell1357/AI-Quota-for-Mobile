package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dl implements pn2 {
    public static final dl a = new dl();
    public static final a51 b = a51.a("threads");
    public static final a51 c = a51.a("exception");
    public static final a51 d = a51.a("appExitInfo");
    public static final a51 e = a51.a("signal");
    public static final a51 f = a51.a("binaries");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        yj0 yj0Var = (yj0) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.a(b, ((fn) yj0Var).a);
        fn fnVar = (fn) yj0Var;
        qn2Var.a(c, fnVar.b);
        qn2Var.a(d, fnVar.c);
        qn2Var.a(e, fnVar.d);
        qn2Var.a(f, fnVar.e);
    }
}
