package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tx implements db2 {
    public final cw a;
    public final boolean b;

    public tx(cw cwVar, boolean z) {
        this.a = cwVar;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tx)) {
            return false;
        }
        tx txVar = (tx) obj;
        return this.a.equals(txVar.a) && this.b == txVar.b;
    }

    @Override // defpackage.db2
    public final eb2 f(final gb2 gb2Var, List list, long j) {
        boolean zIsEmpty = list.isEmpty();
        h01 h01Var = h01.n;
        if (zIsEmpty) {
            return gb2Var.e0(mf0.j(j), mf0.i(j), h01Var, new t3(11));
        }
        long j2 = this.b ? j : j & (-8589934589L);
        if (list.size() == 1) {
            final ya2 ya2Var = (ya2) list.get(0);
            ya2Var.i();
            final dv2 dv2VarE = ya2Var.e(j2);
            final int iMax = Math.max(mf0.j(j), dv2VarE.n);
            final int iMax2 = Math.max(mf0.i(j), dv2VarE.o);
            return gb2Var.e0(iMax, iMax2, h01Var, new pe1() { // from class: rx
                @Override // defpackage.pe1
                public final Object k(Object obj) {
                    qx.b((cv2) obj, dv2VarE, ya2Var, gb2Var.getLayoutDirection(), iMax, iMax2, this.a);
                    return t64.a;
                }
            });
        }
        dv2[] dv2VarArr = new dv2[list.size()];
        u33 u33Var = new u33();
        u33Var.n = mf0.j(j);
        u33 u33Var2 = new u33();
        u33Var2.n = mf0.i(j);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ya2 ya2Var2 = (ya2) list.get(i);
            ya2Var2.i();
            dv2 dv2VarE2 = ya2Var2.e(j2);
            dv2VarArr[i] = dv2VarE2;
            u33Var.n = Math.max(u33Var.n, dv2VarE2.n);
            u33Var2.n = Math.max(u33Var2.n, dv2VarE2.o);
        }
        return gb2Var.e0(u33Var.n, u33Var2.n, h01Var, new sx(dv2VarArr, list, gb2Var, u33Var, u33Var2, this, 0));
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "BoxMeasurePolicy(alignment=" + this.a + ", propagateMinConstraints=" + this.b + ")";
    }
}
