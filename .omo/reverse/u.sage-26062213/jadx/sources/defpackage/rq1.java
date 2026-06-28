package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rq1 {
    public final ug2 a = new ug2(new pq1[16]);
    public final ws2 b = ca.A(Boolean.FALSE);
    public long c = Long.MIN_VALUE;
    public final ws2 d = ca.A(Boolean.TRUE);

    public final void a(int i, ag1 ag1Var) {
        ag1Var.X(-318043801);
        int i2 = (ag1Var.h(this) ? 4 : 2) | i;
        if (ag1Var.N(i2 & 1, (i2 & 3) != 2)) {
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            if (objK == bx3Var) {
                objK = ca.A(null);
                ag1Var.g0(objK);
            }
            pg2 pg2Var = (pg2) objK;
            if (((Boolean) this.d.getValue()).booleanValue() || ((Boolean) this.b.getValue()).booleanValue()) {
                ag1Var.W(-144841960);
                boolean zH = ag1Var.h(this);
                Object objK2 = ag1Var.K();
                if (zH || objK2 == bx3Var) {
                    objK2 = new qd(pg2Var, this, null);
                    ag1Var.g0(objK2);
                }
                zf5.c((df1) objK2, ag1Var, this);
                ag1Var.p(false);
            } else {
                ag1Var.W(-143455237);
                ag1Var.p(false);
            }
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new sp0(i, 11, this);
        }
    }
}
