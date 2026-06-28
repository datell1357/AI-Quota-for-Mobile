package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zz1 extends md2 implements oy1 {
    public static final xz1 E = new xz1();
    public x02 B;
    public zx C;
    public hr2 D;

    public final boolean G0(vz1 vz1Var, int i) {
        if (i != 5 && i != 6) {
            if (i == 3 || i == 4) {
                if (this.D != hr2.n) {
                }
            } else if (i != 1 && i != 2) {
                k21.n("Lazy list does not support beyond bounds layout for the specified direction");
                return false;
            }
            if (H0(i) ? vz1Var.a > 0 : vz1Var.b < this.B.a.h().n - 1) {
                return true;
            }
        } else if (this.D != hr2.o) {
            if (H0(i)) {
            }
        }
        return false;
    }

    public final boolean H0(int i) {
        if (i == 1) {
            return false;
        }
        if (i == 2) {
            return true;
        }
        if (i == 5) {
            return false;
        }
        if (i == 6) {
            return true;
        }
        if (i == 3) {
            int iOrdinal = w80.R(this).M.ordinal();
            if (iOrdinal == 0) {
                return false;
            }
            if (iOrdinal == 1) {
                return true;
            }
            p61.x();
            return false;
        }
        if (i != 4) {
            k21.n("Lazy list does not support beyond bounds layout for the specified direction");
            return false;
        }
        int iOrdinal2 = w80.R(this).M.ordinal();
        if (iOrdinal2 == 0) {
            return true;
        }
        if (iOrdinal2 == 1) {
            return false;
        }
        p61.x();
        return false;
    }

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        dv2 dv2VarE = ya2Var.e(j);
        return gb2Var.e0(dv2VarE.n, dv2VarE.o, h01.n, new e0(dv2VarE, 5));
    }
}
