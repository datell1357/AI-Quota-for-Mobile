package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cb3 implements db2, za3 {
    public final qh a;
    public final bw b;

    public cb3(qh qhVar, bw bwVar) {
        this.a = qhVar;
        this.b = bwVar;
    }

    @Override // defpackage.db2
    public final int a(jt1 jt1Var, List list, int i) {
        int iN = jt1Var.N(this.a.a());
        if (list.isEmpty()) {
            return 0;
        }
        int iMin = Math.min((list.size() - 1) * iN, i);
        int size = list.size();
        int iMax = 0;
        float f = 0.0f;
        for (int i2 = 0; i2 < size; i2++) {
            ya2 ya2Var = (ya2) list.get(i2);
            float fC = k75.C(k75.B(ya2Var));
            if (fC == 0.0f) {
                int iMin2 = Math.min(ya2Var.R(Api.BaseClientBuilder.API_PRIORITY_OTHER), i == Integer.MAX_VALUE ? Integer.MAX_VALUE : i - iMin);
                iMin += iMin2;
                iMax = Math.max(iMax, ya2Var.g(iMin2));
            } else if (fC > 0.0f) {
                f += fC;
            }
        }
        int iRound = f == 0.0f ? 0 : i == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.round(Math.max(i - iMin, 0) / f);
        int size2 = list.size();
        for (int i3 = 0; i3 < size2; i3++) {
            ya2 ya2Var2 = (ya2) list.get(i3);
            float fC2 = k75.C(k75.B(ya2Var2));
            if (fC2 > 0.0f) {
                iMax = Math.max(iMax, ya2Var2.g(iRound != Integer.MAX_VALUE ? Math.round(iRound * fC2) : Integer.MAX_VALUE));
            }
        }
        return iMax;
    }

    @Override // defpackage.za3
    public final void b(int i, gb2 gb2Var, int[] iArr, int[] iArr2) {
        this.a.i(gb2Var, i, iArr, gb2Var.getLayoutDirection(), iArr2);
    }

    @Override // defpackage.db2
    public final int c(jt1 jt1Var, List list, int i) {
        int iN = jt1Var.N(this.a.a());
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int iMax = 0;
        int i2 = 0;
        float f = 0.0f;
        for (int i3 = 0; i3 < size; i3++) {
            ya2 ya2Var = (ya2) list.get(i3);
            float fC = k75.C(k75.B(ya2Var));
            int iR = ya2Var.R(i);
            if (fC == 0.0f) {
                i2 += iR;
            } else if (fC > 0.0f) {
                f += fC;
                iMax = Math.max(iMax, Math.round(iR / fC));
            }
        }
        return ((list.size() - 1) * iN) + Math.round(iMax * f) + i2;
    }

    @Override // defpackage.za3
    public final long d(int i, int i2, int i3, boolean z) {
        return !z ? nf0.a(i, i2, 0, i3) : on4.t(i, i2, 0, i3);
    }

    @Override // defpackage.za3
    public final int e(dv2 dv2Var) {
        return dv2Var.o;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cb3)) {
            return false;
        }
        cb3 cb3Var = (cb3) obj;
        return nt1.g(this.a, cb3Var.a) && this.b.equals(cb3Var.b);
    }

    @Override // defpackage.db2
    public final eb2 f(gb2 gb2Var, List list, long j) {
        return zf5.O(this, mf0.j(j), mf0.i(j), mf0.h(j), mf0.g(j), gb2Var.N(this.a.a()), gb2Var, list, new dv2[list.size()], 0, list.size(), null, 0);
    }

    @Override // defpackage.db2
    public final int g(jt1 jt1Var, List list, int i) {
        int iN = jt1Var.N(this.a.a());
        if (list.isEmpty()) {
            return 0;
        }
        int iMin = Math.min((list.size() - 1) * iN, i);
        int size = list.size();
        int iMax = 0;
        float f = 0.0f;
        for (int i2 = 0; i2 < size; i2++) {
            ya2 ya2Var = (ya2) list.get(i2);
            float fC = k75.C(k75.B(ya2Var));
            if (fC == 0.0f) {
                int iMin2 = Math.min(ya2Var.R(Api.BaseClientBuilder.API_PRIORITY_OTHER), i == Integer.MAX_VALUE ? Integer.MAX_VALUE : i - iMin);
                iMin += iMin2;
                iMax = Math.max(iMax, ya2Var.T(iMin2));
            } else if (fC > 0.0f) {
                f += fC;
            }
        }
        int iRound = f == 0.0f ? 0 : i == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.round(Math.max(i - iMin, 0) / f);
        int size2 = list.size();
        for (int i3 = 0; i3 < size2; i3++) {
            ya2 ya2Var2 = (ya2) list.get(i3);
            float fC2 = k75.C(k75.B(ya2Var2));
            if (fC2 > 0.0f) {
                iMax = Math.max(iMax, ya2Var2.T(iRound != Integer.MAX_VALUE ? Math.round(iRound * fC2) : Integer.MAX_VALUE));
            }
        }
        return iMax;
    }

    @Override // defpackage.za3
    public final int h(dv2 dv2Var) {
        return dv2Var.n;
    }

    public final int hashCode() {
        return Float.hashCode(this.b.a) + (this.a.hashCode() * 31);
    }

    @Override // defpackage.db2
    public final int i(jt1 jt1Var, List list, int i) {
        int iN = jt1Var.N(this.a.a());
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int iMax = 0;
        int i2 = 0;
        float f = 0.0f;
        for (int i3 = 0; i3 < size; i3++) {
            ya2 ya2Var = (ya2) list.get(i3);
            float fC = k75.C(k75.B(ya2Var));
            int iK = ya2Var.K(i);
            if (fC == 0.0f) {
                i2 += iK;
            } else if (fC > 0.0f) {
                f += fC;
                iMax = Math.max(iMax, Math.round(iK / fC));
            }
        }
        return ((list.size() - 1) * iN) + Math.round(iMax * f) + i2;
    }

    @Override // defpackage.za3
    public final eb2 j(dv2[] dv2VarArr, gb2 gb2Var, int[] iArr, int i, int i2, int[] iArr2, int i3, int i4, int i5) {
        return gb2Var.e0(i, i2, h01.n, new ms0(dv2VarArr, this, i2, iArr));
    }

    public final String toString() {
        return "RowMeasurePolicy(horizontalArrangement=" + this.a + ", verticalAlignment=" + this.b + ")";
    }
}
