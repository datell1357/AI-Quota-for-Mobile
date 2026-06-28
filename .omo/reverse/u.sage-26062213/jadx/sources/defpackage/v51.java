package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v51 extends md2 implements oy1 {
    public ju0 B;
    public float C;

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        int iJ;
        int iH;
        int iG;
        int i;
        if (!mf0.d(j) || this.B == ju0.n) {
            iJ = mf0.j(j);
            iH = mf0.h(j);
        } else {
            int iRound = Math.round(mf0.h(j) * this.C);
            int iJ2 = mf0.j(j);
            iJ = mf0.h(j);
            if (iRound < iJ2) {
                iRound = iJ2;
            }
            if (iRound <= iJ) {
                iJ = iRound;
            }
            iH = iJ;
        }
        if (!mf0.c(j) || this.B == ju0.o) {
            int i2 = mf0.i(j);
            int iG2 = mf0.g(j);
            iG = i2;
            i = iG2;
        } else {
            int iRound2 = Math.round(mf0.g(j) * this.C);
            int i3 = mf0.i(j);
            iG = mf0.g(j);
            if (iRound2 < i3) {
                iRound2 = i3;
            }
            if (iRound2 <= iG) {
                iG = iRound2;
            }
            i = iG;
        }
        dv2 dv2VarE = ya2Var.e(nf0.a(iJ, iH, iG, i));
        return gb2Var.e0(dv2VarE.n, dv2VarE.o, h01.n, new e0(dv2VarE, 4));
    }
}
