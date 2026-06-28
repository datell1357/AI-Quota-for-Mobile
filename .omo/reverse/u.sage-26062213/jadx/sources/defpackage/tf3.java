package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class tf3 implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ wf3 o;

    public /* synthetic */ tf3(wf3 wf3Var, int i) {
        this.n = i;
        this.o = wf3Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        int i = this.n;
        wf3 wf3Var = this.o;
        switch (i) {
            case 0:
                return Boolean.valueOf(wf3Var.A);
            default:
                ka1 ka1Var = wf3Var.c0;
                if (!ka1Var.n.A) {
                    return null;
                }
                fa1 fa1VarL0 = ka1Var.L0();
                int iOrdinal = fa1VarL0.ordinal();
                if (iOrdinal != 0 && iOrdinal != 1 && iOrdinal != 2) {
                    if (iOrdinal == 3) {
                        return null;
                    }
                    p61.x();
                    return null;
                }
                if (fa1VarL0.a()) {
                    return ka1Var.J0(null);
                }
                ka1 ka1VarF = ((dh) ((q9) w80.S(ka1Var)).getFocusOwner()).f();
                if (ka1VarF != null) {
                    return ka1VarF.J0(w80.Q(ka1Var));
                }
                return null;
        }
    }
}
