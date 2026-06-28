package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cl implements pn2 {
    public static final cl a = new cl();
    public static final a51 b = a51.a("baseAddress");
    public static final a51 c = a51.a("size");
    public static final a51 d = a51.a("name");
    public static final a51 e = a51.a("uuid");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        tj0 tj0Var = (tj0) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.g(b, ((gn) tj0Var).a);
        gn gnVar = (gn) tj0Var;
        qn2Var.g(c, gnVar.b);
        qn2Var.a(d, gnVar.c);
        String str = gnVar.d;
        qn2Var.a(e, str != null ? str.getBytes(kk0.a) : null);
    }
}
