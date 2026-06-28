package defpackage;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d70 {
    public static final Logger f = Logger.getLogger(d70.class.getName());
    public static final boolean g = n74.e;
    public dh1 a;
    public final byte[] b;
    public final int c;
    public int d;
    public final l64 e;

    public d70(l64 l64Var, int i) {
        if (i < 0) {
            k21.f("bufferSize must be >= 0");
            throw null;
        }
        int iMax = Math.max(i, 20);
        this.b = new byte[iMax];
        this.c = iMax;
        this.e = l64Var;
    }

    public static int f(int i, f00 f00Var) {
        int iH = h(i);
        int size = f00Var.size();
        return i(size) + size + iH;
    }

    public static int g(String str) {
        int length;
        try {
            length = h94.a(str);
        } catch (g94 unused) {
            length = str.getBytes(dt1.a).length;
        }
        return i(length) + length;
    }

    public static int h(int i) {
        return i(i << 3);
    }

    public static int i(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int j(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public final void A(String str) throws IOException {
        try {
            int length = str.length() * 3;
            int i = i(length);
            int i2 = i + length;
            int i3 = this.c;
            if (i2 > i3) {
                byte[] bArr = new byte[length];
                int iQ = h94.a.q(str, bArr, 0, length);
                D(iQ);
                n(bArr, 0, iQ);
                return;
            }
            if (i2 > i3 - this.d) {
                k();
            }
            int i4 = i(str.length());
            int i5 = this.d;
            byte[] bArr2 = this.b;
            try {
                if (i4 == i) {
                    int i6 = i5 + i4;
                    this.d = i6;
                    int iQ2 = h94.a.q(str, bArr2, i6, i3 - i6);
                    this.d = i5;
                    d((iQ2 - i5) - i4);
                    this.d = iQ2;
                } else {
                    int iA = h94.a(str);
                    d(iA);
                    this.d = h94.a.q(str, bArr2, this.d, iA);
                }
            } catch (g94 e) {
                this.d = i5;
                throw e;
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new c70(e2);
            }
        } catch (g94 e3) {
            f.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e3);
            byte[] bytes = str.getBytes(dt1.a);
            try {
                D(bytes.length);
                x(bytes, 0, bytes.length);
            } catch (IndexOutOfBoundsException e4) {
                throw new c70(e4);
            }
        }
    }

    public final void B(int i, int i2) {
        D((i << 3) | i2);
    }

    public final void C(int i, int i2) throws IOException {
        l(20);
        c(i, 0);
        d(i2);
    }

    public final void D(int i) throws IOException {
        l(5);
        d(i);
    }

    public final void E(int i, long j) throws IOException {
        l(20);
        c(i, 0);
        e(j);
    }

    public final void F(long j) throws IOException {
        l(10);
        e(j);
    }

    public final void a(int i) {
        int i2 = this.d;
        int i3 = i2 + 1;
        this.d = i3;
        byte[] bArr = this.b;
        bArr[i2] = (byte) (i & 255);
        int i4 = i2 + 2;
        this.d = i4;
        bArr[i3] = (byte) ((i >> 8) & 255);
        int i5 = i2 + 3;
        this.d = i5;
        bArr[i4] = (byte) ((i >> 16) & 255);
        this.d = i2 + 4;
        bArr[i5] = (byte) ((i >> 24) & 255);
    }

    public final void b(long j) {
        int i = this.d;
        int i2 = i + 1;
        this.d = i2;
        byte[] bArr = this.b;
        bArr[i] = (byte) (j & 255);
        int i3 = i + 2;
        this.d = i3;
        bArr[i2] = (byte) ((j >> 8) & 255);
        int i4 = i + 3;
        this.d = i4;
        bArr[i3] = (byte) ((j >> 16) & 255);
        int i5 = i + 4;
        this.d = i5;
        bArr[i4] = (byte) (255 & (j >> 24));
        int i6 = i + 5;
        this.d = i6;
        bArr[i5] = (byte) (((int) (j >> 32)) & 255);
        int i7 = i + 6;
        this.d = i7;
        bArr[i6] = (byte) (((int) (j >> 40)) & 255);
        int i8 = i + 7;
        this.d = i8;
        bArr[i7] = (byte) (((int) (j >> 48)) & 255);
        this.d = i + 8;
        bArr[i8] = (byte) (((int) (j >> 56)) & 255);
    }

    public final void c(int i, int i2) {
        d((i << 3) | i2);
    }

    public final void d(int i) {
        boolean z = g;
        byte[] bArr = this.b;
        if (z) {
            while (true) {
                int i2 = i & (-128);
                int i3 = this.d;
                if (i2 == 0) {
                    this.d = i3 + 1;
                    n74.j(bArr, i3, (byte) i);
                    return;
                } else {
                    this.d = i3 + 1;
                    n74.j(bArr, i3, (byte) ((i | 128) & 255));
                    i >>>= 7;
                }
            }
        } else {
            while (true) {
                int i4 = i & (-128);
                int i5 = this.d;
                if (i4 == 0) {
                    this.d = i5 + 1;
                    bArr[i5] = (byte) i;
                    return;
                } else {
                    this.d = i5 + 1;
                    bArr[i5] = (byte) ((i | 128) & 255);
                    i >>>= 7;
                }
            }
        }
    }

    public final void e(long j) {
        boolean z = g;
        byte[] bArr = this.b;
        if (z) {
            while (true) {
                long j2 = j & (-128);
                int i = this.d;
                if (j2 == 0) {
                    this.d = i + 1;
                    n74.j(bArr, i, (byte) j);
                    return;
                } else {
                    this.d = i + 1;
                    n74.j(bArr, i, (byte) ((((int) j) | 128) & 255));
                    j >>>= 7;
                }
            }
        } else {
            while (true) {
                long j3 = j & (-128);
                int i2 = this.d;
                if (j3 == 0) {
                    this.d = i2 + 1;
                    bArr[i2] = (byte) j;
                    return;
                } else {
                    this.d = i2 + 1;
                    bArr[i2] = (byte) ((((int) j) | 128) & 255);
                    j >>>= 7;
                }
            }
        }
    }

    public final void k() throws IOException {
        this.e.write(this.b, 0, this.d);
        this.d = 0;
    }

    public final void l(int i) throws IOException {
        if (this.c - this.d < i) {
            k();
        }
    }

    public final void m(byte b) throws IOException {
        if (this.d == this.c) {
            k();
        }
        int i = this.d;
        this.d = i + 1;
        this.b[i] = b;
    }

    public final void n(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.d;
        int i4 = this.c;
        int i5 = i4 - i3;
        byte[] bArr2 = this.b;
        if (i5 >= i2) {
            System.arraycopy(bArr, i, bArr2, i3, i2);
            this.d += i2;
            return;
        }
        System.arraycopy(bArr, i, bArr2, i3, i5);
        int i6 = i + i5;
        int i7 = i2 - i5;
        this.d = i4;
        k();
        if (i7 > i4) {
            this.e.write(bArr, i6, i7);
        } else {
            System.arraycopy(bArr, i6, bArr2, 0, i7);
            this.d = i7;
        }
    }

    public final void o(int i, boolean z) throws IOException {
        l(11);
        c(i, 0);
        byte b = z ? (byte) 1 : (byte) 0;
        int i2 = this.d;
        this.d = i2 + 1;
        this.b[i2] = b;
    }

    public final void p(int i, f00 f00Var) throws IOException {
        B(i, 2);
        q(f00Var);
    }

    public final void q(f00 f00Var) throws IOException {
        D(f00Var.size());
        x(f00Var.o, f00Var.f(), f00Var.size());
    }

    public final void r(int i, int i2) throws IOException {
        l(14);
        c(i, 5);
        a(i2);
    }

    public final void s(int i) throws IOException {
        l(4);
        a(i);
    }

    public final void t(int i, long j) throws IOException {
        l(18);
        c(i, 1);
        b(j);
    }

    public final void u(long j) throws IOException {
        l(8);
        b(j);
    }

    public final void v(int i, int i2) throws IOException {
        l(20);
        c(i, 0);
        if (i2 >= 0) {
            d(i2);
        } else {
            e(i2);
        }
    }

    public final void w(int i) throws IOException {
        if (i >= 0) {
            D(i);
        } else {
            F(i);
        }
    }

    public final void x(byte[] bArr, int i, int i2) throws IOException {
        n(bArr, i, i2);
    }

    public final void y(int i, l1 l1Var, be3 be3Var) throws IOException {
        B(i, 2);
        D(l1Var.a(be3Var));
        be3Var.h(l1Var, this.a);
    }

    public final void z(int i, String str) throws IOException {
        B(i, 2);
        A(str);
    }
}
