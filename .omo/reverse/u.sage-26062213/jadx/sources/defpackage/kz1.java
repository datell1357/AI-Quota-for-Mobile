package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kz1 {
    public final /* synthetic */ int a;
    public final /* synthetic */ lz1 b;
    public final /* synthetic */ Object c;

    public /* synthetic */ kz1(lz1 lz1Var, Object obj, int i) {
        this.a = i;
        this.b = lz1Var;
        this.c = obj;
    }

    public dz1 b() {
        lz1 lz1Var = this.b;
        xy1 xy1Var = (xy1) lz1Var.w.g(this.c);
        if (xy1Var != null) {
            return (dz1) lz1Var.s.g(xy1Var);
        }
        return null;
    }

    public final boolean c() {
        zt2 zt2Var;
        switch (this.a) {
            case 0:
                return true;
            default:
                dz1 dz1VarB = b();
                if (dz1VarB == null || (zt2Var = dz1VarB.f) == null) {
                    return true;
                }
                return zt2Var.c();
        }
    }

    private final void a() {
    }
}
