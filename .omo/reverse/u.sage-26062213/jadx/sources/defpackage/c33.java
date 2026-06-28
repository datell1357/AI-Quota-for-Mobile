package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c33 {
    public ec0 a;
    public int b;
    public vf1 c;
    public df1 d;
    public int e;
    public cg2 f;
    public kg2 g;

    public c33(ec0 ec0Var) {
        this.a = ec0Var;
    }

    public final boolean a() {
        if (this.a != null) {
            vf1 vf1Var = this.c;
            if (vf1Var != null ? vf1Var.a() : false) {
                return true;
            }
        }
        return false;
    }

    public final au1 b(Object obj) {
        au1 au1VarS;
        ec0 ec0Var = this.a;
        return (ec0Var == null || (au1VarS = ec0Var.s(this, obj)) == null) ? au1.n : au1VarS;
    }

    public final void c() {
        ec0 ec0Var = this.a;
        if (ec0Var != null) {
            ec0Var.B = true;
            ec0Var.G.j();
        }
        this.a = null;
        this.f = null;
        this.g = null;
        this.d = null;
    }

    public final void d(boolean z) {
        int i = this.b;
        this.b = z ? i | 32 : i & (-33);
    }
}
