package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ e60 o;

    public /* synthetic */ l(e60 e60Var, int i) {
        this.n = i;
        this.o = e60Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        jr0 jr0Var;
        int i = this.n;
        e60 e60Var = this.o;
        switch (i) {
            case 0:
                zp1 zp1Var = (zp1) n44.g0(e60Var, wp1.a);
                if (zp1Var == null) {
                    dr1.a("clickable only supports IndicationNodeFactory instances provided to LocalIndication, but Indication was provided instead. Either migrate the Indication implementation to implement IndicationNodeFactory, or use the other clickable overload that takes an Indication parameter, and explicitly pass LocalIndication.current there. The Indication instance provided here was: " + zp1Var);
                }
                zp1 zp1Var2 = e60Var.K;
                e60Var.K = zp1Var;
                if (zp1Var2 != null && !nt1.g(zp1Var, zp1Var2) && ((jr0Var = e60Var.N) != null || !e60Var.U)) {
                    if (jr0Var != null) {
                        e60Var.H0(jr0Var);
                    }
                    e60Var.N = null;
                    e60Var.O0();
                }
                return t64.a;
            default:
                e60Var.P0();
                return Boolean.TRUE;
        }
    }
}
