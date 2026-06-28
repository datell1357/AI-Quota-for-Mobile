package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pe2 implements db2 {
    public final k91 a;

    public pe2(k91 k91Var) {
        this.a = k91Var;
    }

    @Override // defpackage.db2
    public final int a(jt1 jt1Var, List list, int i) {
        ArrayList arrayListV = bi4.v(jt1Var);
        k91 k91Var = this.a;
        i91 i91Var = k91Var.f;
        List list2 = (List) o70.j0(1, arrayListV);
        ya2 ya2Var = list2 != null ? (ya2) o70.i0(list2) : null;
        List list3 = (List) o70.j0(2, arrayListV);
        i91Var.a(ya2Var, list3 != null ? (ya2) o70.i0(list3) : null, nf0.b(i, 0, 13));
        List list4 = (List) o70.i0(arrayListV);
        if (list4 == null) {
            list4 = g01.n;
        }
        return k91.a(list4, i, jt1Var.N(k91Var.c), jt1Var.N(k91Var.e), k91Var.f);
    }

    @Override // defpackage.db2
    public final int c(jt1 jt1Var, List list, int i) {
        ArrayList arrayListV = bi4.v(jt1Var);
        k91 k91Var = this.a;
        i91 i91Var = k91Var.f;
        List list2 = (List) o70.j0(1, arrayListV);
        ya2 ya2Var = list2 != null ? (ya2) o70.i0(list2) : null;
        List list3 = (List) o70.j0(2, arrayListV);
        i91Var.a(ya2Var, list3 != null ? (ya2) o70.i0(list3) : null, nf0.b(0, i, 7));
        List list4 = (List) o70.i0(arrayListV);
        if (list4 == null) {
            list4 = g01.n;
        }
        int iN = jt1Var.N(k91Var.c);
        int size = list4.size();
        int i2 = 0;
        int iMax = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < size) {
            int iR = ((ya2) list4.get(i2)).R(i) + iN;
            int i5 = i2 + 1;
            if (i5 - i3 == Integer.MAX_VALUE || i5 == list4.size()) {
                iMax = Math.max(iMax, (i4 + iR) - iN);
                i3 = i2;
                i4 = 0;
            } else {
                i4 += iR;
            }
            i2 = i5;
        }
        return iMax;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof pe2) && nt1.g(this.a, ((pe2) obj).a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12, types: [dv2[]] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r8v6, types: [dv2[]] */
    @Override // defpackage.db2
    public final eb2 f(gb2 gb2Var, List list, long j) {
        ya2 ya2Var;
        i91 i91Var;
        ya2 ya2Var2;
        ya2 ya2Var3;
        ug2 ug2Var;
        Iterator it;
        dv2 dv2Var;
        ds1 ds1Var;
        d91 d91Var;
        int i;
        char c;
        int i2;
        ya2 ya2Var4;
        ya2 ya2Var5;
        ds1 ds1Var2;
        dv2 dv2Var2;
        ds1 ds1Var3;
        dv2 dv2Var3;
        int i3;
        ds1 ds1Var4;
        d91 d91Var2;
        Integer numValueOf;
        long jA;
        long jA2;
        dv2 dv2VarE;
        ArrayList arrayListV = bi4.v(gb2Var);
        final k91 k91Var = this.a;
        final i91 i91Var2 = k91Var.f;
        boolean zIsEmpty = arrayListV.isEmpty();
        h01 h01Var = h01.n;
        final int i4 = 0;
        if (!zIsEmpty) {
            if (mf0.g(j) != 0) {
                List list2 = (List) o70.h0(arrayListV);
                if (list2.isEmpty()) {
                    return gb2Var.e0(0, 0, h01Var, new t3(11));
                }
                final int i5 = 1;
                List list3 = (List) o70.j0(1, arrayListV);
                ya2 ya2Var6 = list3 != null ? (ya2) o70.i0(list3) : null;
                List list4 = (List) o70.j0(2, arrayListV);
                ya2 ya2Var7 = list4 != null ? (ya2) o70.i0(list4) : null;
                list2.size();
                i91Var2.getClass();
                mz1 mz1Var = mz1.n;
                long jK = bi4.K(bi4.n(10, bi4.m(j, mz1Var)));
                if (ya2Var6 != null) {
                    nt1.J(ya2Var6, k91Var, jK, new pe1() { // from class: h91
                        @Override // defpackage.pe1
                        public final Object k(Object obj) {
                            int iY;
                            int iY2;
                            int i6 = i4;
                            t64 t64Var = t64.a;
                            int iA0 = 0;
                            k91 k91Var2 = k91Var;
                            i91 i91Var3 = i91Var2;
                            dv2 dv2Var4 = (dv2) obj;
                            switch (i6) {
                                case 0:
                                    if (dv2Var4 != null) {
                                        k91Var2.getClass();
                                        iA0 = dv2Var4.a0();
                                        iY = dv2Var4.Y();
                                    } else {
                                        iY = 0;
                                    }
                                    new ds1(ds1.a(iA0, iY));
                                    i91Var3.getClass();
                                    break;
                                default:
                                    if (dv2Var4 != null) {
                                        k91Var2.getClass();
                                        iA0 = dv2Var4.a0();
                                        iY2 = dv2Var4.Y();
                                    } else {
                                        iY2 = 0;
                                    }
                                    new ds1(ds1.a(iA0, iY2));
                                    i91Var3.getClass();
                                    break;
                            }
                            return t64Var;
                        }
                    });
                }
                if (ya2Var7 != null) {
                    nt1.J(ya2Var7, k91Var, jK, new pe1() { // from class: h91
                        @Override // defpackage.pe1
                        public final Object k(Object obj) {
                            int iY;
                            int iY2;
                            int i6 = i5;
                            t64 t64Var = t64.a;
                            int iA0 = 0;
                            k91 k91Var2 = k91Var;
                            i91 i91Var3 = i91Var2;
                            dv2 dv2Var4 = (dv2) obj;
                            switch (i6) {
                                case 0:
                                    if (dv2Var4 != null) {
                                        k91Var2.getClass();
                                        iA0 = dv2Var4.a0();
                                        iY = dv2Var4.Y();
                                    } else {
                                        iY = 0;
                                    }
                                    new ds1(ds1.a(iA0, iY));
                                    i91Var3.getClass();
                                    break;
                                default:
                                    if (dv2Var4 != null) {
                                        k91Var2.getClass();
                                        iA0 = dv2Var4.a0();
                                        iY2 = dv2Var4.Y();
                                    } else {
                                        iY2 = 0;
                                    }
                                    new ds1(ds1.a(iA0, iY2));
                                    i91Var3.getClass();
                                    break;
                            }
                            return t64Var;
                        }
                    });
                }
                Iterator it2 = list2.iterator();
                float f = k91Var.c;
                float f2 = k91Var.e;
                long jM = bi4.m(j, mz1Var);
                i91 i91Var3 = k91Var.f;
                ug2 ug2Var2 = new ug2(new eb2[16]);
                int iH = mf0.h(jM);
                int iJ = mf0.j(jM);
                int iG = mf0.g(jM);
                tf2 tf2Var = is1.a;
                tf2 tf2Var2 = new tf2();
                ArrayList arrayList = new ArrayList();
                int iCeil = (int) Math.ceil(gb2Var.v(f));
                int iCeil2 = (int) Math.ceil(gb2Var.v(f2));
                long jA3 = nf0.a(0, iH, 0, iG);
                long jK2 = bi4.K(bi4.n(14, jA3));
                if (it2.hasNext()) {
                    try {
                        ya2Var = (ya2) it2.next();
                    } catch (IndexOutOfBoundsException unused) {
                        ya2Var = null;
                    }
                    i91Var = i91Var3;
                    ya2Var2 = ya2Var;
                } else {
                    i91Var = i91Var3;
                    ya2Var2 = null;
                }
                if (ya2Var2 != null) {
                    if (k75.C(k75.B(ya2Var2)) == 0.0f) {
                        k75.B(ya2Var2);
                        dv2VarE = ya2Var2.e(jK2);
                        ug2Var = ug2Var2;
                        jA2 = ds1.a(dv2VarE.a0(), dv2VarE.Y());
                    } else {
                        ug2Var = ug2Var2;
                        int iK = ya2Var2.K(Api.BaseClientBuilder.API_PRIORITY_OTHER);
                        jA2 = ds1.a(iK, ya2Var2.T(iK));
                        dv2VarE = null;
                    }
                    ya2Var3 = ya2Var2;
                    it = it2;
                    ds1Var = new ds1(jA2);
                    dv2Var = dv2VarE;
                } else {
                    ya2Var3 = ya2Var2;
                    ug2Var = ug2Var2;
                    it = it2;
                    dv2Var = null;
                    ds1Var = null;
                }
                dv2 dv2Var4 = dv2Var;
                Integer numValueOf2 = ds1Var != null ? Integer.valueOf((int) (ds1Var.a >> 32)) : null;
                Integer numValueOf3 = ds1Var != null ? Integer.valueOf((int) (ds1Var.a & 4294967295L)) : null;
                int[] iArr = new int[16];
                int[] iArrCopyOf = new int[16];
                ya2 ya2Var8 = ya2Var3;
                uf2 uf2Var = new uf2();
                e91 e91Var = new e91(i91Var, jM, iCeil, iCeil2);
                ds1 ds1Var5 = ds1Var;
                d91 d91VarB = e91Var.b(it.hasNext(), 0, ds1.a(iH, iG), ds1Var5, 0, 0, 0, false, false);
                if (d91VarB.b) {
                    d91Var = d91VarB;
                    e91Var.a(d91Var, ds1Var5 != null, -1, 0, iH, 0);
                } else {
                    d91Var = d91VarB;
                }
                int i6 = iH;
                int i7 = iG;
                dv2 dv2Var5 = dv2Var4;
                ya2 ya2Var9 = ya2Var8;
                int i8 = 0;
                int i9 = 0;
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                int i14 = iJ;
                int[] iArrCopyOf2 = iArr;
                int i15 = 0;
                k91 k91Var2 = k91Var;
                d91 d91Var3 = d91Var;
                int i16 = 0;
                while (!d91Var3.b && ya2Var9 != null) {
                    numValueOf2.getClass();
                    int iIntValue = numValueOf2.intValue();
                    numValueOf3.getClass();
                    int iIntValue2 = numValueOf3.intValue();
                    uf2 uf2Var2 = uf2Var;
                    int i17 = i16 + iIntValue;
                    int iMax = Math.max(i15, iIntValue2);
                    int i18 = i6 - iIntValue;
                    int i19 = i8 + 1;
                    i91Var.getClass();
                    ArrayList arrayList2 = arrayList;
                    arrayList2.add(ya2Var9);
                    tf2Var2.h(i8, dv2Var5);
                    ya2Var9.i();
                    int i20 = i19 - i11;
                    if (it.hasNext()) {
                        try {
                            ya2Var4 = (ya2) it.next();
                        } catch (IndexOutOfBoundsException unused2) {
                            ya2Var4 = null;
                        }
                    } else {
                        ya2Var4 = null;
                    }
                    if (ya2Var4 != null) {
                        if (k75.C(k75.B(ya2Var4)) == 0.0f) {
                            k75.B(ya2Var4);
                            dv2 dv2VarE2 = ya2Var4.e(jK2);
                            jA = ds1.a(dv2VarE2.a0(), dv2VarE2.Y());
                            dv2Var2 = dv2VarE2;
                        } else {
                            int iK2 = ya2Var4.K(Api.BaseClientBuilder.API_PRIORITY_OTHER);
                            jA = ds1.a(iK2, ya2Var4.T(iK2));
                            dv2Var2 = null;
                        }
                        ya2Var5 = ya2Var4;
                        arrayList = arrayList2;
                        ds1Var2 = new ds1(jA);
                    } else {
                        ya2Var5 = ya2Var4;
                        arrayList = arrayList2;
                        ds1Var2 = null;
                        dv2Var2 = null;
                    }
                    Integer numValueOf4 = ds1Var2 != null ? Integer.valueOf(((int) (ds1Var2.a >> 32)) + iCeil) : null;
                    Integer numValueOf5 = ds1Var2 != null ? Integer.valueOf((int) (ds1Var2.a & 4294967295L)) : null;
                    boolean zHasNext = it.hasNext();
                    long jA4 = ds1.a(i18, i7);
                    if (ds1Var2 == null) {
                        ds1Var3 = ds1Var2;
                        dv2Var3 = dv2Var2;
                        i3 = i18;
                        ds1Var4 = null;
                    } else {
                        numValueOf4.getClass();
                        int iIntValue3 = numValueOf4.intValue();
                        numValueOf5.getClass();
                        ds1Var3 = ds1Var2;
                        dv2Var3 = dv2Var2;
                        i3 = i18;
                        ds1Var4 = new ds1(ds1.a(iIntValue3, numValueOf5.intValue()));
                    }
                    d91 d91VarB2 = e91Var.b(zHasNext, i20, jA4, ds1Var4, i12, i13, iMax, false, false);
                    if (d91VarB2.a) {
                        int iMin = Math.min(Math.max(i14, i17), iH);
                        int i21 = i13 + iMax;
                        boolean z = ds1Var3 != null;
                        d91Var2 = d91VarB2;
                        e91 e91Var2 = e91Var;
                        int i22 = i12;
                        e91Var2.a(d91Var2, z, i22, i21, i3, i20);
                        e91Var = e91Var2;
                        int i23 = i10 + 1;
                        if (iArrCopyOf.length < i23) {
                            iArrCopyOf = Arrays.copyOf(iArrCopyOf, Math.max(i23, (iArrCopyOf.length * 3) / 2));
                        }
                        iArrCopyOf[i10] = iMax;
                        i10++;
                        i7 = (i7 - i21) - iCeil2;
                        int i24 = i9 + 1;
                        if (iArrCopyOf2.length < i24) {
                            iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, Math.max(i24, (iArrCopyOf2.length * 3) / 2));
                        }
                        iArrCopyOf2[i9] = i19;
                        i9++;
                        numValueOf = numValueOf4 != null ? Integer.valueOf(numValueOf4.intValue() - iCeil) : null;
                        i12 = i22 + 1;
                        i13 = i21 + iCeil2;
                        i14 = iMin;
                        i6 = iH;
                        i11 = i19;
                        i17 = 0;
                        iMax = 0;
                    } else {
                        d91Var2 = d91VarB2;
                        i6 = i3;
                        numValueOf = numValueOf4;
                    }
                    d91Var3 = d91Var2;
                    i8 = i19;
                    dv2Var5 = dv2Var3;
                    numValueOf2 = numValueOf;
                    i16 = i17;
                    ya2Var9 = ya2Var5;
                    uf2Var = uf2Var2;
                    numValueOf3 = numValueOf5;
                    i15 = iMax;
                }
                uf2 uf2Var3 = uf2Var;
                int size = arrayList.size();
                ?? r2 = new dv2[size];
                for (int i25 = 0; i25 < size; i25++) {
                    r2[i25] = tf2Var2.b(i25);
                }
                int[] iArr2 = new int[i9];
                int[] iArr3 = new int[i9];
                int i26 = 0;
                int i27 = 0;
                int i28 = 0;
                ?? r22 = r2;
                while (i27 < i9) {
                    int[] iArr4 = iArrCopyOf2;
                    int i29 = iArr4[i27];
                    if (i27 < 0 || i27 >= i10) {
                        mk0.h("Index must be between 0 and size");
                        return null;
                    }
                    int iG2 = iArrCopyOf[i27];
                    uf2 uf2Var4 = uf2Var3;
                    if (uf2Var4.b(i27)) {
                        i2 = i9;
                        c = 65535;
                    } else {
                        c = 65535;
                        iG2 = mf0.g(jA3) == Integer.MAX_VALUE ? Integer.MAX_VALUE : mf0.g(jA3) - i28;
                        i2 = i9;
                    }
                    ?? r8 = r22;
                    int[] iArr5 = iArrCopyOf;
                    int i30 = i14;
                    int i31 = i10;
                    int[] iArr6 = iArr2;
                    k91 k91Var3 = k91Var2;
                    int i32 = i2;
                    ArrayList arrayList3 = arrayList;
                    eb2 eb2VarO = zf5.O(k91Var3, i30, mf0.i(jA3), mf0.h(jA3), iG2, iCeil, gb2Var, arrayList3, r8, i26, i29, iArr6, i27);
                    int iB = eb2VarO.b();
                    int iA = eb2VarO.a();
                    iArr3[i27] = iA;
                    int iMax2 = Math.max(i30, iB);
                    ug2Var.c(eb2VarO);
                    i27++;
                    arrayList = arrayList3;
                    r22 = r8;
                    i26 = i29;
                    uf2Var3 = uf2Var4;
                    i9 = i32;
                    iArrCopyOf2 = iArr4;
                    k91Var2 = k91Var3;
                    i28 += iA;
                    iArr2 = iArr6;
                    i10 = i31;
                    i14 = iMax2;
                    iArrCopyOf = iArr5;
                }
                int[] iArr7 = iArr2;
                int i33 = i14;
                int i34 = i28;
                k91 k91Var4 = k91Var2;
                ug2 ug2Var3 = ug2Var;
                if (ug2Var3.p == 0) {
                    i33 = 0;
                    i = 0;
                } else {
                    i = i34;
                }
                sh shVar = k91Var4.b;
                int iN = ((ug2Var3.p - 1) * gb2Var.N(shVar.a())) + i;
                int i35 = mf0.i(jM);
                int iG3 = mf0.g(jM);
                if (iN < i35) {
                    iN = i35;
                }
                if (iN <= iG3) {
                    iG3 = iN;
                }
                shVar.j(iG3, gb2Var, iArr3, iArr7);
                int iJ2 = mf0.j(jM);
                int iH2 = mf0.h(jM);
                if (i33 < iJ2) {
                    i33 = iJ2;
                }
                if (i33 <= iH2) {
                    iH2 = i33;
                }
                return gb2Var.e0(iH2, iG3, h01Var, new v(9, ug2Var3));
            }
            i91Var2.getClass();
        }
        return gb2Var.e0(0, 0, h01Var, new t3(11));
    }

    @Override // defpackage.db2
    public final int g(jt1 jt1Var, List list, int i) {
        ArrayList arrayListV = bi4.v(jt1Var);
        k91 k91Var = this.a;
        i91 i91Var = k91Var.f;
        List list2 = (List) o70.j0(1, arrayListV);
        ya2 ya2Var = list2 != null ? (ya2) o70.i0(list2) : null;
        List list3 = (List) o70.j0(2, arrayListV);
        i91Var.a(ya2Var, list3 != null ? (ya2) o70.i0(list3) : null, nf0.b(i, 0, 13));
        List list4 = (List) o70.i0(arrayListV);
        if (list4 == null) {
            list4 = g01.n;
        }
        return k91.a(list4, i, jt1Var.N(k91Var.c), jt1Var.N(k91Var.e), k91Var.f);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x022c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0218 A[SYNTHETIC] */
    @Override // defpackage.db2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int i(defpackage.jt1 r36, java.util.List r37, int r38) {
        /*
            Method dump skipped, instruction units count: 570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pe2.i(jt1, java.util.List, int):int");
    }

    public final String toString() {
        return "MultiContentMeasurePolicyImpl(measurePolicy=" + this.a + ")";
    }
}
