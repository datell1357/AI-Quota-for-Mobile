package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yj3 implements xj3, ty {
    public final qz0 n;
    public final byte[] o;
    public final uz p;
    public final int q;
    public final nc2 r;
    public InputStream s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f423u;

    public yj3(qz0 qz0Var, nc2 nc2Var) {
        w80.N(8192, "Buffer size");
        this.n = qz0Var;
        this.o = new byte[8192];
        this.t = 0;
        this.f423u = 0;
        this.q = 512;
        this.r = nc2Var;
        this.p = new uz(8192);
    }

    public final int a() throws IOException {
        int i = this.t;
        byte[] bArr = this.o;
        if (i > 0) {
            int i2 = this.f423u - i;
            if (i2 > 0) {
                System.arraycopy(bArr, i, bArr, 0, i2);
            }
            this.t = 0;
            this.f423u = i2;
        }
        int i3 = this.f423u;
        int length = bArr.length - i3;
        mt1.O(this.s, "Input stream");
        int i4 = this.s.read(bArr, i3, length);
        if (i4 == -1) {
            return -1;
        }
        this.f423u = i3 + i4;
        this.n.getClass();
        return i4;
    }

    @Override // defpackage.xj3
    public final qz0 b() {
        return this.n;
    }

    public final boolean c() {
        return this.t < this.f423u;
    }

    @Override // defpackage.xj3
    public final int d(b40 b40Var) throws IOException {
        int i;
        byte[] bArr;
        w80.L(b40Var, "Char array buffer");
        int i2 = this.r.n;
        boolean z = true;
        int iA = 0;
        while (true) {
            uz uzVar = this.p;
            if (!z) {
                if (iA == -1 && uzVar.o == 0) {
                    return -1;
                }
                int i3 = uzVar.o;
                if (i3 > 0) {
                    byte[] bArr2 = uzVar.n;
                    if (bArr2[i3 - 1] == 10) {
                        i3--;
                    }
                    if (i3 > 0 && bArr2[i3 - 1] == 13) {
                        i3--;
                    }
                }
                b40Var.c(uzVar.n, 0, i3);
                uzVar.o = 0;
                return i3;
            }
            int i4 = this.t;
            while (true) {
                i = this.f423u;
                bArr = this.o;
                if (i4 >= i) {
                    i4 = -1;
                    break;
                }
                if (bArr[i4] == 10) {
                    break;
                }
                i4++;
            }
            if (i2 > 0) {
                int i5 = uzVar.o;
                if (i4 >= 0) {
                    i = i4;
                }
                if ((i5 + i) - this.t >= i2) {
                    throw new mc2("Maximum line length limit exceeded");
                }
            }
            if (i4 != -1) {
                int i6 = uzVar.o;
                int i7 = this.t;
                if (i6 == 0) {
                    this.t = i4 + 1;
                    if (i4 > i7 && bArr[i4 - 1] == 13) {
                        i4--;
                    }
                    int i8 = i4 - i7;
                    b40Var.c(bArr, i7, i8);
                    return i8;
                }
                int i9 = i4 + 1;
                uzVar.b(bArr, i7, i9 - i7);
                this.t = i9;
            } else {
                if (c()) {
                    int i10 = this.f423u;
                    int i11 = this.t;
                    uzVar.b(bArr, i11, i10 - i11);
                    this.t = this.f423u;
                }
                iA = a();
                if (iA == -1) {
                }
            }
            z = false;
        }
    }

    @Override // defpackage.xj3
    public final boolean h(int i) {
        return c();
    }

    @Override // defpackage.ty
    public final int length() {
        return this.f423u - this.t;
    }

    @Override // defpackage.xj3
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (bArr == null) {
            return 0;
        }
        boolean zC = c();
        byte[] bArr2 = this.o;
        if (zC) {
            int iMin = Math.min(i2, this.f423u - this.t);
            System.arraycopy(bArr2, this.t, bArr, i, iMin);
            this.t += iMin;
            return iMin;
        }
        if (i2 > this.q) {
            mt1.O(this.s, "Input stream");
            int i3 = this.s.read(bArr, i, i2);
            if (i3 > 0) {
                this.n.getClass();
            }
            return i3;
        }
        while (!c()) {
            if (a() == -1) {
                return -1;
            }
        }
        int iMin2 = Math.min(i2, this.f423u - this.t);
        System.arraycopy(bArr2, this.t, bArr, i, iMin2);
        this.t += iMin2;
        return iMin2;
    }

    @Override // defpackage.xj3
    public final int read() {
        while (!c()) {
            if (a() == -1) {
                return -1;
            }
        }
        int i = this.t;
        this.t = i + 1;
        return this.o[i] & 255;
    }
}
