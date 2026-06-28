package defpackage;

import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f12 implements eb2 {
    public final g12 a;
    public final int b;
    public final boolean c;
    public final float d;
    public final eb2 e;
    public final float f;
    public final boolean g;
    public final qi0 h;
    public final as0 i;
    public final long j;
    public final List k;
    public final int l;
    public final int m;
    public final int n;
    public final hr2 o;
    public final int p;
    public final int q;

    public f12(g12 g12Var, int i, boolean z, float f, eb2 eb2Var, float f2, boolean z2, qi0 qi0Var, as0 as0Var, long j, List list, int i2, int i3, int i4, hr2 hr2Var, int i5, int i6) {
        this.a = g12Var;
        this.b = i;
        this.c = z;
        this.d = f;
        this.e = eb2Var;
        this.f = f2;
        this.g = z2;
        this.h = qi0Var;
        this.i = as0Var;
        this.j = j;
        this.k = list;
        this.l = i2;
        this.m = i3;
        this.n = i4;
        this.o = hr2Var;
        this.p = i5;
        this.q = i6;
    }

    @Override // defpackage.eb2
    public final int a() {
        return this.e.a();
    }

    @Override // defpackage.eb2
    public final int b() {
        return this.e.b();
    }

    @Override // defpackage.eb2
    public final Map c() {
        return this.e.c();
    }

    @Override // defpackage.eb2
    public final void d() {
        this.e.d();
    }

    @Override // defpackage.eb2
    public final df1 e() {
        return this.e.e();
    }

    @Override // defpackage.eb2
    public final pe1 f() {
        return this.e.f();
    }

    @Override // defpackage.eb2
    public final pe1 g() {
        return this.e.g();
    }

    public final f12 h(int i, boolean z) {
        g12 g12Var;
        if (this.g) {
            return null;
        }
        List list = this.k;
        if (list.isEmpty() || (g12Var = this.a) == null) {
            return null;
        }
        int iA = g12Var.a();
        int i2 = this.b - i;
        if (i2 < 0 || i2 >= iA) {
            return null;
        }
        g12 g12Var2 = (g12) o70.h0(list);
        g12 g12Var3 = (g12) o70.o0(list);
        if (g12Var2.s || g12Var3.s) {
            return null;
        }
        int i3 = g12Var2.l;
        int i4 = this.m;
        int i5 = this.l;
        if (i < 0) {
            if (Math.min((g12Var2.a() + i3) - i5, (g12Var3.a() + g12Var3.l) - i4) <= (-i)) {
                return null;
            }
        } else if (Math.min(i5 - i3, i4 - g12Var3.l) <= i) {
            return null;
        }
        int size = list.size();
        for (int i6 = 0; i6 < size; i6++) {
            g12 g12Var4 = (g12) list.get(i6);
            boolean z2 = g12Var4.c;
            int[] iArr = g12Var4.f103u;
            if (!g12Var4.s) {
                g12Var4.l += i;
                int length = iArr.length;
                for (int i7 = 0; i7 < length; i7++) {
                    int i8 = i7 & 1;
                    if ((z2 && i8 != 0) || (!z2 && i8 == 0)) {
                        iArr[i7] = iArr[i7] + i;
                    }
                }
                if (z) {
                    int size2 = g12Var4.b.size();
                    for (int i9 = 0; i9 < size2; i9++) {
                        di0.D(((kg2) g12Var4.k.a).g(g12Var4.i));
                    }
                }
            }
        }
        return new f12(this.a, i2, this.c || i > 0, i, this.e, this.f, this.g, this.h, this.i, this.j, list, this.l, this.m, this.n, this.o, this.p, this.q);
    }

    public final long i() {
        eb2 eb2Var = this.e;
        return (((long) eb2Var.b()) << 32) | (((long) eb2Var.a()) & 4294967295L);
    }
}
