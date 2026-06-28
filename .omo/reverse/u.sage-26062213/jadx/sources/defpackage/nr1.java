package defpackage;

import android.graphics.Insets;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nr1 {
    public static final nr1 e = new nr1(0, 0, 0, 0);
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public nr1(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public static nr1 a(nr1 nr1Var, nr1 nr1Var2) {
        return b(Math.max(nr1Var.a, nr1Var2.a), Math.max(nr1Var.b, nr1Var2.b), Math.max(nr1Var.c, nr1Var2.c), Math.max(nr1Var.d, nr1Var2.d));
    }

    public static nr1 b(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? e : new nr1(i, i2, i3, i4);
    }

    public static nr1 c(Insets insets) {
        return b(insets.left, insets.top, insets.right, insets.bottom);
    }

    public final Insets d() {
        return vf.j(this.a, this.b, this.c, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || nr1.class != obj.getClass()) {
            return false;
        }
        nr1 nr1Var = (nr1) obj;
        return this.d == nr1Var.d && this.a == nr1Var.a && this.c == nr1Var.c && this.b == nr1Var.b;
    }

    public final int hashCode() {
        return (((((this.a * 31) + this.b) * 31) + this.c) * 31) + this.d;
    }

    public final String toString() {
        return "Insets{left=" + this.a + ", top=" + this.b + ", right=" + this.c + ", bottom=" + this.d + '}';
    }
}
