package defpackage;

import android.content.res.ColorStateList;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mq3 implements Cloneable {
    public /* synthetic */ boolean n;
    public /* synthetic */ int[] o;
    public /* synthetic */ Object[] p;
    public /* synthetic */ int q;

    public mq3(int i) {
        int i2;
        int i3 = 4;
        while (true) {
            i2 = 40;
            if (i3 >= 32) {
                break;
            }
            int i4 = (1 << i3) - 12;
            if (40 <= i4) {
                i2 = i4;
                break;
            }
            i3++;
        }
        int i5 = i2 / 4;
        this.o = new int[i5];
        this.p = new Object[i5];
    }

    public final void a(int i, ColorStateList colorStateList) {
        int i2 = this.q;
        if (i2 != 0 && i <= this.o[i2 - 1]) {
            e(i, colorStateList);
            return;
        }
        if (this.n && i2 >= this.o.length) {
            n44.K(this);
        }
        int i3 = this.q;
        if (i3 >= this.o.length) {
            int i4 = (i3 + 1) * 4;
            int i5 = 4;
            while (true) {
                if (i5 >= 32) {
                    break;
                }
                int i6 = (1 << i5) - 12;
                if (i4 <= i6) {
                    i4 = i6;
                    break;
                }
                i5++;
            }
            int i7 = i4 / 4;
            this.o = Arrays.copyOf(this.o, i7);
            this.p = Arrays.copyOf(this.p, i7);
        }
        this.o[i3] = i;
        this.p[i3] = colorStateList;
        this.q = i3 + 1;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final mq3 clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        objClone.getClass();
        mq3 mq3Var = (mq3) objClone;
        mq3Var.o = (int[]) this.o.clone();
        mq3Var.p = (Object[]) this.p.clone();
        return mq3Var;
    }

    public final Object c(int i) {
        Object obj;
        int iL = is0.l(this.q, i, this.o);
        if (iL < 0 || (obj = this.p[iL]) == n44.d) {
            return null;
        }
        return obj;
    }

    public final int d(int i) {
        if (this.n) {
            n44.K(this);
        }
        return this.o[i];
    }

    public final void e(int i, Object obj) {
        int iL = is0.l(this.q, i, this.o);
        if (iL >= 0) {
            this.p[iL] = obj;
            return;
        }
        int i2 = ~iL;
        int i3 = this.q;
        if (i2 < i3) {
            Object[] objArr = this.p;
            if (objArr[i2] == n44.d) {
                this.o[i2] = i;
                objArr[i2] = obj;
                return;
            }
        }
        if (this.n && i3 >= this.o.length) {
            n44.K(this);
            i2 = ~is0.l(this.q, i, this.o);
        }
        int i4 = this.q;
        if (i4 >= this.o.length) {
            int i5 = (i4 + 1) * 4;
            int i6 = 4;
            while (true) {
                if (i6 >= 32) {
                    break;
                }
                int i7 = (1 << i6) - 12;
                if (i5 <= i7) {
                    i5 = i7;
                    break;
                }
                i6++;
            }
            int i8 = i5 / 4;
            this.o = Arrays.copyOf(this.o, i8);
            this.p = Arrays.copyOf(this.p, i8);
        }
        int i9 = this.q;
        if (i9 - i2 != 0) {
            int[] iArr = this.o;
            int i10 = i2 + 1;
            ji.N(i10, i2, i9, iArr, iArr);
            Object[] objArr2 = this.p;
            ji.O(i10, i2, this.q, objArr2, objArr2);
        }
        this.o[i2] = i;
        this.p[i2] = obj;
        this.q++;
    }

    public final int f() {
        if (this.n) {
            n44.K(this);
        }
        return this.q;
    }

    public final Object g(int i) {
        if (this.n) {
            n44.K(this);
        }
        Object[] objArr = this.p;
        if (i < objArr.length) {
            return objArr[i];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public final String toString() {
        if (f() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.q * 28);
        sb.append('{');
        int i = this.q;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(d(i2));
            sb.append('=');
            Object objG = g(i2);
            if (objG != this) {
                sb.append(objG);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
