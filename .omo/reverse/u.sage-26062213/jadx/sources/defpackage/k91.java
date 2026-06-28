package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k91 implements za3 {
    public final qh a;
    public final sh b;
    public final float c;
    public final bl0 d;
    public final float e;
    public final i91 f;

    public k91(qh qhVar, sh shVar, float f, bl0 bl0Var, float f2, i91 i91Var) {
        this.a = qhVar;
        this.b = shVar;
        this.c = f;
        this.d = bl0Var;
        this.e = f2;
        this.f = i91Var;
    }

    public static int a(List list, int i, int i2, int i3, i91 i91Var) {
        boolean z;
        boolean z2;
        long jA = ds1.a(0, 0);
        if (!list.isEmpty()) {
            int i4 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            e91 e91Var = new e91(i91Var, nf0.a(0, i, 0, Api.BaseClientBuilder.API_PRIORITY_OTHER), i2, i3);
            ya2 ya2Var = (ya2) o70.j0(0, list);
            int iT = ya2Var != null ? ya2Var.T(i) : 0;
            int iK = ya2Var != null ? ya2Var.K(iT) : 0;
            boolean z3 = true;
            if (list.size() > 1) {
                z = true;
            } else {
                z = true;
                z3 = false;
            }
            int i5 = 0;
            if (e91Var.b(z3, 0, ds1.a(i, Api.BaseClientBuilder.API_PRIORITY_OTHER), ya2Var == null ? null : new ds1(ds1.a(iK, iT)), 0, 0, 0, false, false).b) {
                i91Var.getClass();
                jA = jA;
            } else {
                int size = list.size();
                int i6 = i;
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    if (i9 >= size) {
                        break;
                    }
                    int i12 = i6 - iK;
                    int i13 = i9 + 1;
                    int iMax = Math.max(i8, iT);
                    ya2 ya2Var2 = (ya2) o70.j0(i13, list);
                    iT = ya2Var2 != null ? ya2Var2.T(i) : 0;
                    int iK2 = ya2Var2 != null ? ya2Var2.K(iT) + i2 : 0;
                    if (i9 + 2 < list.size()) {
                        i9 = i13;
                        z2 = z;
                    } else {
                        i9 = i13;
                        z2 = false;
                    }
                    int i14 = i9 - i11;
                    int i15 = i7;
                    int i16 = iK2;
                    d91 d91VarB = e91Var.b(z2, i14, ds1.a(i12, i4), ya2Var2 == null ? null : new ds1(ds1.a(iK2, iT)), i15, i5, iMax, false, false);
                    if (d91VarB.a) {
                        int i17 = iMax + i3 + i5;
                        e91Var.a(d91VarB, ya2Var2 != null, i15, i17, i12, i14);
                        int i18 = i16 - i2;
                        i7 = i15 + 1;
                        if (d91VarB.b) {
                            i10 = i9;
                            i5 = i17;
                            break;
                        }
                        i6 = i;
                        i11 = i9;
                        iK = i18;
                        i5 = i17;
                        i8 = 0;
                    } else {
                        iK = i16;
                        i6 = i12;
                        i7 = i15;
                        i8 = iMax;
                    }
                    i10 = i9;
                    i4 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                    z = true;
                }
                jA = ds1.a(i5 - i3, i10);
            }
        }
        return (int) (jA >> 32);
    }

    @Override // defpackage.za3
    public final void b(int i, gb2 gb2Var, int[] iArr, int[] iArr2) {
        this.a.i(gb2Var, i, iArr, gb2Var.getLayoutDirection(), iArr2);
    }

    @Override // defpackage.za3
    public final long d(int i, int i2, int i3, boolean z) {
        cb3 cb3Var = bb3.a;
        return !z ? nf0.a(i, i2, 0, i3) : on4.t(i, i2, 0, i3);
    }

    @Override // defpackage.za3
    public final int e(dv2 dv2Var) {
        return dv2Var.Y();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k91)) {
            return false;
        }
        k91 k91Var = (k91) obj;
        return this.a.equals(k91Var.a) && this.b.equals(k91Var.b) && cw0.b(this.c, k91Var.c) && this.d.equals(k91Var.d) && cw0.b(this.e, k91Var.e) && nt1.g(this.f, k91Var.f);
    }

    @Override // defpackage.za3
    public final int h(dv2 dv2Var) {
        return dv2Var.a0();
    }

    public final int hashCode() {
        return this.f.hashCode() + xw1.j(Api.BaseClientBuilder.API_PRIORITY_OTHER, xw1.j(Api.BaseClientBuilder.API_PRIORITY_OTHER, di0.l(this.e, di0.l(-1.0f, di0.l(this.c, (this.b.hashCode() + ((this.a.hashCode() + (Boolean.hashCode(true) * 31)) * 31)) * 31, 31), 31), 31), 31), 31);
    }

    @Override // defpackage.za3
    public final eb2 j(final dv2[] dv2VarArr, gb2 gb2Var, final int[] iArr, int i, final int i2, final int[] iArr2, final int i3, final int i4, final int i5) {
        final hy1 hy1Var = hy1.n;
        return gb2Var.e0(i, i2, h01.n, new pe1() { // from class: j91
            @Override // defpackage.pe1
            public final Object k(Object obj) {
                nt1 nt1Var;
                cv2 cv2Var = (cv2) obj;
                int[] iArr3 = iArr2;
                int i6 = iArr3 != null ? iArr3[i3] : 0;
                int i7 = i4;
                for (int i8 = i7; i8 < i5; i8++) {
                    dv2 dv2Var = dv2VarArr[i8];
                    dv2Var.getClass();
                    Object objI = dv2Var.i();
                    ab3 ab3Var = objI instanceof ab3 ? (ab3) objI : null;
                    if (ab3Var == null || (nt1Var = ab3Var.c) == null) {
                        nt1Var = this.d;
                    }
                    cv2.h(cv2Var, dv2Var, iArr[i8 - i7], nt1Var.f(i2, dv2Var.Y(), hy1Var) + i6);
                }
                return t64.a;
            }
        });
    }

    public final String toString() {
        return "FlowMeasurePolicy(isHorizontal=true, horizontalArrangement=" + this.a + ", verticalArrangement=" + this.b + ", mainAxisSpacing=" + cw0.c(this.c) + ", crossAxisAlignment=" + this.d + ", crossAxisArrangementSpacing=" + cw0.c(this.e) + ", maxItemsInMainAxis=2147483647, maxLines=2147483647, overflow=" + this.f + ")";
    }
}
