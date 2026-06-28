package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dx extends kr0 implements eh3 {
    public zw D;
    public float E;
    public sp3 F;
    public jl3 G;
    public final q00 H;

    public dx(float f, sp3 sp3Var, jl3 jl3Var) {
        this.E = f;
        this.F = sp3Var;
        this.G = jl3Var;
        v vVar = new v(4, this);
        r00 r00Var = new r00();
        r00Var.n = mj1.O;
        q00 q00Var = new q00(r00Var, vVar);
        G0(q00Var);
        this.H = q00Var;
    }

    @Override // defpackage.eh3
    public final void a0(ph3 ph3Var) {
        nh3.d(ph3Var, this.G);
    }

    @Override // defpackage.eh3
    public final boolean g() {
        return false;
    }

    @Override // defpackage.md2
    public final boolean v0() {
        return false;
    }
}
