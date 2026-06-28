package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ee extends xx1 implements pe1 {
    public final /* synthetic */ ge o;
    public final /* synthetic */ dv2 p;
    public final /* synthetic */ long q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ee(ge geVar, dv2 dv2Var, long j) {
        super(1);
        this.o = geVar;
        this.p = dv2Var;
        this.q = j;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        cw cwVar = this.o.D.b;
        dv2 dv2Var = this.p;
        cv2.i((cv2) obj, dv2Var, cwVar.a((((long) dv2Var.o) & 4294967295L) | (((long) dv2Var.n) << 32), this.q, hy1.n));
        return t64.a;
    }
}
