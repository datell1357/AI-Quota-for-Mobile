package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h14 implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ n14 o;

    public /* synthetic */ h14(n14 n14Var, int i) {
        this.n = i;
        this.o = n14Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        int i = this.n;
        n14 n14Var = this.o;
        switch (i) {
            case 0:
                return Boolean.valueOf((nt1.g(n14Var.d.getValue(), n14Var.a.l()) && n14Var.h.g() == Long.MIN_VALUE && !((Boolean) n14Var.i.getValue()).booleanValue()) ? false : true);
            default:
                return Long.valueOf(n14Var.b());
        }
    }
}
