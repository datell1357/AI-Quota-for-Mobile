package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dn4 extends jn4 {
    public final byte[] c;
    public final int d;
    public int e;

    public dn4(int i, byte[] bArr) {
        int length = bArr.length;
        if (((length - i) | i) < 0) {
            Locale locale = Locale.US;
            k21.f(di0.p(length, i, "Array range is invalid. Buffer.length=", ", offset=0, length="));
            throw null;
        }
        this.c = bArr;
        this.e = 0;
        this.d = i;
    }

    @Override // defpackage.jn4
    public final void c(byte[] bArr, int i, int i2) throws c70 {
        w(bArr, i, i2);
    }

    @Override // defpackage.jn4
    public final void d(int i, int i2) throws c70 {
        r((i << 3) | i2);
    }

    @Override // defpackage.jn4
    public final void e(int i, int i2) throws c70 {
        r(i << 3);
        q(i2);
    }

    @Override // defpackage.jn4
    public final void f(int i, int i2) throws c70 {
        r(i << 3);
        r(i2);
    }

    @Override // defpackage.jn4
    public final void g(int i, int i2) throws c70 {
        r((i << 3) | 5);
        s(i2);
    }

    @Override // defpackage.jn4
    public final void h(int i, long j) throws c70 {
        r(i << 3);
        t(j);
    }

    @Override // defpackage.jn4
    public final void i(int i, long j) throws c70 {
        r((i << 3) | 1);
        u(j);
    }

    @Override // defpackage.jn4
    public final void j(int i, boolean z) throws c70 {
        r(i << 3);
        p(z ? (byte) 1 : (byte) 0);
    }

    @Override // defpackage.jn4
    public final void k(int i, String str) throws c70 {
        r((i << 3) | 2);
        v(str);
    }

    @Override // defpackage.jn4
    public final void l(int i, zm4 zm4Var) throws c70 {
        r((i << 3) | 2);
        m(zm4Var);
    }

    @Override // defpackage.jn4
    public final void m(zm4 zm4Var) throws c70 {
        r(zm4Var.c());
        zm4Var.f(this);
    }

    @Override // defpackage.jn4
    public final void n(int i, byte[] bArr) throws c70 {
        r(i);
        w(bArr, 0, i);
    }

    @Override // defpackage.jn4
    public final void o(sm4 sm4Var) throws c70 {
        rn4 rn4Var = (rn4) sm4Var;
        r(rn4Var.m());
        rn4Var.f(this);
    }

    @Override // defpackage.jn4
    public final void p(byte b) throws c70 {
        int i = this.e;
        try {
            int i2 = i + 1;
            try {
                this.c[i] = b;
                this.e = i2;
            } catch (IndexOutOfBoundsException e) {
                e = e;
                i = i2;
                throw new c70(i, this.d, 1, e);
            }
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
        }
    }

    @Override // defpackage.jn4
    public final void q(int i) throws c70 {
        if (i >= 0) {
            r(i);
        } else {
            t(i);
        }
    }

    @Override // defpackage.jn4
    public final void r(int i) throws c70 {
        int i2;
        int i3 = this.e;
        while (true) {
            int i4 = i & (-128);
            byte[] bArr = this.c;
            if (i4 == 0) {
                i2 = i3 + 1;
                bArr[i3] = (byte) i;
                this.e = i2;
                return;
            } else {
                i2 = i3 + 1;
                try {
                    bArr[i3] = (byte) (i | 128);
                    i >>>= 7;
                    i3 = i2;
                } catch (IndexOutOfBoundsException e) {
                    throw new c70(i2, this.d, 1, e);
                }
            }
            throw new c70(i2, this.d, 1, e);
        }
    }

    @Override // defpackage.jn4
    public final void s(int i) throws c70 {
        int i2 = this.e;
        try {
            byte[] bArr = this.c;
            bArr[i2] = (byte) i;
            bArr[i2 + 1] = (byte) (i >> 8);
            bArr[i2 + 2] = (byte) (i >> 16);
            bArr[i2 + 3] = (byte) (i >> 24);
            this.e = i2 + 4;
        } catch (IndexOutOfBoundsException e) {
            throw new c70(i2, this.d, 4, e);
        }
    }

    @Override // defpackage.jn4
    public final void t(long j) throws c70 {
        int i;
        int i2 = this.e;
        byte[] bArr = this.c;
        int i3 = this.d;
        if (!jn4.b || i3 - i2 < 10) {
            while ((j & (-128)) != 0) {
                int i4 = i2 + 1;
                try {
                    bArr[i2] = (byte) (((int) j) | 128);
                    j >>>= 7;
                    i2 = i4;
                } catch (IndexOutOfBoundsException e) {
                    e = e;
                    i = i4;
                    throw new c70(i, i3, 1, e);
                }
            }
            i = i2 + 1;
            try {
                bArr[i2] = (byte) j;
            } catch (IndexOutOfBoundsException e2) {
                e = e2;
                throw new c70(i, i3, 1, e);
            }
        } else {
            while ((j & (-128)) != 0) {
                qp4.k(bArr, i2, (byte) (((int) j) | 128));
                j >>>= 7;
                i2++;
            }
            i = i2 + 1;
            qp4.k(bArr, i2, (byte) j);
        }
        this.e = i;
    }

    @Override // defpackage.jn4
    public final void u(long j) throws c70 {
        int i = this.e;
        try {
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
        } catch (IndexOutOfBoundsException e) {
            throw new c70(i, this.d, 8, e);
        }
    }

    @Override // defpackage.jn4
    public final void v(String str) throws c70 {
        int i = this.e;
        try {
            int iA = jn4.a(str.length() * 3);
            int iA2 = jn4.a(str.length());
            byte[] bArr = this.c;
            if (iA2 != iA) {
                r(tp4.b(str));
                int i2 = this.e;
                this.e = tp4.c(str, bArr, i2, bArr.length - i2);
            } else {
                int i3 = i + iA2;
                this.e = i3;
                int iC = tp4.c(str, bArr, i3, bArr.length - i3);
                this.e = i;
                r((iC - i) - iA2);
                this.e = iC;
            }
        } catch (IndexOutOfBoundsException e) {
            throw new c70(e);
        }
    }

    public final void w(byte[] bArr, int i, int i2) throws c70 {
        try {
            System.arraycopy(bArr, i, this.c, this.e, i2);
            this.e += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new c70(this.e, this.d, i2, e);
        }
    }

    public final int x() {
        return this.d - this.e;
    }
}
