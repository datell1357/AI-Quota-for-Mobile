package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k80 implements db2, za3 {
    public final sh a;
    public final aw b;

    public k80(sh shVar, aw awVar) {
        this.a = shVar;
        this.b = awVar;
    }

    @Override // defpackage.db2
    public final int a(jt1 jt1Var, List list, int i) {
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
            int iG = ya2Var.g(i);
            if (fC == 0.0f) {
                i2 += iG;
            } else if (fC > 0.0f) {
                f += fC;
                iMax = Math.max(iMax, Math.round(iG / fC));
            }
        }
        return ((list.size() - 1) * iN) + Math.round(iMax * f) + i2;
    }

    @Override // defpackage.za3
    public final void b(int i, gb2 gb2Var, int[] iArr, int[] iArr2) {
        this.a.j(i, gb2Var, iArr, iArr2);
    }

    @Override // defpackage.db2
    public final int c(jt1 jt1Var, List list, int i) {
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
                int iMin2 = Math.min(ya2Var.g(Api.BaseClientBuilder.API_PRIORITY_OTHER), i == Integer.MAX_VALUE ? Integer.MAX_VALUE : i - iMin);
                iMin += iMin2;
                iMax = Math.max(iMax, ya2Var.R(iMin2));
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
                iMax = Math.max(iMax, ya2Var2.R(iRound != Integer.MAX_VALUE ? Math.round(iRound * fC2) : Integer.MAX_VALUE));
            }
        }
        return iMax;
    }

    @Override // defpackage.za3
    public final long d(int i, int i2, int i3, boolean z) {
        return !z ? nf0.a(0, i3, i, i2) : on4.s(0, i3, i, i2);
    }

    @Override // defpackage.za3
    public final int e(dv2 dv2Var) {
        return dv2Var.n;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k80)) {
            return false;
        }
        k80 k80Var = (k80) obj;
        return this.a.equals(k80Var.a) && this.b.equals(k80Var.b);
    }

    @Override // defpackage.db2
    public final eb2 f(gb2 gb2Var, List list, long j) {
        return zf5.O(this, mf0.i(j), mf0.j(j), mf0.g(j), mf0.h(j), gb2Var.N(this.a.a()), gb2Var, list, new dv2[list.size()], 0, list.size(), null, 0);
    }

    @Override // defpackage.db2
    public final int g(jt1 jt1Var, List list, int i) {
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
            int iT = ya2Var.T(i);
            if (fC == 0.0f) {
                i2 += iT;
            } else if (fC > 0.0f) {
                f += fC;
                iMax = Math.max(iMax, Math.round(iT / fC));
            }
        }
        return ((list.size() - 1) * iN) + Math.round(iMax * f) + i2;
    }

    @Override // defpackage.za3
    public final int h(dv2 dv2Var) {
        return dv2Var.o;
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
        int iMin = Math.min((list.size() - 1) * iN, i);
        int size = list.size();
        int iMax = 0;
        float f = 0.0f;
        for (int i2 = 0; i2 < size; i2++) {
            ya2 ya2Var = (ya2) list.get(i2);
            float fC = k75.C(k75.B(ya2Var));
            if (fC == 0.0f) {
                int iMin2 = Math.min(ya2Var.g(Api.BaseClientBuilder.API_PRIORITY_OTHER), i == Integer.MAX_VALUE ? Integer.MAX_VALUE : i - iMin);
                iMin += iMin2;
                iMax = Math.max(iMax, ya2Var.K(iMin2));
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
                iMax = Math.max(iMax, ya2Var2.K(iRound != Integer.MAX_VALUE ? Math.round(iRound * fC2) : Integer.MAX_VALUE));
            }
        }
        return iMax;
    }

    @Override // defpackage.za3
    public final eb2 j(final dv2[] dv2VarArr, final gb2 gb2Var, final int[] iArr, int i, final int i2, int[] iArr2, int i3, int i4, int i5) {
        return gb2Var.e0(i2, i, h01.n, new pe1() { // from class: j80
            @Override // defpackage.pe1
            public final Object k(Object obj) {
                cv2 cv2Var = (cv2) obj;
                dv2[] dv2VarArr2 = dv2VarArr;
                int length = dv2VarArr2.length;
                int i6 = 0;
                int i7 = 0;
                while (i6 < length) {
                    dv2 dv2Var = dv2VarArr2[i6];
                    int i8 = i7 + 1;
                    dv2Var.getClass();
                    Object objI = dv2Var.i();
                    ab3 ab3Var = objI instanceof ab3 ? (ab3) objI : null;
                    hy1 layoutDirection = gb2Var.getLayoutDirection();
                    al0 al0Var = ab3Var != null ? ab3Var.c : null;
                    int i9 = i2;
                    cv2.h(cv2Var, dv2Var, al0Var != null ? al0Var.i.a(dv2Var.n, i9, layoutDirection) : this.b.a(dv2Var.n, i9, layoutDirection), iArr[i7]);
                    i6++;
                    i7 = i8;
                }
                return t64.a;
            }
        });
    }

    public final String toString() {
        return "ColumnMeasurePolicy(verticalArrangement=" + this.a + ", horizontalAlignment=" + this.b + ")";
    }
}
