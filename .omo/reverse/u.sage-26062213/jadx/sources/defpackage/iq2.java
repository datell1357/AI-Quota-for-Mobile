package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class iq2 extends zq2 {
    public static final iq2 c = new iq2(1, 0, 2);

    @Override // defpackage.zq2
    public final void a(e50 e50Var, kh khVar, xn3 xn3Var, l53 l53Var, ar2 ar2Var) {
        int[] iArr;
        vf1 vf1Var;
        int iC;
        int iC2 = e50Var.c(0);
        if (xn3Var.n != 0) {
            wb0.a("Cannot move a group while inserting");
        }
        if (iC2 < 0) {
            wb0.a("Parameter offset is out of bounds");
        }
        if (iC2 == 0) {
            return;
        }
        int i = xn3Var.t;
        int i2 = xn3Var.v;
        int i3 = xn3Var.f410u;
        int i4 = i;
        while (true) {
            iArr = xn3Var.b;
            if (iC2 <= 0) {
                break;
            }
            i4 += iArr[(xn3Var.r(i4) * 5) + 3];
            if (i4 > i3) {
                wb0.a("Parameter offset is out of bounds");
            }
            iC2--;
        }
        int i5 = iArr[(xn3Var.r(i4) * 5) + 3];
        int iG = xn3Var.g(xn3Var.b, xn3Var.r(xn3Var.t));
        int iG2 = xn3Var.g(xn3Var.b, xn3Var.r(i4));
        int i6 = i4 + i5;
        int iG3 = xn3Var.g(xn3Var.b, xn3Var.r(i6));
        int i7 = iG3 - iG2;
        xn3Var.x(i7, Math.max(xn3Var.t - 1, 0));
        xn3Var.w(i5);
        int[] iArr2 = xn3Var.b;
        int iR = xn3Var.r(i6) * 5;
        ji.N(xn3Var.r(i) * 5, iR, (i5 * 5) + iR, iArr2, iArr2);
        if (i7 > 0) {
            Object[] objArr = xn3Var.c;
            int iH = xn3Var.h(iG2 + i7);
            System.arraycopy(objArr, iH, objArr, iG, xn3Var.h(iG3 + i7) - iH);
        }
        int i8 = iG2 + i7;
        int i9 = i8 - iG;
        int i10 = xn3Var.k;
        int i11 = xn3Var.l;
        int length = xn3Var.c.length;
        int i12 = xn3Var.m;
        int i13 = i + i5;
        int i14 = i;
        while (i14 < i13) {
            int iR2 = xn3Var.r(i14);
            int i15 = i9;
            int[] iArr3 = iArr2;
            iArr3[(iR2 * 5) + 4] = xn3.i(xn3.i(xn3Var.g(iArr2, iR2) - i15, i12 < iR2 ? 0 : i10, i11, length), xn3Var.k, xn3Var.l, xn3Var.c.length);
            i14++;
            i9 = i15;
            iArr2 = iArr3;
            i10 = i10;
        }
        int i16 = i6 + i5;
        int iP = xn3Var.p();
        int iA = wn3.a(xn3Var.d, i6, iP);
        ArrayList arrayList = new ArrayList();
        if (iA >= 0) {
            while (iA < xn3Var.d.size() && (iC = xn3Var.c((vf1Var = (vf1) xn3Var.d.get(iA)))) >= i6 && iC < i16) {
                arrayList.add(vf1Var);
            }
        }
        int i17 = i - i6;
        int size = arrayList.size();
        for (int i18 = 0; i18 < size; i18++) {
            vf1 vf1Var2 = (vf1) arrayList.get(i18);
            int iC3 = xn3Var.c(vf1Var2) + i17;
            if (iC3 >= xn3Var.g) {
                vf1Var2.a = -(iP - iC3);
            } else {
                vf1Var2.a = iC3;
            }
            xn3Var.d.add(wn3.a(xn3Var.d, iC3, iP), vf1Var2);
        }
        if (xn3Var.I(i6, i5)) {
            wb0.a("Unexpectedly removed anchors");
        }
        xn3Var.m(i2, xn3Var.f410u, i);
        if (i7 > 0) {
            xn3Var.J(i8, i7, i6 - 1);
        }
    }
}
