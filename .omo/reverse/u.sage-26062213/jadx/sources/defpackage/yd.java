package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yd extends xx1 implements pe1 {
    public final /* synthetic */ dv2[] o;
    public final /* synthetic */ zd p;
    public final /* synthetic */ int q;
    public final /* synthetic */ int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yd(dv2[] dv2VarArr, zd zdVar, int i, int i2) {
        super(1);
        this.o = dv2VarArr;
        this.p = zdVar;
        this.q = i;
        this.r = i2;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        cv2 cv2Var = (cv2) obj;
        for (dv2 dv2Var : this.o) {
            if (dv2Var != null) {
                long jA = this.p.a.b.a((((long) dv2Var.n) << 32) | (((long) dv2Var.o) & 4294967295L), (((long) this.q) << 32) | (((long) this.r) & 4294967295L), hy1.n);
                cv2.h(cv2Var, dv2Var, (int) (jA >> 32), (int) (jA & 4294967295L));
            }
        }
        return t64.a;
    }
}
