package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class il implements pn2 {
    public static final il a = new il();
    public static final a51 b = a51.a("processName");
    public static final a51 c = a51.a("pid");
    public static final a51 d = a51.a("importance");
    public static final a51 e = a51.a("defaultProcess");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        zj0 zj0Var = (zj0) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.a(b, ((nn) zj0Var).a);
        nn nnVar = (nn) zj0Var;
        qn2Var.e(c, nnVar.b);
        qn2Var.e(d, nnVar.c);
        qn2Var.d(e, nnVar.d);
    }
}
