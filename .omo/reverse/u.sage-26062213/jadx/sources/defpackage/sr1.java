package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sr1 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ int o;
    public final /* synthetic */ dv2 p;
    public final /* synthetic */ int q;

    public /* synthetic */ sr1(int i, dv2 dv2Var, int i2) {
        this.n = 1;
        this.o = i;
        this.p = dv2Var;
        this.q = i2;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.n;
        t64 t64Var = t64.a;
        int i2 = this.q;
        int i3 = this.o;
        dv2 dv2Var = this.p;
        cv2 cv2Var = (cv2) obj;
        switch (i) {
            case 0:
                cv2.h(cv2Var, dv2Var, i3, i2);
                break;
            case 1:
                cv2.h(cv2Var, dv2Var, is0.V((i3 - dv2Var.n) / 2.0f), is0.V((i2 - dv2Var.o) / 2.0f));
                break;
            default:
                cv2.h(cv2Var, dv2Var, i3, i2);
                break;
        }
        return t64Var;
    }

    public /* synthetic */ sr1(dv2 dv2Var, int i, int i2, int i3) {
        this.n = i3;
        this.p = dv2Var;
        this.o = i;
        this.q = i2;
    }
}
