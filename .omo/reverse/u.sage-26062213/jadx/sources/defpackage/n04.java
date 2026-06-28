package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n04 implements db2 {
    public final dq0 a;
    public final float b;
    public final zr2 c;

    public n04(dq0 dq0Var, float f, zr2 zr2Var) {
        this.a = dq0Var;
        this.b = f;
        this.c = zr2Var;
    }

    @Override // defpackage.db2
    public final int a(jt1 jt1Var, List list, int i) {
        Integer numValueOf;
        int iN = jt1Var.N(this.b);
        if (list.isEmpty()) {
            numValueOf = null;
        } else {
            numValueOf = Integer.valueOf(((ya2) list.get(0)).g(i));
            int i2 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer numValueOf2 = Integer.valueOf(((ya2) list.get(i2)).g(i));
                    if (numValueOf2.compareTo(numValueOf) > 0) {
                        numValueOf = numValueOf2;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
        }
        return Math.max(iN, numValueOf != null ? numValueOf.intValue() : 0);
    }

    @Override // defpackage.db2
    public final int c(jt1 jt1Var, List list, int i) {
        int size = list.size();
        int iR = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iR += ((ya2) list.get(i2)).R(i);
        }
        return iR;
    }

    @Override // defpackage.db2
    public final eb2 f(gb2 gb2Var, List list, final long j) {
        int iH;
        int i;
        final n04 n04Var = this;
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            ya2 ya2Var = (ya2) list.get(i2);
            if (nt1.g(on4.z(ya2Var), "navigationIcon")) {
                final dv2 dv2VarE = ya2Var.e(mf0.a(j, 0, 0, 0, 0, 14));
                int size2 = list.size();
                int i3 = 0;
                while (i3 < size2) {
                    ya2 ya2Var2 = (ya2) list.get(i3);
                    if (nt1.g(on4.z(ya2Var2), "actionIcons")) {
                        final dv2 dv2VarE2 = ya2Var2.e(mf0.a(j, 0, 0, 0, 0, 14));
                        hy1 layoutDirection = gb2Var.getLayoutDirection();
                        hy1 hy1Var = hy1.n;
                        zr2 zr2Var = n04Var.c;
                        float fA = layoutDirection == hy1Var ? zr2Var.a(layoutDirection) : zr2Var.b(layoutDirection);
                        hy1 layoutDirection2 = gb2Var.getLayoutDirection();
                        float fB = layoutDirection2 == hy1Var ? zr2Var.b(layoutDirection2) : zr2Var.a(layoutDirection2);
                        int iMax = Math.max(gb2Var.N(eg.c), dv2VarE.n);
                        if (mf0.h(j) == Integer.MAX_VALUE) {
                            iH = mf0.h(j);
                        } else {
                            int iH2 = (((mf0.h(j) - iMax) - dv2VarE2.n) - gb2Var.N(fA)) - gb2Var.N(fB);
                            iH = iH2 < 0 ? 0 : iH2;
                        }
                        int i4 = iH;
                        int size3 = list.size();
                        int i5 = 0;
                        while (i5 < size3) {
                            ya2 ya2Var3 = (ya2) list.get(i5);
                            if (nt1.g(on4.z(ya2Var3), "title")) {
                                final dv2 dv2VarE3 = ya2Var3.e(mf0.a(j, 0, i4, 0, 0, 12));
                                ck1 ck1Var = b8.b;
                                final int iV = dv2VarE3.V(ck1Var) != Integer.MIN_VALUE ? dv2VarE3.V(ck1Var) : 0;
                                cn3 cn3Var = n04Var.a.a;
                                int iV2 = Float.isNaN(0.0f) ? 0 : is0.V(0.0f);
                                final int iN = gb2Var.N(zr2Var.c()) + Math.max(gb2Var.N(n04Var.b), dv2VarE3.o) + gb2Var.N(zr2Var.d());
                                if (mf0.g(j) == Integer.MAX_VALUE) {
                                    i = iN;
                                } else {
                                    int i6 = iV2 + iN;
                                    i = i6 >= 0 ? i6 : 0;
                                }
                                int iN2 = gb2Var.N(zr2Var.d());
                                int iN3 = gb2Var.N(zr2Var.c());
                                hy1 layoutDirection3 = gb2Var.getLayoutDirection();
                                final int iN4 = gb2Var.N(layoutDirection3 == hy1Var ? zr2Var.a(layoutDirection3) : zr2Var.b(layoutDirection3));
                                hy1 layoutDirection4 = gb2Var.getLayoutDirection();
                                final int iN5 = gb2Var.N(layoutDirection4 == hy1Var ? zr2Var.b(layoutDirection4) : zr2Var.a(layoutDirection4));
                                final int i7 = (iN2 + i) - iN3;
                                return gb2Var.e0(mf0.h(j), i, h01.n, new pe1(iN4, i7, dv2VarE3, dv2VarE2, j, iN5, n04Var, iV, iN) { // from class: m04
                                    public final /* synthetic */ int o;
                                    public final /* synthetic */ int p;
                                    public final /* synthetic */ dv2 q;
                                    public final /* synthetic */ dv2 r;
                                    public final /* synthetic */ long s;
                                    public final /* synthetic */ int t;

                                    @Override // defpackage.pe1
                                    public final Object k(Object obj) {
                                        int iH3;
                                        cv2 cv2Var = (cv2) obj;
                                        dv2 dv2Var = this.n;
                                        int i8 = dv2Var.o;
                                        int i9 = this.p;
                                        int i10 = this.o;
                                        cv2.j(cv2Var, dv2Var, i10, (i9 - i8) / 2);
                                        int iMax2 = Math.max(cv2Var.N(eg.c), dv2Var.n);
                                        dv2 dv2Var2 = this.r;
                                        int i11 = dv2Var2.n;
                                        dv2 dv2Var3 = this.q;
                                        int i12 = dv2Var3.n;
                                        long j2 = this.s;
                                        int iRound = Math.round((1.0f - 1.0f) * ((mf0.h(j2) - i12) / 2.0f));
                                        if (iRound >= iMax2) {
                                            if (dv2Var3.n + iRound > mf0.h(j2) - i11) {
                                                iH3 = (mf0.h(j2) - i11) - (dv2Var3.n + iRound);
                                            }
                                            cv2.j(cv2Var, dv2Var3, iRound, (i9 - dv2Var3.o) / 2);
                                            cv2.j(cv2Var, dv2Var2, (mf0.h(j2) - dv2Var2.n) - this.t, (i9 - dv2Var2.o) / 2);
                                            return t64.a;
                                        }
                                        iH3 = iMax2 - iRound;
                                        iRound += iH3 + i10;
                                        cv2.j(cv2Var, dv2Var3, iRound, (i9 - dv2Var3.o) / 2);
                                        cv2.j(cv2Var, dv2Var2, (mf0.h(j2) - dv2Var2.n) - this.t, (i9 - dv2Var2.o) / 2);
                                        return t64.a;
                                    }
                                });
                            }
                            i5++;
                            n04Var = this;
                        }
                        n42.b("Collection contains no element matching the predicate.");
                        p61.q();
                        return null;
                    }
                    i3++;
                    n04Var = this;
                }
                n42.b("Collection contains no element matching the predicate.");
                p61.q();
                return null;
            }
            i2++;
            n04Var = this;
        }
        n42.b("Collection contains no element matching the predicate.");
        p61.q();
        return null;
    }

    @Override // defpackage.db2
    public final int g(jt1 jt1Var, List list, int i) {
        Integer numValueOf;
        int iN = jt1Var.N(this.b);
        if (list.isEmpty()) {
            numValueOf = null;
        } else {
            numValueOf = Integer.valueOf(((ya2) list.get(0)).T(i));
            int i2 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer numValueOf2 = Integer.valueOf(((ya2) list.get(i2)).T(i));
                    if (numValueOf2.compareTo(numValueOf) > 0) {
                        numValueOf = numValueOf2;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
        }
        return Math.max(iN, numValueOf != null ? numValueOf.intValue() : 0);
    }

    @Override // defpackage.db2
    public final int i(jt1 jt1Var, List list, int i) {
        int size = list.size();
        int iK = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iK += ((ya2) list.get(i2)).K(i);
        }
        return iK;
    }
}
