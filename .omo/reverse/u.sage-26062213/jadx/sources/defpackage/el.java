package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class el implements pn2 {
    public static final el a = new el();
    public static final a51 b = a51.a("type");
    public static final a51 c = a51.a("reason");
    public static final a51 d = a51.a("frames");
    public static final a51 e = a51.a("causedBy");
    public static final a51 f = a51.a("overflowCount");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        uj0 uj0Var = (uj0) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.a(b, ((hn) uj0Var).a);
        hn hnVar = (hn) uj0Var;
        qn2Var.a(c, hnVar.b);
        qn2Var.a(d, hnVar.c);
        qn2Var.a(e, hnVar.d);
        qn2Var.e(f, hnVar.e);
    }
}
