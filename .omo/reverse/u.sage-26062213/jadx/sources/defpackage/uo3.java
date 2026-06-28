package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uo3 implements Iterable, fx1 {
    public static final uo3 r = new uo3(0, 0, 0, null);
    public final long n;
    public final long o;
    public final long p;
    public final long[] q;

    public uo3(long j, long j2, long j3, long[] jArr) {
        this.n = j;
        this.o = j2;
        this.p = j3;
        this.q = jArr;
    }

    public final uo3 a(uo3 uo3Var) {
        long[] jArr;
        uo3 uo3VarD = this;
        uo3 uo3Var2 = r;
        if (uo3Var == uo3Var2) {
            return uo3VarD;
        }
        if (uo3VarD == uo3Var2) {
            return uo3Var2;
        }
        long j = uo3Var.p;
        long j2 = uo3Var.p;
        long[] jArr2 = uo3Var.q;
        long j3 = uo3Var.o;
        long j4 = uo3Var.n;
        long j5 = uo3VarD.p;
        if (j == j5 && jArr2 == (jArr = uo3VarD.q)) {
            return new uo3(uo3VarD.n & (~j4), uo3VarD.o & (~j3), j5, jArr);
        }
        if (jArr2 != null) {
            for (long j6 : jArr2) {
                uo3VarD = uo3VarD.d(j6);
            }
        }
        if (j3 != 0) {
            for (int i = 0; i < 64; i++) {
                if (((1 << i) & j3) != 0) {
                    uo3VarD = uo3VarD.d(((long) i) + j2);
                }
            }
        }
        if (j4 != 0) {
            for (int i2 = 0; i2 < 64; i2++) {
                if (((1 << i2) & j4) != 0) {
                    uo3VarD = uo3VarD.d(((long) i2) + j2 + 64);
                }
            }
        }
        return uo3VarD;
    }

    public final uo3 d(long j) {
        long[] jArr;
        int iJ;
        long[] jArr2;
        long j2 = j - this.p;
        if (nt1.m(j2, 0L) >= 0 && nt1.m(j2, 64L) < 0) {
            long j3 = 1 << ((int) j2);
            long j4 = this.o;
            if ((j4 & j3) != 0) {
                return new uo3(this.n, j4 & (~j3), this.p, this.q);
            }
        } else if (nt1.m(j2, 64L) >= 0 && nt1.m(j2, 128L) < 0) {
            long j5 = 1 << (((int) j2) - 64);
            long j6 = this.n;
            if ((j6 & j5) != 0) {
                return new uo3(j6 & (~j5), this.o, this.p, this.q);
            }
        } else if (nt1.m(j2, 0L) < 0 && (jArr = this.q) != null && (iJ = w80.j(jArr, j)) >= 0) {
            int length = jArr.length;
            int i = length - 1;
            if (i == 0) {
                jArr2 = null;
            } else {
                long[] jArr3 = new long[i];
                if (iJ > 0) {
                    ji.P(jArr, jArr3, 0, 0, iJ);
                }
                if (iJ < i) {
                    ji.P(jArr, jArr3, iJ, iJ + 1, length);
                }
                jArr2 = jArr3;
            }
            return new uo3(this.n, this.o, this.p, jArr2);
        }
        return this;
    }

    public final boolean e(long j) {
        long[] jArr;
        long j2 = j - this.p;
        return (nt1.m(j2, 0L) < 0 || nt1.m(j2, 64L) >= 0) ? (nt1.m(j2, 64L) < 0 || nt1.m(j2, 128L) >= 0) ? nt1.m(j2, 0L) <= 0 && (jArr = this.q) != null && w80.j(jArr, j) >= 0 : ((1 << (((int) j2) + (-64))) & this.n) != 0 : ((1 << ((int) j2)) & this.o) != 0;
    }

    public final uo3 f(uo3 uo3Var) {
        uo3 uo3VarG;
        long[] jArr;
        uo3 uo3VarG2 = this;
        uo3 uo3Var2 = r;
        if (uo3Var == uo3Var2) {
            return uo3VarG2;
        }
        if (uo3VarG2 == uo3Var2) {
            return uo3Var;
        }
        long j = uo3Var.p;
        long j2 = uo3Var.p;
        long[] jArr2 = uo3Var.q;
        long j3 = uo3Var.o;
        long j4 = uo3Var.n;
        long j5 = uo3VarG2.p;
        long j6 = uo3VarG2.o;
        long j7 = uo3VarG2.n;
        if (j == j5 && jArr2 == (jArr = uo3VarG2.q)) {
            return new uo3(j7 | j4, j6 | j3, j5, jArr);
        }
        int i = 0;
        long[] jArr3 = uo3VarG2.q;
        if (jArr3 != null) {
            if (jArr2 != null) {
                for (long j8 : jArr2) {
                    uo3VarG2 = uo3VarG2.g(j8);
                }
            }
            if (j3 != 0) {
                for (int i2 = 0; i2 < 64; i2++) {
                    if (((1 << i2) & j3) != 0) {
                        uo3VarG2 = uo3VarG2.g(((long) i2) + j2);
                    }
                }
            }
            if (j4 != 0) {
                while (i < 64) {
                    if (((1 << i) & j4) != 0) {
                        uo3VarG2 = uo3VarG2.g(((long) i) + j2 + 64);
                    }
                    i++;
                }
            }
            return uo3VarG2;
        }
        if (jArr3 != null) {
            uo3VarG = uo3Var;
            for (long j9 : jArr3) {
                uo3VarG = uo3VarG.g(j9);
            }
        } else {
            uo3VarG = uo3Var;
        }
        long j10 = uo3VarG2.p;
        if (j6 != 0) {
            for (int i3 = 0; i3 < 64; i3++) {
                if (((1 << i3) & j6) != 0) {
                    uo3VarG = uo3VarG.g(((long) i3) + j10);
                }
            }
        }
        if (j7 != 0) {
            while (i < 64) {
                if (((1 << i) & j7) != 0) {
                    uo3VarG = uo3VarG.g(((long) i) + j10 + 64);
                }
                i++;
            }
        }
        return uo3VarG;
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x00fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.uo3 g(long r30) {
        /*
            Method dump skipped, instruction units count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.uo3.g(long):uo3");
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return se0.y(new to3(this, null));
    }

    public final String toString() {
        String string = super.toString();
        ArrayList arrayList = new ArrayList(p70.a0(this, 10));
        Iterator it = iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((Number) it.next()).longValue()));
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int size = arrayList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = arrayList.get(i2);
            i++;
            if (i > 1) {
                sb.append((CharSequence) ", ");
            }
            if (obj != null ? obj instanceof CharSequence : true) {
                sb.append((CharSequence) obj);
            } else if (obj instanceof Character) {
                sb.append(((Character) obj).charValue());
            } else {
                sb.append((CharSequence) obj.toString());
            }
        }
        sb.append((CharSequence) "");
        return string + " [" + sb.toString() + "]";
    }
}
