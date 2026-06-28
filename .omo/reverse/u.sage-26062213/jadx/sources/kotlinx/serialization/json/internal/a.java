package kotlinx.serialization.json.internal;

import defpackage.aw1;
import defpackage.az0;
import defpackage.b21;
import defpackage.bi4;
import defpackage.d90;
import defpackage.fv1;
import defpackage.gi3;
import defpackage.h4;
import defpackage.ha1;
import defpackage.hb;
import defpackage.jw1;
import defpackage.lx1;
import defpackage.n44;
import defpackage.ps0;
import defpackage.pv1;
import defpackage.qv3;
import defpackage.rh4;
import defpackage.sh4;
import defpackage.ts3;
import defpackage.uv1;
import defpackage.vi2;
import defpackage.vn0;
import defpackage.w13;
import defpackage.xb0;
import defpackage.xv1;
import defpackage.zs3;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a extends n44 implements vn0, xb0 {
    public final fv1 g;
    public final rh4 h;
    public final vi2 i;
    public final b21 j;
    public int k;
    public final pv1 l;
    public final aw1 m;

    public a(fv1 fv1Var, rh4 rh4Var, vi2 vi2Var, gi3 gi3Var) {
        gi3Var.getClass();
        this.g = fv1Var;
        this.h = rh4Var;
        this.i = vi2Var;
        this.j = fv1Var.b;
        this.k = -1;
        pv1 pv1Var = fv1Var.a;
        this.l = pv1Var;
        this.m = pv1Var.c ? null : new aw1(gi3Var);
    }

    @Override // defpackage.n44, defpackage.vn0
    public final xb0 A(gi3 gi3Var) {
        gi3Var.getClass();
        fv1 fv1Var = this.g;
        rh4 rh4VarB = sh4.b(fv1Var, gi3Var);
        vi2 vi2Var = this.i;
        hb hbVar = (hb) vi2Var.e;
        int i = hbVar.b + 1;
        hbVar.b = i;
        Object[] objArr = (Object[]) hbVar.c;
        if (i == objArr.length) {
            int i2 = i * 2;
            hbVar.c = Arrays.copyOf(objArr, i2);
            hbVar.d = Arrays.copyOf((int[]) hbVar.d, i2);
        }
        ((Object[]) hbVar.c)[i] = gi3Var;
        vi2Var.g(rh4VarB.n);
        if (vi2Var.t() != 4) {
            int iOrdinal = rh4VarB.ordinal();
            return (iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 3) ? new a(fv1Var, rh4VarB, vi2Var, gi3Var) : (this.h == rh4VarB && fv1Var.a.c) ? this : new a(fv1Var, rh4VarB, vi2Var, gi3Var);
        }
        vi2.l(vi2Var, "Unexpected leading comma", 0, null, 6);
        throw null;
    }

    @Override // defpackage.n44, defpackage.vn0
    public final double B() {
        vi2 vi2Var = this.i;
        String strJ = vi2Var.j();
        try {
            double d = Double.parseDouble(strJ);
            this.g.a.getClass();
            if (!Double.isInfinite(d) && !Double.isNaN(d)) {
                return d;
            }
            bi4.H(vi2Var, Double.valueOf(d));
            throw null;
        } catch (IllegalArgumentException unused) {
            vi2.l(vi2Var, "Failed to parse type 'double' for input '" + strJ + '\'', 0, null, 6);
            throw null;
        }
    }

    public final xv1 P0() {
        return new d90(this.g.a, this.i).j();
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x012a  */
    @Override // defpackage.n44, defpackage.vn0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(defpackage.lx1 r10) {
        /*
            Method dump skipped, instruction units count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.a.a(lx1):java.lang.Object");
    }

    @Override // defpackage.n44, defpackage.vn0
    public final long b() {
        return this.i.h();
    }

    @Override // defpackage.n44, defpackage.vn0
    public final boolean d() {
        boolean z;
        boolean z2;
        vi2 vi2Var = this.i;
        int iW = vi2Var.w();
        String str = vi2Var.d;
        if (iW == str.length()) {
            vi2.l(vi2Var, "EOF", 0, null, 6);
            throw null;
        }
        if (str.charAt(iW) == '\"') {
            iW++;
            z = true;
        } else {
            z = false;
        }
        int iV = vi2Var.v(iW);
        if (iV >= str.length() || iV == -1) {
            vi2.l(vi2Var, "EOF", 0, null, 6);
            throw null;
        }
        int i = iV + 1;
        int iCharAt = str.charAt(iV) | ' ';
        if (iCharAt == 102) {
            vi2Var.c(i, "alse");
            z2 = false;
        } else {
            if (iCharAt != 116) {
                vi2.l(vi2Var, "Expected valid boolean literal prefix, but had '" + vi2Var.j() + '\'', 0, null, 6);
                throw null;
            }
            vi2Var.c(i, "rue");
            z2 = true;
        }
        if (!z) {
            return z2;
        }
        if (vi2Var.b == str.length()) {
            vi2.l(vi2Var, "EOF", 0, null, 6);
            throw null;
        }
        if (str.charAt(vi2Var.b) == '\"') {
            vi2Var.b++;
            return z2;
        }
        vi2.l(vi2Var, "Expected closing quotation mark", 0, null, 6);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0050 A[RETURN] */
    @Override // defpackage.n44, defpackage.vn0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean e() {
        /*
            r9 = this;
            r0 = 0
            aw1 r1 = r9.m
            if (r1 == 0) goto L8
            boolean r1 = r1.b
            goto L9
        L8:
            r1 = r0
        L9:
            if (r1 != 0) goto L51
            vi2 r9 = r9.i
            int r1 = r9.w()
            int r1 = r9.v(r1)
            java.lang.String r2 = r9.d
            int r3 = r2.length()
            int r3 = r3 - r1
            r4 = 1
            r5 = 4
            if (r3 < r5) goto L4d
            r6 = -1
            if (r1 != r6) goto L24
            goto L4d
        L24:
            r6 = r0
        L25:
            if (r6 >= r5) goto L39
            java.lang.String r7 = "null"
            char r7 = r7.charAt(r6)
            int r8 = r1 + r6
            char r8 = r2.charAt(r8)
            if (r7 == r8) goto L36
            goto L4d
        L36:
            int r6 = r6 + 1
            goto L25
        L39:
            if (r3 <= r5) goto L48
            int r3 = r1 + 4
            char r2 = r2.charAt(r3)
            byte r2 = defpackage.fl4.i(r2)
            if (r2 != 0) goto L48
            goto L4d
        L48:
            int r1 = r1 + r5
            r9.b = r1
            r9 = r4
            goto L4e
        L4d:
            r9 = r0
        L4e:
            if (r9 != 0) goto L51
            return r4
        L51:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.a.e():boolean");
    }

    @Override // defpackage.n44, defpackage.vn0
    public final char f() {
        vi2 vi2Var = this.i;
        String strJ = vi2Var.j();
        if (strJ.length() == 1) {
            return strJ.charAt(0);
        }
        vi2.l(vi2Var, "Expected single char, but got '" + strJ + '\'', 0, null, 6);
        throw null;
    }

    @Override // defpackage.xb0
    public final int h(gi3 gi3Var) {
        fv1 fv1Var = this.g;
        pv1 pv1Var = fv1Var.a;
        gi3Var.getClass();
        rh4 rh4Var = this.h;
        int iOrdinal = rh4Var.ordinal();
        int i = 0;
        zX = false;
        boolean zX = false;
        int iIntValue = -1;
        vi2 vi2Var = this.i;
        if (iOrdinal == 0) {
            boolean zX2 = vi2Var.x();
            boolean zB = vi2Var.b();
            aw1 aw1Var = this.m;
            if (zB) {
                this.l.getClass();
                String strD = vi2Var.d();
                vi2Var.g(':');
                gi3Var.getClass();
                fv1Var.getClass();
                strD.getClass();
                pv1 pv1Var2 = fv1Var.a;
                pv1Var2.getClass();
                jw1.a(fv1Var, gi3Var);
                int iA = gi3Var.a(strD);
                if (iA == -3 && pv1Var2.d) {
                    ps0 ps0Var = fv1Var.c;
                    h4 h4Var = new h4(17, gi3Var, fv1Var);
                    ps0Var.getClass();
                    ConcurrentHashMap concurrentHashMap = ps0Var.a;
                    Map map = (Map) concurrentHashMap.get(gi3Var);
                    qv3 qv3Var = jw1.a;
                    Object objA = map != null ? map.get(qv3Var) : null;
                    if (objA == null) {
                        objA = null;
                    }
                    if (objA == null) {
                        objA = h4Var.a();
                        Object obj = concurrentHashMap.get(gi3Var);
                        Object obj2 = obj;
                        if (obj == null) {
                            ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap(2);
                            concurrentHashMap.put(gi3Var, concurrentHashMap2);
                            obj2 = concurrentHashMap2;
                        }
                        ((Map) obj2).put(qv3Var, objA);
                    }
                    Integer num = (Integer) ((Map) objA).get(strD);
                    iIntValue = num != null ? num.intValue() : -3;
                } else {
                    iIntValue = iA;
                }
                if (iIntValue == -3) {
                    vi2Var.k("Encountered an unknown key '" + strD + '\'', zs3.K0(vi2Var.d.subSequence(0, vi2Var.b).toString(), 6, strD), "Use 'ignoreUnknownKeys = true' in 'Json {}' builder to ignore unknown keys.");
                    throw null;
                }
                if (aw1Var != null) {
                    az0 az0Var = aw1Var.a;
                    if (iIntValue < 64) {
                        az0Var.a |= 1 << iIntValue;
                    } else {
                        int i2 = (iIntValue >>> 6) - 1;
                        long[] jArr = (long[]) az0Var.d;
                        jArr[i2] = (1 << (iIntValue & 63)) | jArr[i2];
                    }
                }
            } else {
                if (zX2) {
                    pv1Var.getClass();
                    bi4.z(vi2Var, "object");
                    throw null;
                }
                if (aw1Var != null) {
                    az0 az0Var2 = aw1Var.a;
                    ha1 ha1Var = (ha1) az0Var2.c;
                    gi3 gi3Var2 = (gi3) az0Var2.b;
                    int iD = gi3Var2.d();
                    while (true) {
                        long j = az0Var2.a;
                        long j2 = -1;
                        if (j != -1) {
                            int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j);
                            az0Var2.a |= 1 << iNumberOfTrailingZeros;
                            if (((Boolean) ha1Var.f(gi3Var2, Integer.valueOf(iNumberOfTrailingZeros))).booleanValue()) {
                                iIntValue = iNumberOfTrailingZeros;
                                break;
                            }
                        } else if (iD > 64) {
                            long[] jArr2 = (long[]) az0Var2.d;
                            int length = jArr2.length;
                            loop1: while (true) {
                                if (i >= length) {
                                    break;
                                }
                                int i3 = i + 1;
                                int i4 = i3 * 64;
                                long j3 = jArr2[i];
                                while (j3 != j2) {
                                    int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros(~j3);
                                    j3 |= 1 << iNumberOfTrailingZeros2;
                                    int i5 = iNumberOfTrailingZeros2 + i4;
                                    if (((Boolean) ha1Var.f(gi3Var2, Integer.valueOf(i5))).booleanValue()) {
                                        jArr2[i] = j3;
                                        iIntValue = i5;
                                        break loop1;
                                    }
                                    j2 = -1;
                                }
                                jArr2[i] = j3;
                                i = i3;
                                j2 = -1;
                            }
                        }
                    }
                }
            }
        } else if (iOrdinal != 2) {
            boolean zX3 = vi2Var.x();
            if (vi2Var.b()) {
                int i6 = this.k;
                if (i6 != -1 && !zX3) {
                    vi2.l(vi2Var, "Expected end of the array or comma", 0, null, 6);
                    throw null;
                }
                iIntValue = i6 + 1;
                this.k = iIntValue;
            } else if (zX3) {
                pv1Var.getClass();
                bi4.z(vi2Var, "array");
                throw null;
            }
        } else {
            int i7 = this.k;
            boolean z = i7 % 2 != 0;
            if (!z) {
                vi2Var.g(':');
            } else if (i7 != -1) {
                zX = vi2Var.x();
            }
            if (vi2Var.b()) {
                if (z) {
                    int i8 = this.k;
                    int i9 = vi2Var.b;
                    if (i8 == -1) {
                        if (zX) {
                            vi2.l(vi2Var, "Unexpected leading comma", i9, null, 4);
                            throw null;
                        }
                    } else if (!zX) {
                        vi2.l(vi2Var, "Expected comma after the key-value pair", i9, null, 4);
                        throw null;
                    }
                }
                iIntValue = this.k + 1;
                this.k = iIntValue;
            } else if (zX) {
                pv1Var.getClass();
                bi4.z(vi2Var, "object");
                throw null;
            }
        }
        if (rh4Var != rh4.r) {
            hb hbVar = (hb) vi2Var.e;
            ((int[]) hbVar.d)[hbVar.b] = iIntValue;
        }
        return iIntValue;
    }

    @Override // defpackage.n44, defpackage.vn0
    public final int n() {
        vi2 vi2Var = this.i;
        long jH = vi2Var.h();
        int i = (int) jH;
        if (jH == i) {
            return i;
        }
        vi2.l(vi2Var, "Failed to parse int for input '" + jH + '\'', 0, null, 6);
        throw null;
    }

    @Override // defpackage.n44, defpackage.xb0
    public final void p(gi3 gi3Var) {
        gi3Var.getClass();
        pv1 pv1Var = this.g.a;
        pv1Var.getClass();
        vi2 vi2Var = this.i;
        if (vi2Var.x()) {
            pv1Var.getClass();
            bi4.z(vi2Var, "");
            throw null;
        }
        vi2Var.g(this.h.o);
        hb hbVar = (hb) vi2Var.e;
        int i = hbVar.b;
        int[] iArr = (int[]) hbVar.d;
        if (iArr[i] == -2) {
            iArr[i] = -1;
            hbVar.b = i - 1;
        }
        int i2 = hbVar.b;
        if (i2 != -1) {
            hbVar.b = i2 - 1;
        }
    }

    @Override // defpackage.xb0
    public final b21 q() {
        return this.j;
    }

    @Override // defpackage.n44, defpackage.vn0
    public final byte s() {
        vi2 vi2Var = this.i;
        long jH = vi2Var.h();
        byte b = (byte) jH;
        if (jH == b) {
            return b;
        }
        vi2.l(vi2Var, "Failed to parse byte for input '" + jH + '\'', 0, null, 6);
        throw null;
    }

    @Override // defpackage.n44, defpackage.vn0
    public final vn0 t(gi3 gi3Var) {
        gi3Var.getClass();
        return ts3.a(gi3Var) ? new uv1(this.i, this.g) : this;
    }

    @Override // defpackage.n44, defpackage.xb0
    public final Object u(gi3 gi3Var, int i, lx1 lx1Var, Object obj) {
        hb hbVar = (hb) this.i.e;
        gi3Var.getClass();
        lx1Var.getClass();
        boolean z = this.h == rh4.r && (i & 1) == 0;
        if (z) {
            int[] iArr = (int[]) hbVar.d;
            int i2 = hbVar.b;
            if (iArr[i2] == -2) {
                ((Object[]) hbVar.c)[i2] = w13.G;
            }
        }
        Object objA = a(lx1Var);
        if (z) {
            int[] iArr2 = (int[]) hbVar.d;
            int i3 = hbVar.b;
            if (iArr2[i3] != -2) {
                int i4 = i3 + 1;
                hbVar.b = i4;
                Object[] objArr = (Object[]) hbVar.c;
                if (i4 == objArr.length) {
                    int i5 = i4 * 2;
                    hbVar.c = Arrays.copyOf(objArr, i5);
                    hbVar.d = Arrays.copyOf((int[]) hbVar.d, i5);
                }
            }
            Object[] objArr2 = (Object[]) hbVar.c;
            int i6 = hbVar.b;
            objArr2[i6] = objA;
            ((int[]) hbVar.d)[i6] = -2;
        }
        return objA;
    }

    @Override // defpackage.n44, defpackage.vn0
    public final short w() {
        vi2 vi2Var = this.i;
        long jH = vi2Var.h();
        short s = (short) jH;
        if (jH == s) {
            return s;
        }
        vi2.l(vi2Var, "Failed to parse short for input '" + jH + '\'', 0, null, 6);
        throw null;
    }

    @Override // defpackage.n44, defpackage.vn0
    public final String x() {
        this.l.getClass();
        return this.i.i();
    }

    @Override // defpackage.n44, defpackage.vn0
    public final float y() {
        vi2 vi2Var = this.i;
        String strJ = vi2Var.j();
        try {
            float f = Float.parseFloat(strJ);
            this.g.a.getClass();
            if (!Float.isInfinite(f) && !Float.isNaN(f)) {
                return f;
            }
            bi4.H(vi2Var, Float.valueOf(f));
            throw null;
        } catch (IllegalArgumentException unused) {
            vi2.l(vi2Var, "Failed to parse type 'float' for input '" + strJ + '\'', 0, null, 6);
            throw null;
        }
    }
}
