package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p94 implements Comparable, Serializable {
    public static final p94 p = new p94(0, 0);
    public final long n;
    public final long o;

    public p94(long j, long j2) {
        this.n = j;
        this.o = j2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        p94 p94Var = (p94) obj;
        p94Var.getClass();
        long j = p94Var.n;
        long j2 = this.n;
        if (j2 != j) {
            return Long.compare(j2 ^ Long.MIN_VALUE, j ^ Long.MIN_VALUE);
        }
        return Long.compare(this.o ^ Long.MIN_VALUE, p94Var.o ^ Long.MIN_VALUE);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p94)) {
            return false;
        }
        p94 p94Var = (p94) obj;
        return this.n == p94Var.n && this.o == p94Var.o;
    }

    public final int hashCode() {
        return Long.hashCode(this.n ^ this.o);
    }

    public final String toString() {
        byte[] bArr = new byte[36];
        mt1.u(this.n, bArr, 0, 0, 4);
        bArr[8] = 45;
        mt1.u(this.n, bArr, 9, 4, 6);
        bArr[13] = 45;
        mt1.u(this.n, bArr, 14, 6, 8);
        bArr[18] = 45;
        mt1.u(this.o, bArr, 19, 0, 2);
        bArr[23] = 45;
        mt1.u(this.o, bArr, 24, 2, 8);
        return new String(bArr, k40.a);
    }
}
