package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lm2 extends xx1 implements ne1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ mm2 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ lm2(mm2 mm2Var, int i) {
        super(0);
        this.o = i;
        this.p = mm2Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        int i = this.o;
        t64 t64Var = t64.a;
        mm2 mm2Var = this.p;
        switch (i) {
            case 0:
                v20 v20Var = mm2Var.Y;
                v20Var.getClass();
                mm2Var.I0(v20Var, mm2Var.X);
                break;
            default:
                mm2 mm2Var2 = mm2Var.H;
                if (mm2Var2 != null) {
                    mm2Var2.V0();
                }
                break;
        }
        return t64Var;
    }
}
