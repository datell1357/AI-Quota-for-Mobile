package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ge extends ry1 {
    public j14 B;
    public pg2 C;
    public he D;
    public long E;

    @Override // defpackage.md2
    public final void A0() {
        this.E = -9223372034707292160L;
    }

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        long j2;
        dv2 dv2VarE = ya2Var.e(j);
        if (gb2Var.q()) {
            j2 = (((long) dv2VarE.n) << 32) | (((long) dv2VarE.o) & 4294967295L);
        } else {
            j14 j14Var = this.B;
            int i = dv2VarE.n;
            if (j14Var == null) {
                j2 = (((long) i) << 32) | (((long) dv2VarE.o) & 4294967295L);
                this.E = j2;
            } else {
                long j3 = (((long) dv2VarE.o) & 4294967295L) | (((long) i) << 32);
                i14 i14VarA = j14Var.a(new fe(this, j3, 0), null, null, new fe(this, j3, 1));
                this.D.getClass();
                j2 = ((rs1) i14VarA.getValue()).a;
                this.E = ((rs1) i14VarA.getValue()).a;
            }
        }
        return gb2Var.e0((int) (j2 >> 32), (int) (4294967295L & j2), h01.n, new ee(this, dv2VarE, j2));
    }
}
