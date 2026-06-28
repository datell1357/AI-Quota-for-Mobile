package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b32 implements hd4 {
    public final s64 a;
    public final int b;

    public b32(s64 s64Var, int i) {
        this.a = s64Var;
        this.b = i;
    }

    @Override // defpackage.hd4
    public final int a(as0 as0Var) {
        if ((this.b & 32) != 0) {
            return this.a.a(as0Var);
        }
        return 0;
    }

    @Override // defpackage.hd4
    public final int b(as0 as0Var) {
        if ((this.b & 16) != 0) {
            return this.a.b(as0Var);
        }
        return 0;
    }

    @Override // defpackage.hd4
    public final int c(as0 as0Var, hy1 hy1Var) {
        if (((hy1Var == hy1.n ? 4 : 1) & this.b) != 0) {
            return this.a.c(as0Var, hy1Var);
        }
        return 0;
    }

    @Override // defpackage.hd4
    public final int d(as0 as0Var, hy1 hy1Var) {
        if (((hy1Var == hy1.n ? 8 : 2) & this.b) != 0) {
            return this.a.d(as0Var, hy1Var);
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b32)) {
            return false;
        }
        b32 b32Var = (b32) obj;
        return this.a.equals(b32Var.a) && this.b == b32Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.b;
        int i2 = ve4.a;
        if ((i & i2) == i2) {
            ve4.a("Start", sb);
        }
        int i3 = ve4.c;
        if ((i & i3) == i3) {
            ve4.a("Left", sb);
        }
        if ((i & 16) == 16) {
            ve4.a("Top", sb);
        }
        int i4 = ve4.b;
        if ((i & i4) == i4) {
            ve4.a("End", sb);
        }
        int i5 = ve4.d;
        if ((i & i5) == i5) {
            ve4.a("Right", sb);
        }
        if ((i & 32) == 32) {
            ve4.a("Bottom", sb);
        }
        return "(" + this.a + " only " + di0.v("WindowInsetsSides(", sb.toString(), ")") + ")";
    }
}
