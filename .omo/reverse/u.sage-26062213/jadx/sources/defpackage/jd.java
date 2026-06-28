package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jd implements hd4 {
    public final int a;
    public final String b;
    public final ws2 c = ca.A(nr1.e);
    public final ws2 d = ca.A(Boolean.TRUE);

    public jd(int i, String str) {
        this.a = i;
        this.b = str;
    }

    @Override // defpackage.hd4
    public final int a(as0 as0Var) {
        return e().d;
    }

    @Override // defpackage.hd4
    public final int b(as0 as0Var) {
        return e().b;
    }

    @Override // defpackage.hd4
    public final int c(as0 as0Var, hy1 hy1Var) {
        return e().c;
    }

    @Override // defpackage.hd4
    public final int d(as0 as0Var, hy1 hy1Var) {
        return e().a;
    }

    public final nr1 e() {
        return (nr1) this.c.getValue();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof jd) {
            return this.a == ((jd) obj).a;
        }
        return false;
    }

    public final void f(boolean z) {
        this.d.setValue(Boolean.valueOf(z));
    }

    public final void g(ke4 ke4Var, int i) {
        int i2 = this.a;
        if (i == 0 || (i & i2) != 0) {
            this.c.setValue(ke4Var.a.i(i2));
            f(ke4Var.a.u(i2));
        }
    }

    public final int hashCode() {
        return this.a;
    }

    public final String toString() {
        return this.b + "(" + e().a + ", " + e().b + ", " + e().c + ", " + e().d + ")";
    }
}
