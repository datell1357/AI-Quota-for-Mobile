package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oz1 extends md2 implements xs2 {
    public float B;
    public boolean C;

    @Override // defpackage.xs2
    public final Object l0(Object obj) {
        ab3 ab3Var = obj instanceof ab3 ? (ab3) obj : null;
        if (ab3Var == null) {
            ab3Var = new ab3();
        }
        ab3Var.a = this.B;
        ab3Var.b = this.C;
        return ab3Var;
    }
}
