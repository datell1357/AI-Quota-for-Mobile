package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e82 implements Cloneable {
    public /* synthetic */ boolean n;
    public /* synthetic */ long[] o;
    public /* synthetic */ Object[] p;
    public /* synthetic */ int q;

    public e82(int i) {
        if (i == 0) {
            this.o = is0.i;
            this.p = is0.j;
            return;
        }
        int i2 = i * 8;
        int i3 = 4;
        while (true) {
            if (i3 >= 32) {
                break;
            }
            int i4 = (1 << i3) - 12;
            if (i2 <= i4) {
                i2 = i4;
                break;
            }
            i3++;
        }
        int i5 = i2 / 8;
        this.o = new long[i5];
        this.p = new Object[i5];
    }

    public final Object a(long j) {
        Object obj;
        int iM = is0.m(this.o, this.q, j);
        if (iM < 0 || (obj = this.p[iM]) == ca.f) {
            return null;
        }
        return obj;
    }

    public final long b(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.q)) {
            k21.f(di0.q(i, "Expected index to be within 0..size()-1, but was "));
            return 0L;
        }
        if (this.n) {
            long[] jArr = this.o;
            Object[] objArr = this.p;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj != ca.f) {
                    if (i4 != i3) {
                        jArr[i3] = jArr[i4];
                        objArr[i3] = obj;
                        objArr[i4] = null;
                    }
                    i3++;
                }
            }
            this.n = false;
            this.q = i3;
        }
        return this.o[i];
    }

    public final void c(long j, Object obj) {
        Object obj2 = ca.f;
        int iM = is0.m(this.o, this.q, j);
        if (iM >= 0) {
            this.p[iM] = obj;
            return;
        }
        int i = ~iM;
        int i2 = this.q;
        if (i < i2) {
            Object[] objArr = this.p;
            if (objArr[i] == obj2) {
                this.o[i] = j;
                objArr[i] = obj;
                return;
            }
        }
        if (this.n) {
            long[] jArr = this.o;
            if (i2 >= jArr.length) {
                Object[] objArr2 = this.p;
                int i3 = 0;
                for (int i4 = 0; i4 < i2; i4++) {
                    Object obj3 = objArr2[i4];
                    if (obj3 != obj2) {
                        if (i4 != i3) {
                            jArr[i3] = jArr[i4];
                            objArr2[i3] = obj3;
                            objArr2[i4] = null;
                        }
                        i3++;
                    }
                }
                this.n = false;
                this.q = i3;
                i = ~is0.m(this.o, i3, j);
            }
        }
        int i5 = this.q;
        if (i5 >= this.o.length) {
            int i6 = (i5 + 1) * 8;
            int i7 = 4;
            while (true) {
                if (i7 >= 32) {
                    break;
                }
                int i8 = (1 << i7) - 12;
                if (i6 <= i8) {
                    i6 = i8;
                    break;
                }
                i7++;
            }
            int i9 = i6 / 8;
            this.o = Arrays.copyOf(this.o, i9);
            this.p = Arrays.copyOf(this.p, i9);
        }
        int i10 = this.q;
        if (i10 - i != 0) {
            long[] jArr2 = this.o;
            int i11 = i + 1;
            ji.P(jArr2, jArr2, i11, i, i10);
            Object[] objArr3 = this.p;
            ji.O(i11, i, this.q, objArr3, objArr3);
        }
        this.o[i] = j;
        this.p[i] = obj;
        this.q++;
    }

    public final Object clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        objClone.getClass();
        e82 e82Var = (e82) objClone;
        e82Var.o = (long[]) this.o.clone();
        e82Var.p = (Object[]) this.p.clone();
        return e82Var;
    }

    public final void d(long j) {
        int iM = is0.m(this.o, this.q, j);
        if (iM >= 0) {
            Object[] objArr = this.p;
            Object obj = objArr[iM];
            Object obj2 = ca.f;
            if (obj != obj2) {
                objArr[iM] = obj2;
                this.n = true;
            }
        }
    }

    public final int e() {
        if (this.n) {
            int i = this.q;
            long[] jArr = this.o;
            Object[] objArr = this.p;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != ca.f) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            this.n = false;
            this.q = i2;
        }
        return this.q;
    }

    public final Object f(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.q)) {
            k21.f(di0.q(i, "Expected index to be within 0..size()-1, but was "));
            return null;
        }
        if (this.n) {
            long[] jArr = this.o;
            Object[] objArr = this.p;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj != ca.f) {
                    if (i4 != i3) {
                        jArr[i3] = jArr[i4];
                        objArr[i3] = obj;
                        objArr[i4] = null;
                    }
                    i3++;
                }
            }
            this.n = false;
            this.q = i3;
        }
        return this.p[i];
    }

    public final String toString() {
        if (e() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.q * 28);
        sb.append('{');
        int i = this.q;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(b(i2));
            sb.append('=');
            Object objF = f(i2);
            if (objF != sb) {
                sb.append(objF);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public /* synthetic */ e82() {
        this(10);
    }
}
