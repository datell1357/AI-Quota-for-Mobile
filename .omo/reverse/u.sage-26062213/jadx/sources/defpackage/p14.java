package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p14 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ n14 o;

    public /* synthetic */ p14(n14 n14Var, int i) {
        this.n = i;
        this.o = n14Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.n;
        n14 n14Var = this.o;
        switch (i) {
            case 0:
                return new r14(n14Var, 0);
            default:
                return new r14(n14Var, 1);
        }
    }
}
