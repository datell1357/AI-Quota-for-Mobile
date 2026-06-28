package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ia1 extends kr0 implements co2, fc0 {
    public final ka1 D;
    public i02 E;

    public ia1() {
        ka1 ka1Var = new ka1(0, new ha1(2, this, ia1.class, "onFocusStateChange", "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V", 0, 0, 0), 9);
        G0(ka1Var);
        this.D = ka1Var;
    }

    @Override // defpackage.co2
    public final void H() {
        w33 w33Var = new w33();
        ix.H(this, new j9(4, w33Var, this));
        i02 i02Var = (i02) w33Var.n;
        if (this.D.L0().a()) {
            i02 i02Var2 = this.E;
            if (i02Var2 != null) {
                i02Var2.b();
            }
            if (i02Var != null) {
                i02Var.a();
            } else {
                i02Var = null;
            }
            this.E = i02Var;
        }
    }
}
