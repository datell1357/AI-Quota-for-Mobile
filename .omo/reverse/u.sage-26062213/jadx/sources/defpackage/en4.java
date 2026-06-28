package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class en4 extends jn4 {
    public final byte[] c;
    public final int d;
    public int e;
    public final OutputStream f;

    public en4(OutputStream outputStream, int i) {
        if (outputStream == null) {
            q73.r("out");
            throw null;
        }
        this.f = outputStream;
        if (i < 0) {
            k21.f("bufferSize must be >= 0");
            throw null;
        }
        byte[] bArr = new byte[Math.max(i, 20)];
        this.c = bArr;
        this.d = bArr.length;
    }

    public final void A(int i) {
        if (this.d - this.e < i) {
            B();
        }
    }

    public final void B() {
        this.f.write(this.c, 0, this.e);
        this.e = 0;
    }

    public final void C(int i) {
        boolean z = jn4.b;
        byte[] bArr = this.c;
        if (z) {
            while (true) {
                int i2 = i & (-128);
                int i3 = this.e;
                if (i2 == 0) {
                    this.e = i3 + 1;
                    qp4.k(bArr, i3, (byte) i);
                    return;
                } else {
                    this.e = i3 + 1;
                    qp4.k(bArr, i3, (byte) (i | 128));
                    i >>>= 7;
                }
            }
        } else {
            while (true) {
                int i4 = i & (-128);
                int i5 = this.e;
                if (i4 == 0) {
                    this.e = i5 + 1;
                    bArr[i5] = (byte) i;
                    return;
                } else {
                    this.e = i5 + 1;
                    bArr[i5] = (byte) (i | 128);
                    i >>>= 7;
                }
            }
        }
    }

    @Override // defpackage.jn4
    public final void c(byte[] bArr, int i, int i2) throws IOException {
        z(bArr, i, i2);
    }

    @Override // defpackage.jn4
    public final void d(int i, int i2) {
        r((i << 3) | i2);
    }

    @Override // defpackage.jn4
    public final void e(int i, int i2) {
        A(20);
        C(i << 3);
        if (i2 >= 0) {
            C(i2);
        } else {
            w(i2);
        }
    }

    @Override // defpackage.jn4
    public final void f(int i, int i2) {
        A(20);
        C(i << 3);
        C(i2);
    }

    @Override // defpackage.jn4
    public final void g(int i, int i2) {
        A(14);
        C((i << 3) | 5);
        x(i2);
    }

    @Override // defpackage.jn4
    public final void h(int i, long j) {
        A(20);
        C(i << 3);
        w(j);
    }

    @Override // defpackage.jn4
    public final void i(int i, long j) {
        A(18);
        C((i << 3) | 1);
        y(j);
    }

    @Override // defpackage.jn4
    public final void j(int i, boolean z) {
        A(11);
        C(i << 3);
        int i2 = this.e;
        this.c[i2] = z ? (byte) 1 : (byte) 0;
        this.e = i2 + 1;
    }

    @Override // defpackage.jn4
    public final void k(int i, String str) throws IOException {
        r((i << 3) | 2);
        v(str);
    }

    @Override // defpackage.jn4
    public final void l(int i, zm4 zm4Var) {
        r((i << 3) | 2);
        m(zm4Var);
    }

    @Override // defpackage.jn4
    public final void m(zm4 zm4Var) {
        r(zm4Var.c());
        zm4Var.f(this);
    }

    @Override // defpackage.jn4
    public final void n(int i, byte[] bArr) throws IOException {
        r(i);
        z(bArr, 0, i);
    }

    @Override // defpackage.jn4
    public final void o(sm4 sm4Var) {
        rn4 rn4Var = (rn4) sm4Var;
        r(rn4Var.m());
        rn4Var.f(this);
    }

    @Override // defpackage.jn4
    public final void p(byte b) {
        if (this.e == this.d) {
            B();
        }
        int i = this.e;
        this.c[i] = b;
        this.e = i + 1;
    }

    @Override // defpackage.jn4
    public final void q(int i) {
        if (i >= 0) {
            r(i);
        } else {
            t(i);
        }
    }

    @Override // defpackage.jn4
    public final void r(int i) {
        A(5);
        C(i);
    }

    @Override // defpackage.jn4
    public final void s(int i) {
        A(4);
        x(i);
    }

    @Override // defpackage.jn4
    public final void t(long j) {
        A(10);
        w(j);
    }

    @Override // defpackage.jn4
    public final void u(long j) {
        A(8);
        y(j);
    }

    @Override // defpackage.jn4
    public final void v(String str) throws IOException {
        int length = str.length() * 3;
        int iA = jn4.a(length);
        int i = iA + length;
        int i2 = this.d;
        if (i > i2) {
            byte[] bArr = new byte[length];
            int iC = tp4.c(str, bArr, 0, length);
            r(iC);
            z(bArr, 0, iC);
            return;
        }
        if (i > i2 - this.e) {
            B();
        }
        int iA2 = jn4.a(str.length());
        int i3 = this.e;
        byte[] bArr2 = this.c;
        try {
            if (iA2 == iA) {
                int i4 = i3 + iA2;
                this.e = i4;
                int iC2 = tp4.c(str, bArr2, i4, i2 - i4);
                this.e = i3;
                C((iC2 - i3) - iA2);
                this.e = iC2;
            } else {
                int iB = tp4.b(str);
                C(iB);
                this.e = tp4.c(str, bArr2, this.e, iB);
            }
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new c70(e);
        }
    }

    public final void w(long j) {
        boolean z = jn4.b;
        byte[] bArr = this.c;
        if (z) {
            while (true) {
                long j2 = j & (-128);
                int i = (int) j;
                int i2 = this.e;
                if (j2 == 0) {
                    this.e = i2 + 1;
                    qp4.k(bArr, i2, (byte) i);
                    return;
                } else {
                    this.e = i2 + 1;
                    qp4.k(bArr, i2, (byte) (i | 128));
                    j >>>= 7;
                }
            }
        } else {
            while (true) {
                long j3 = j & (-128);
                int i3 = (int) j;
                int i4 = this.e;
                if (j3 == 0) {
                    this.e = i4 + 1;
                    bArr[i4] = (byte) i3;
                    return;
                } else {
                    this.e = i4 + 1;
                    bArr[i4] = (byte) (i3 | 128);
                    j >>>= 7;
                }
            }
        }
    }

    public final void x(int i) {
        int i2 = this.e;
        byte[] bArr = this.c;
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2 + 2] = (byte) (i >> 16);
        bArr[i2 + 3] = (byte) (i >> 24);
        this.e = i2 + 4;
    }

    public final void y(long j) {
        int i = this.e;
        byte[] bArr = this.c;
        bArr[i] = (byte) j;
        bArr[i + 1] = (byte) (j >> 8);
        bArr[i + 2] = (byte) (j >> 16);
        bArr[i + 3] = (byte) (j >> 24);
        bArr[i + 4] = (byte) (j >> 32);
        bArr[i + 5] = (byte) (j >> 40);
        bArr[i + 6] = (byte) (j >> 48);
        bArr[i + 7] = (byte) (j >> 56);
        this.e = i + 8;
    }

    public final void z(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.e;
        int i4 = this.d;
        int i5 = i4 - i3;
        byte[] bArr2 = this.c;
        if (i5 >= i2) {
            System.arraycopy(bArr, i, bArr2, i3, i2);
            this.e += i2;
            return;
        }
        System.arraycopy(bArr, i, bArr2, i3, i5);
        int i6 = i + i5;
        this.e = i4;
        B();
        int i7 = i2 - i5;
        if (i7 > i4) {
            this.f.write(bArr, i6, i7);
        } else {
            System.arraycopy(bArr, i6, bArr2, 0, i7);
            this.e = i7;
        }
    }
}
