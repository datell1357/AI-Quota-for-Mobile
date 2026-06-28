package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yj2 implements db2 {
    public final /* synthetic */ ne1 a;
    public final /* synthetic */ df1 b;
    public final /* synthetic */ boolean c;

    public yj2(ne1 ne1Var, df1 df1Var, boolean z) {
        this.a = ne1Var;
        this.b = df1Var;
        this.c = z;
    }

    @Override // defpackage.db2
    public final eb2 f(gb2 gb2Var, List list, long j) {
        Object obj;
        final dv2 dv2VarE;
        final dv2 dv2VarE2;
        float fFloatValue = ((Number) this.a.a()).floatValue();
        final float f = fFloatValue < 0.0f ? 0.0f : fFloatValue;
        long jA = mf0.a(j, 0, 0, 0, 0, 10);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ya2 ya2Var = (ya2) list.get(i);
            if (nt1.g(on4.z(ya2Var), "icon")) {
                final dv2 dv2VarE3 = ya2Var.e(jA);
                float f2 = 2.0f;
                int iN = gb2Var.N(zj2.d * 2.0f) + dv2VarE3.n;
                int iV = is0.V(iN * f);
                int iN2 = gb2Var.N(zj2.e * 2.0f) + dv2VarE3.o;
                int size2 = list.size();
                int i2 = 0;
                while (i2 < size2) {
                    ya2 ya2Var2 = (ya2) list.get(i2);
                    float f3 = f2;
                    if (nt1.g(on4.z(ya2Var2), "indicatorRipple")) {
                        if (!((iN >= 0) & (iN2 >= 0))) {
                            cr1.a("width and height must be >= 0");
                        }
                        final dv2 dv2VarE4 = ya2Var2.e(nf0.g(iN, iN, iN2, iN2));
                        int size3 = list.size();
                        int i3 = 0;
                        while (true) {
                            if (i3 >= size3) {
                                obj = null;
                                break;
                            }
                            obj = list.get(i3);
                            int i4 = size3;
                            if (nt1.g(on4.z((ya2) obj), "indicator")) {
                                break;
                            }
                            i3++;
                            size3 = i4;
                        }
                        ya2 ya2Var3 = (ya2) obj;
                        if (ya2Var3 != null) {
                            if (!((iV >= 0) & (iN2 >= 0))) {
                                cr1.a("width and height must be >= 0");
                            }
                            dv2VarE = ya2Var3.e(nf0.g(iV, iV, iN2, iN2));
                        } else {
                            dv2VarE = null;
                        }
                        df1 df1Var = this.b;
                        if (df1Var != null) {
                            int size4 = list.size();
                            for (int i5 = 0; i5 < size4; i5++) {
                                ya2 ya2Var4 = (ya2) list.get(i5);
                                if (nt1.g(on4.z(ya2Var4), "label")) {
                                    dv2VarE2 = ya2Var4.e(jA);
                                }
                            }
                            n42.b("Collection contains no element matching the predicate.");
                            p61.q();
                            return null;
                        }
                        dv2VarE2 = null;
                        h01 h01Var = h01.n;
                        if (df1Var == null) {
                            final int iN3 = mf0.h(j) == Integer.MAX_VALUE ? (gb2Var.N(zj2.g) * 2) + dv2VarE3.n : mf0.h(j);
                            final int iE = nf0.e(gb2Var.N(zj2.a), j);
                            final int i6 = (iN3 - dv2VarE3.n) / 2;
                            final int i7 = (iE - dv2VarE3.o) / 2;
                            final int i8 = (iN3 - dv2VarE4.n) / 2;
                            final int i9 = (iE - dv2VarE4.o) / 2;
                            final dv2 dv2Var = dv2VarE;
                            return gb2Var.e0(iN3, iE, h01Var, new pe1() { // from class: uj2
                                @Override // defpackage.pe1
                                public final Object k(Object obj2) {
                                    cv2 cv2Var = (cv2) obj2;
                                    dv2 dv2Var2 = dv2Var;
                                    if (dv2Var2 != null) {
                                        cv2.j(cv2Var, dv2Var2, (iN3 - dv2Var2.n) / 2, (iE - dv2Var2.o) / 2);
                                    }
                                    cv2.j(cv2Var, dv2VarE3, i6, i7);
                                    cv2.j(cv2Var, dv2VarE4, i8, i9);
                                    return t64.a;
                                }
                            });
                        }
                        dv2VarE2.getClass();
                        float f4 = dv2VarE3.o;
                        float f5 = zj2.e;
                        float fV = gb2Var.v(f5) + f4;
                        float f6 = zj2.c;
                        float fV2 = gb2Var.v(f6) + fV + dv2VarE2.o;
                        float fI = (mf0.i(j) - fV2) / f3;
                        float fV3 = gb2Var.v(f5);
                        final float f7 = fI < fV3 ? fV3 : fI;
                        float f8 = (f7 * f3) + fV2;
                        final boolean z = this.c;
                        final float f9 = ((z ? f7 : (f8 - dv2VarE3.o) / f3) - f7) * (1.0f - f);
                        final float fV4 = gb2Var.v(f6) + gb2Var.v(f5) + f7 + dv2VarE3.o;
                        final int iN4 = mf0.h(j) == Integer.MAX_VALUE ? (gb2Var.N(zj2.g) * 2) + dv2VarE3.n : mf0.h(j);
                        final int i10 = (iN4 - dv2VarE2.n) / 2;
                        final int i11 = (iN4 - dv2VarE3.n) / 2;
                        final int i12 = (iN4 - dv2VarE4.n) / 2;
                        final float fV5 = f7 - gb2Var.v(f5);
                        return gb2Var.e0(iN4, is0.V(f8), h01Var, new pe1() { // from class: tj2
                            @Override // defpackage.pe1
                            public final Object k(Object obj2) {
                                cv2 cv2Var = (cv2) obj2;
                                dv2 dv2Var2 = dv2VarE;
                                float f10 = f9;
                                float f11 = f7;
                                if (dv2Var2 != null) {
                                    cv2.j(cv2Var, dv2Var2, (iN4 - dv2Var2.n) / 2, is0.V((f11 - cv2Var.N(zj2.e)) + f10));
                                }
                                if (z || f != 0.0f) {
                                    cv2.j(cv2Var, dv2VarE2, i10, is0.V(fV4 + f10));
                                }
                                cv2.j(cv2Var, dv2VarE3, i11, is0.V(f11 + f10));
                                cv2.j(cv2Var, dv2VarE4, i12, is0.V(fV5 + f10));
                                return t64.a;
                            }
                        });
                    }
                    i2++;
                    f2 = f3;
                }
                n42.b("Collection contains no element matching the predicate.");
                p61.q();
                return null;
            }
        }
        n42.b("Collection contains no element matching the predicate.");
        p61.q();
        return null;
    }
}
