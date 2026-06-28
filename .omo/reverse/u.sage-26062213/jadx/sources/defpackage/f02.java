package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f02 implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ pg2 o;

    public /* synthetic */ f02(pg2 pg2Var, int i) {
        this.n = i;
        this.o = pg2Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        int i = this.n;
        t64 t64Var = t64.a;
        pg2 pg2Var = this.o;
        switch (i) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                pg2Var.setValue(Boolean.TRUE);
                break;
            case 3:
                pg2Var.setValue(Boolean.FALSE);
                break;
            case 4:
                pg2Var.setValue(Boolean.TRUE);
                break;
            default:
                pg2Var.setValue(Boolean.FALSE);
                break;
        }
        return t64Var;
    }
}
