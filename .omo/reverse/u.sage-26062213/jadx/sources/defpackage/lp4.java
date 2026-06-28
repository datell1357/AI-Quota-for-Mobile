package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lp4 {
    public static final lp4 f = new lp4(0, new int[0], new Object[0], false);
    public int a;
    public int[] b;
    public Object[] c;
    public int d = -1;
    public boolean e;

    public lp4(int i, int[] iArr, Object[] objArr, boolean z) {
        this.a = i;
        this.b = iArr;
        this.c = objArr;
        this.e = z;
    }

    public static lp4 a() {
        return new lp4(0, new int[8], new Object[8], true);
    }

    public final void b(dd1 dd1Var) {
        jn4 jn4Var = (jn4) dd1Var.o;
        if (this.a != 0) {
            for (int i = 0; i < this.a; i++) {
                int i2 = this.b[i];
                Object obj = this.c[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 == 0) {
                    jn4Var.h(i4, ((Long) obj).longValue());
                } else if (i3 == 1) {
                    jn4Var.i(i4, ((Long) obj).longValue());
                } else if (i3 == 2) {
                    jn4Var.l(i4, (zm4) obj);
                } else if (i3 == 3) {
                    jn4Var.d(i4, 3);
                    ((lp4) obj).b(dd1Var);
                    jn4Var.d(i4, 4);
                } else {
                    if (i3 != 5) {
                        throw new RuntimeException(new eo4());
                    }
                    jn4Var.g(i4, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final int c() {
        int iA;
        int iB;
        int iA2;
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int iC = 0;
        for (int i2 = 0; i2 < this.a; i2++) {
            int i3 = this.b[i2];
            int i4 = i3 >>> 3;
            int i5 = i3 & 7;
            if (i5 != 0) {
                if (i5 == 1) {
                    ((Long) this.c[i2]).getClass();
                    iA2 = jn4.a(i4 << 3) + 8;
                } else if (i5 == 2) {
                    int i6 = i4 << 3;
                    zm4 zm4Var = (zm4) this.c[i2];
                    int iA3 = jn4.a(i6);
                    int iC2 = zm4Var.c();
                    iC = to4.c(iC2, iC2, iA3, iC);
                } else if (i5 == 3) {
                    int iA4 = jn4.a(i4 << 3);
                    iA = iA4 + iA4;
                    iB = ((lp4) this.c[i2]).c();
                } else {
                    if (i5 != 5) {
                        throw new IllegalStateException(new eo4());
                    }
                    ((Integer) this.c[i2]).getClass();
                    iA2 = jn4.a(i4 << 3) + 4;
                }
                iC = iA2 + iC;
            } else {
                int i7 = i4 << 3;
                long jLongValue = ((Long) this.c[i2]).longValue();
                iA = jn4.a(i7);
                iB = jn4.b(jLongValue);
            }
            iC = iB + iA + iC;
        }
        this.d = iC;
        return iC;
    }

    public final void d(int i, Object obj) {
        if (!this.e) {
            p61.b();
            return;
        }
        e(this.a + 1);
        int[] iArr = this.b;
        int i2 = this.a;
        iArr[i2] = i;
        this.c[i2] = obj;
        this.a = i2 + 1;
    }

    public final void e(int i) {
        int[] iArr = this.b;
        if (i > iArr.length) {
            int i2 = this.a;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.b = Arrays.copyOf(iArr, i);
            this.c = Arrays.copyOf(this.c, i);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof lp4)) {
            lp4 lp4Var = (lp4) obj;
            int i = this.a;
            if (i == lp4Var.a) {
                int[] iArr = this.b;
                int[] iArr2 = lp4Var.b;
                int i2 = 0;
                while (true) {
                    if (i2 >= i) {
                        Object[] objArr = this.c;
                        Object[] objArr2 = lp4Var.c;
                        int i3 = this.a;
                        for (int i4 = 0; i4 < i3; i4++) {
                            if (objArr[i4].equals(objArr2[i4])) {
                            }
                        }
                        return true;
                    }
                    if (iArr[i2] != iArr2[i2]) {
                        break;
                    }
                    i2++;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.a;
        int i2 = i + 527;
        int[] iArr = this.b;
        int iHashCode = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = ((i2 * 31) + i3) * 31;
        Object[] objArr = this.c;
        int i6 = this.a;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }
}
