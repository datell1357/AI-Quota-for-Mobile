package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w02 extends md2 implements eh3 {
    public ne1 B;
    public s02 C;
    public hr2 D;
    public boolean E;
    public ye3 F;
    public final u02 G = new u02(this, 0);
    public u02 H;

    public w02(ne1 ne1Var, s02 s02Var, hr2 hr2Var, boolean z) {
        this.B = ne1Var;
        this.C = s02Var;
        this.D = hr2Var;
        this.E = z;
        G0();
    }

    public final void G0() {
        this.F = new ye3(new v02(this, 0), new v02(this, 1));
        this.H = this.E ? new u02(this, 1) : null;
    }

    @Override // defpackage.eh3
    public final void a0(ph3 ph3Var) {
        nh3.e(ph3Var);
        ph3Var.a(lh3.L, this.G);
        hr2 hr2Var = this.D;
        ye3 ye3Var = this.F;
        if (hr2Var == hr2.n) {
            if (ye3Var == null) {
                nt1.X("scrollAxisRange");
                throw null;
            }
            oh3 oh3Var = lh3.w;
            kx1 kx1Var = nh3.a[13];
            ph3Var.a(oh3Var, ye3Var);
        } else {
            if (ye3Var == null) {
                nt1.X("scrollAxisRange");
                throw null;
            }
            oh3 oh3Var2 = lh3.v;
            kx1 kx1Var2 = nh3.a[12];
            ph3Var.a(oh3Var2, ye3Var);
        }
        u02 u02Var = this.H;
        if (u02Var != null) {
            ph3Var.a(ah3.f, new o2(null, u02Var));
        }
        ph3Var.a(ah3.B, new o2(null, new c8(22, new v02(this, 2))));
        s02 s02Var = this.C;
        boolean z = s02Var.c;
        os0 os0Var = s02Var.a;
        k70 k70Var = z ? new k70(((Number) os0Var.getValue()).intValue(), 1) : new k70(1, ((Number) os0Var.getValue()).intValue());
        oh3 oh3Var3 = lh3.f;
        kx1 kx1Var3 = nh3.a[24];
        ph3Var.a(oh3Var3, k70Var);
    }

    @Override // defpackage.md2
    public final boolean v0() {
        return false;
    }
}
