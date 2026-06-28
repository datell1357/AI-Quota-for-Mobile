package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dm implements pn2 {
    public static final dm a = new dm();
    public static final a51 b = a51.a("performance");
    public static final a51 c = a51.a("crashlytics");
    public static final a51 d = a51.a("sessionSamplingRate");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        fm0 fm0Var = (fm0) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.a(b, fm0Var.a);
        qn2Var.a(c, fm0Var.b);
        qn2Var.f(d, fm0Var.c);
    }
}
