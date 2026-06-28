package defpackage;

import java.util.Comparator;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g24 {
    public final Object a;
    public int b;
    public int c;
    public long d;
    public int e;
    public g24 f;
    public g24 g;
    public g24 h;
    public g24 i;

    public g24(int i, Object obj) {
        n44.U(i > 0);
        this.a = obj;
        this.b = i;
        this.d = i;
        this.c = 1;
        this.e = 1;
        this.f = null;
        this.g = null;
    }

    public final g24 a(Comparator comparator, Object obj, int i, int[] iArr) {
        int iCompare = comparator.compare(obj, this.a);
        if (iCompare < 0) {
            g24 g24Var = this.f;
            if (g24Var == null) {
                iArr[0] = 0;
                this.f = new g24(i, obj);
                g24 g24Var2 = this.h;
                Objects.requireNonNull(g24Var2);
                g24 g24Var3 = this.f;
                int i2 = h24.f118u;
                g24Var2.i = g24Var3;
                g24Var3.h = g24Var2;
                g24Var3.i = this;
                this.h = g24Var3;
                this.e = Math.max(2, this.e);
                this.c++;
                this.d += (long) i;
                return this;
            }
            int i3 = g24Var.e;
            g24 g24VarA = g24Var.a(comparator, obj, i, iArr);
            this.f = g24VarA;
            if (iArr[0] == 0) {
                this.c++;
            }
            this.d += (long) i;
            if (g24VarA.e != i3) {
                return g();
            }
        } else {
            if (iCompare <= 0) {
                int i4 = this.b;
                iArr[0] = i4;
                long j = i;
                n44.U(((long) i4) + j <= 2147483647L);
                this.b += i;
                this.d += j;
                return this;
            }
            g24 g24Var4 = this.g;
            if (g24Var4 == null) {
                iArr[0] = 0;
                g24 g24Var5 = new g24(i, obj);
                this.g = g24Var5;
                g24 g24Var6 = this.i;
                Objects.requireNonNull(g24Var6);
                int i5 = h24.f118u;
                this.i = g24Var5;
                g24Var5.h = this;
                g24Var5.i = g24Var6;
                g24Var6.h = g24Var5;
                this.e = Math.max(2, this.e);
                this.c++;
                this.d += (long) i;
                return this;
            }
            int i6 = g24Var4.e;
            g24 g24VarA2 = g24Var4.a(comparator, obj, i, iArr);
            this.g = g24VarA2;
            if (iArr[0] == 0) {
                this.c++;
            }
            this.d += (long) i;
            if (g24VarA2.e != i6) {
                return g();
            }
        }
        return this;
    }

    public final int b() {
        g24 g24Var = this.f;
        int i = g24Var == null ? 0 : g24Var.e;
        g24 g24Var2 = this.g;
        return i - (g24Var2 != null ? g24Var2.e : 0);
    }

    public final g24 c(Comparator comparator, Object obj) {
        g24 g24VarC;
        int iCompare = comparator.compare(obj, this.a);
        if (iCompare < 0) {
            g24 g24Var = this.f;
            if (g24Var != null && (g24VarC = g24Var.c(comparator, obj)) != null) {
                return g24VarC;
            }
        } else if (iCompare != 0) {
            g24 g24Var2 = this.g;
            if (g24Var2 == null) {
                return null;
            }
            return g24Var2.c(comparator, obj);
        }
        return this;
    }

    public final int d(Comparator comparator, Object obj) {
        int iCompare = comparator.compare(obj, this.a);
        if (iCompare < 0) {
            g24 g24Var = this.f;
            if (g24Var == null) {
                return 0;
            }
            return g24Var.d(comparator, obj);
        }
        if (iCompare <= 0) {
            return this.b;
        }
        g24 g24Var2 = this.g;
        if (g24Var2 == null) {
            return 0;
        }
        return g24Var2.d(comparator, obj);
    }

    public final g24 e() {
        int i = this.b;
        this.b = 0;
        g24 g24Var = this.h;
        Objects.requireNonNull(g24Var);
        g24 g24Var2 = this.i;
        Objects.requireNonNull(g24Var2);
        int i2 = h24.f118u;
        g24Var.i = g24Var2;
        g24Var2.h = g24Var;
        g24 g24Var3 = this.f;
        g24 g24Var4 = this.g;
        if (g24Var3 == null) {
            return g24Var4;
        }
        if (g24Var4 == null) {
            return g24Var3;
        }
        if (g24Var3.e >= g24Var4.e) {
            g24 g24Var5 = this.h;
            Objects.requireNonNull(g24Var5);
            g24Var5.f = this.f.k(g24Var5);
            g24Var5.g = this.g;
            g24Var5.c = this.c - 1;
            g24Var5.d = this.d - ((long) i);
            return g24Var5.g();
        }
        g24 g24Var6 = this.i;
        Objects.requireNonNull(g24Var6);
        g24Var6.g = this.g.l(g24Var6);
        g24Var6.f = this.f;
        g24Var6.c = this.c - 1;
        g24Var6.d = this.d - ((long) i);
        return g24Var6.g();
    }

    public final g24 f(Comparator comparator, Object obj) {
        g24 g24VarF;
        int iCompare = comparator.compare(obj, this.a);
        if (iCompare > 0) {
            g24 g24Var = this.g;
            if (g24Var != null && (g24VarF = g24Var.f(comparator, obj)) != null) {
                return g24VarF;
            }
        } else if (iCompare != 0) {
            g24 g24Var2 = this.f;
            if (g24Var2 == null) {
                return null;
            }
            return g24Var2.f(comparator, obj);
        }
        return this;
    }

    public final g24 g() {
        int iB = b();
        if (iB == -2) {
            Objects.requireNonNull(this.g);
            if (this.g.b() > 0) {
                this.g = this.g.n();
            }
            return m();
        }
        if (iB != 2) {
            i();
            return this;
        }
        Objects.requireNonNull(this.f);
        if (this.f.b() < 0) {
            this.f = this.f.m();
        }
        return n();
    }

    public final void h() {
        g24 g24Var = this.f;
        int i = h24.f118u;
        int i2 = (g24Var == null ? 0 : g24Var.c) + 1;
        g24 g24Var2 = this.g;
        this.c = i2 + (g24Var2 != null ? g24Var2.c : 0);
        this.d = (g24Var2 != null ? g24Var2.d : 0L) + (g24Var == null ? 0L : g24Var.d) + ((long) this.b);
        i();
    }

    public final void i() {
        g24 g24Var = this.f;
        int i = g24Var == null ? 0 : g24Var.e;
        g24 g24Var2 = this.g;
        this.e = Math.max(i, g24Var2 != null ? g24Var2.e : 0) + 1;
    }

    public final g24 j(Comparator comparator, Object obj, int i, int[] iArr) {
        int iCompare = comparator.compare(obj, this.a);
        if (iCompare < 0) {
            g24 g24Var = this.f;
            if (g24Var == null) {
                iArr[0] = 0;
                return this;
            }
            this.f = g24Var.j(comparator, obj, i, iArr);
            int i2 = iArr[0];
            if (i2 > 0) {
                if (i >= i2) {
                    this.c--;
                    this.d -= (long) i2;
                } else {
                    this.d -= (long) i;
                }
            }
            return i2 == 0 ? this : g();
        }
        if (iCompare <= 0) {
            int i3 = this.b;
            iArr[0] = i3;
            if (i >= i3) {
                return e();
            }
            this.b = i3 - i;
            this.d -= (long) i;
            return this;
        }
        g24 g24Var2 = this.g;
        if (g24Var2 == null) {
            iArr[0] = 0;
            return this;
        }
        this.g = g24Var2.j(comparator, obj, i, iArr);
        int i4 = iArr[0];
        if (i4 > 0) {
            if (i >= i4) {
                this.c--;
                this.d -= (long) i4;
            } else {
                this.d -= (long) i;
            }
        }
        return g();
    }

    public final g24 k(g24 g24Var) {
        g24 g24Var2 = this.g;
        if (g24Var2 == null) {
            return this.f;
        }
        this.g = g24Var2.k(g24Var);
        this.c--;
        this.d -= (long) g24Var.b;
        return g();
    }

    public final g24 l(g24 g24Var) {
        g24 g24Var2 = this.f;
        if (g24Var2 == null) {
            return this.g;
        }
        this.f = g24Var2.l(g24Var);
        this.c--;
        this.d -= (long) g24Var.b;
        return g();
    }

    public final g24 m() {
        n44.a0(this.g != null);
        g24 g24Var = this.g;
        this.g = g24Var.f;
        g24Var.f = this;
        g24Var.d = this.d;
        g24Var.c = this.c;
        h();
        g24Var.i();
        return g24Var;
    }

    public final g24 n() {
        n44.a0(this.f != null);
        g24 g24Var = this.f;
        this.f = g24Var.g;
        g24Var.g = this;
        g24Var.d = this.d;
        g24Var.c = this.c;
        h();
        g24Var.i();
        return g24Var;
    }

    public final g24 o(Comparator comparator, Object obj, int i, int[] iArr) {
        int iCompare = comparator.compare(obj, this.a);
        if (iCompare < 0) {
            g24 g24Var = this.f;
            if (g24Var == null) {
                iArr[0] = 0;
                return this;
            }
            this.f = g24Var.o(comparator, obj, i, iArr);
            int i2 = iArr[0];
            if (i2 == i) {
                if (i2 != 0) {
                    this.c--;
                }
                this.d += (long) (0 - i2);
            }
            return g();
        }
        if (iCompare <= 0) {
            int i3 = this.b;
            iArr[0] = i3;
            return i == i3 ? e() : this;
        }
        g24 g24Var2 = this.g;
        if (g24Var2 == null) {
            iArr[0] = 0;
            return this;
        }
        this.g = g24Var2.o(comparator, obj, i, iArr);
        int i4 = iArr[0];
        if (i4 == i) {
            if (i4 != 0) {
                this.c--;
            }
            this.d += (long) (0 - i4);
        }
        return g();
    }

    public final g24 p(Comparator comparator, Object obj, int[] iArr) {
        int iCompare = comparator.compare(obj, this.a);
        if (iCompare < 0) {
            g24 g24Var = this.f;
            if (g24Var == null) {
                iArr[0] = 0;
                return this;
            }
            this.f = g24Var.p(comparator, obj, iArr);
            int i = iArr[0];
            if (i != 0) {
                this.c--;
            }
            this.d += (long) (0 - i);
            return g();
        }
        if (iCompare <= 0) {
            iArr[0] = this.b;
            return e();
        }
        g24 g24Var2 = this.g;
        if (g24Var2 == null) {
            iArr[0] = 0;
            return this;
        }
        this.g = g24Var2.p(comparator, obj, iArr);
        int i2 = iArr[0];
        if (i2 != 0) {
            this.c--;
        }
        this.d += (long) (0 - i2);
        return g();
    }

    public final String toString() {
        int i = this.b;
        ht4.i(i, "count");
        String strValueOf = String.valueOf(this.a);
        if (i == 1) {
            return strValueOf;
        }
        return strValueOf + " x " + i;
    }

    public g24() {
        this.a = null;
        this.b = 1;
    }
}
