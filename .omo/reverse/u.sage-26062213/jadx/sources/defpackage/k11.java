package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k11 extends xx1 implements pe1 {
    public final /* synthetic */ n11 o;
    public final /* synthetic */ tr3 p;
    public final /* synthetic */ long q;
    public final /* synthetic */ long r;
    public final /* synthetic */ dv2 s;
    public final /* synthetic */ long t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ g11 f156u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k11(n11 n11Var, i14 i14Var, long j, long j2, long j3, dv2 dv2Var, long j4, g11 g11Var) {
        super(1);
        this.o = n11Var;
        this.p = i14Var;
        this.q = j2;
        this.r = j3;
        this.s = dv2Var;
        this.t = j4;
        this.f156u = g11Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        cv2 cv2Var = (cv2) obj;
        n11 n11Var = this.o;
        zl3 zl3Var = n11Var.H;
        tr3 tr3Var = this.p;
        long j = tr3Var != null ? ((js1) tr3Var.getValue()).a : 0L;
        zl3Var.b();
        if (zl3Var.b()) {
            zl3Var.c.getClass();
        }
        long jC = js1.c(j, 0L);
        if (zl3Var.b()) {
            zl3Var.i = jC;
        }
        cw cwVar = n11Var.L;
        long jC2 = js1.c(cwVar != null ? cwVar.a(this.q, this.r, hy1.n) : 0L, jC);
        long j2 = this.t;
        cv2Var.getClass();
        dv2 dv2Var = this.s;
        cv2.a(cv2Var, dv2Var);
        dv2Var.d0(js1.c((((long) (((int) (jC2 >> 32)) + ((int) (j2 >> 32)))) << 32) | (((long) (((int) (jC2 & 4294967295L)) + ((int) (j2 & 4294967295L)))) & 4294967295L), dv2Var.r), 0.0f, this.f156u);
        return t64.a;
    }
}
