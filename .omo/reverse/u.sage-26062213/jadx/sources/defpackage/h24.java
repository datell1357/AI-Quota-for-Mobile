package defpackage;

import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h24 extends g2 implements Serializable {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ int f118u = 0;
    public final transient i3 r;
    public final transient lg1 s;
    public final transient g24 t;

    /* JADX WARN: Illegal instructions before constructor call */
    public h24() {
        vh2 vh2Var = vh2.o;
        super(vh2Var);
        this.s = new lg1(vh2Var, false, null, 1, false, null, 1);
        g24 g24Var = new g24();
        this.t = g24Var;
        g24Var.i = g24Var;
        g24Var.h = g24Var;
        this.r = new i3();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x002f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0030 A[RETURN] */
    @Override // defpackage.hf2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A(int r6, java.lang.Object r7) {
        /*
            r5 = this;
            java.lang.String r0 = "newCount"
            r1 = 0
            defpackage.ht4.i(r1, r0)
            java.lang.String r0 = "oldCount"
            defpackage.ht4.i(r6, r0)
            lg1 r0 = r5.s
            boolean r0 = r0.a(r7)
            defpackage.n44.U(r0)
            i3 r0 = r5.r
            java.lang.Object r2 = r0.a
            g24 r2 = (defpackage.g24) r2
            r3 = 1
            if (r2 != 0) goto L20
            if (r6 != 0) goto L30
            goto L2f
        L20:
            int[] r4 = new int[r3]
            java.util.Comparator r5 = r5.p
            g24 r5 = r2.o(r5, r7, r6, r4)
            r0.a(r2, r5)
            r5 = r4[r1]
            if (r5 != r6) goto L30
        L2f:
            return r3
        L30:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.h24.A(int, java.lang.Object):boolean");
    }

    @Override // defpackage.up3
    public final up3 L(int i, Object obj) {
        return new h24(this.r, this.s.b(new lg1(this.p, true, obj, i, false, null, 1)), this.t);
    }

    @Override // defpackage.hf2
    public final int N(Object obj) {
        try {
            g24 g24Var = (g24) this.r.a;
            if (this.s.a(obj) && g24Var != null) {
                return g24Var.d(this.p, obj);
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // defpackage.hf2
    public final int V(int i, Object obj) {
        ht4.i(i, "occurrences");
        if (i == 0) {
            return N(obj);
        }
        i3 i3Var = this.r;
        g24 g24Var = (g24) i3Var.a;
        int[] iArr = new int[1];
        try {
            if (this.s.a(obj) && g24Var != null) {
                i3Var.a(g24Var, g24Var.j(this.p, obj, i, iArr));
                return iArr[0];
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    public final int a(int i, Object obj) {
        ht4.i(i, "occurrences");
        if (i == 0) {
            return N(obj);
        }
        n44.U(this.s.a(obj));
        i3 i3Var = this.r;
        g24 g24Var = (g24) i3Var.a;
        Comparator comparator = this.p;
        if (g24Var != null) {
            int[] iArr = new int[1];
            i3Var.a(g24Var, g24Var.a(comparator, obj, i, iArr));
            return iArr[0];
        }
        comparator.compare(obj, obj);
        g24 g24Var2 = new g24(i, obj);
        g24 g24Var3 = this.t;
        g24Var3.i = g24Var2;
        g24Var2.h = g24Var3;
        g24Var2.i = g24Var3;
        g24Var3.h = g24Var2;
        i3Var.a(g24Var, g24Var2);
        return 0;
    }

    public final long c(int i, g24 g24Var) {
        if (g24Var == null) {
            return 0L;
        }
        lg1 lg1Var = this.s;
        int iCompare = this.p.compare(lg1Var.s, g24Var.a);
        if (iCompare > 0) {
            return c(i, g24Var.g);
        }
        if (iCompare != 0) {
            return c(i, g24Var.f) + xw1.d(i, g24Var.g) + ((long) xw1.b(i, g24Var));
        }
        int iF = di0.F(lg1Var.t);
        if (iF == 0) {
            return xw1.d(i, g24Var.g) + ((long) xw1.b(i, g24Var));
        }
        if (iF == 1) {
            return xw1.d(i, g24Var.g);
        }
        throw new AssertionError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        lg1 lg1Var = this.s;
        if (lg1Var.o || lg1Var.r) {
            f24 f24Var = new f24(this, 0);
            while (f24Var.hasNext()) {
                f24Var.next();
                f24Var.remove();
            }
            return;
        }
        g24 g24Var = this.t;
        g24 g24Var2 = g24Var.i;
        Objects.requireNonNull(g24Var2);
        while (g24Var2 != g24Var) {
            g24 g24Var3 = g24Var2.i;
            Objects.requireNonNull(g24Var3);
            g24Var2.b = 0;
            g24Var2.f = null;
            g24Var2.g = null;
            g24Var2.h = null;
            g24Var2.i = null;
            g24Var2 = g24Var3;
        }
        g24Var.i = g24Var;
        g24Var.h = g24Var;
        this.r.a = null;
    }

    public final long d(int i, g24 g24Var) {
        if (g24Var == null) {
            return 0L;
        }
        lg1 lg1Var = this.s;
        int iCompare = this.p.compare(lg1Var.p, g24Var.a);
        if (iCompare < 0) {
            return d(i, g24Var.f);
        }
        if (iCompare != 0) {
            return d(i, g24Var.g) + xw1.d(i, g24Var.f) + ((long) xw1.b(i, g24Var));
        }
        int iF = di0.F(lg1Var.q);
        if (iF == 0) {
            return xw1.d(i, g24Var.f) + ((long) xw1.b(i, g24Var));
        }
        if (iF == 1) {
            return xw1.d(i, g24Var.f);
        }
        throw new AssertionError();
    }

    public final long e(int i) {
        g24 g24Var = (g24) this.r.a;
        long jD = xw1.d(i, g24Var);
        lg1 lg1Var = this.s;
        if (lg1Var.o) {
            jD -= d(i, g24Var);
        }
        return lg1Var.r ? jD - c(i, g24Var) : jD;
    }

    public final void f(Object obj) {
        ht4.i(0, "count");
        if (this.s.a(obj)) {
            i3 i3Var = this.r;
            g24 g24Var = (g24) i3Var.a;
            if (g24Var == null) {
                return;
            }
            i3Var.a(g24Var, g24Var.p(this.p, obj, new int[1]));
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new lf2(this, entrySet().iterator());
    }

    @Override // defpackage.up3
    public final up3 j(int i, Object obj) {
        return new h24(this.r, this.s.b(new lg1(this.p, false, null, 1, true, obj, i)), this.t);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return qn0.G(e(1));
    }

    public h24(i3 i3Var, lg1 lg1Var, g24 g24Var) {
        super(lg1Var.n);
        this.r = i3Var;
        this.s = lg1Var;
        this.t = g24Var;
    }
}
