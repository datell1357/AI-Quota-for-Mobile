package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ur0 implements w70 {
    public final /* synthetic */ int n;
    public final /* synthetic */ vr0 o;

    public /* synthetic */ ur0(vr0 vr0Var, int i) {
        this.n = i;
        this.o = vr0Var;
    }

    @Override // defpackage.w70
    public final long a() {
        int i = this.n;
        vr0 vr0Var = this.o;
        switch (i) {
            case 0:
                long jA = vr0Var.G.a();
                if (jA != 16) {
                    return jA;
                }
                x83 x83Var = (x83) n44.g0(vr0Var, b93.b);
                if (x83Var != null) {
                    long j = x83Var.a;
                    if (j != 16) {
                        return j;
                    }
                }
                return ((t70) n44.g0(vr0Var, bg0.a)).a;
            default:
                return ((ua2) n44.g0(vr0Var, wa2.a)).a.f;
        }
    }
}
