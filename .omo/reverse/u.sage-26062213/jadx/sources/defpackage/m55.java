package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m55 implements qo4 {
    public final qo4 n;

    public /* synthetic */ m55(di2 di2Var) {
        gt4 gt4Var = new gt4(5, di2Var);
        this.n = hn4.a(new m55(hn4.a(new ui3(hn4.a(new pc4(24, gt4Var, hn4.a(new dx4(gt4Var, 1)))), hn4.a(new dx4(gt4Var, 0)), gt4Var, 10))));
    }

    @Override // defpackage.qo4
    public Object zza() {
        k05 k05Var = (k05) this.n.zza();
        if (k05Var != null) {
            return k05Var;
        }
        q73.r("Cannot return null from a non-@Nullable @Provides method");
        return null;
    }

    public m55(qo4 qo4Var) {
        this.n = qo4Var;
    }
}
