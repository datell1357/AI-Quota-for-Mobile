package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p74 extends md2 implements oy1 {
    public float B;
    public float C;

    @Override // defpackage.oy1
    public final int O(k82 k82Var, ya2 ya2Var, int i) {
        int iK = ya2Var.K(i);
        int iN = !Float.isNaN(this.B) ? k82Var.N(this.B) : 0;
        return iK < iN ? iN : iK;
    }

    @Override // defpackage.oy1
    public final int e(k82 k82Var, ya2 ya2Var, int i) {
        int iR = ya2Var.R(i);
        int iN = !Float.isNaN(this.B) ? k82Var.N(this.B) : 0;
        return iR < iN ? iN : iR;
    }

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        int iJ;
        int i;
        if (Float.isNaN(this.B) || mf0.j(j) != 0) {
            iJ = mf0.j(j);
        } else {
            int iN = gb2Var.N(this.B);
            iJ = mf0.h(j);
            if (iN < 0) {
                iN = 0;
            }
            if (iN <= iJ) {
                iJ = iN;
            }
        }
        int iH = mf0.h(j);
        if (Float.isNaN(this.C) || mf0.i(j) != 0) {
            i = mf0.i(j);
        } else {
            int iN2 = gb2Var.N(this.C);
            i = mf0.g(j);
            int i2 = iN2 >= 0 ? iN2 : 0;
            if (i2 <= i) {
                i = i2;
            }
        }
        dv2 dv2VarE = ya2Var.e(nf0.a(iJ, iH, i, mf0.g(j)));
        return gb2Var.e0(dv2VarE.n, dv2VarE.o, h01.n, new e0(dv2VarE, 8));
    }

    @Override // defpackage.oy1
    public final int l(k82 k82Var, ya2 ya2Var, int i) {
        int iG = ya2Var.g(i);
        int iN = !Float.isNaN(this.C) ? k82Var.N(this.C) : 0;
        return iG < iN ? iN : iG;
    }

    @Override // defpackage.oy1
    public final int y(k82 k82Var, ya2 ya2Var, int i) {
        int iT = ya2Var.T(i);
        int iN = !Float.isNaN(this.C) ? k82Var.N(this.C) : 0;
        return iT < iN ? iN : iT;
    }
}
