package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uz implements Serializable {
    public byte[] n;
    public int o;

    public uz(int i) {
        w80.J(i, "Buffer capacity");
        this.n = new byte[i];
    }

    public final void a(b40 b40Var, int i, int i2) {
        char[] cArr;
        int i3;
        if (b40Var == null || (cArr = b40Var.n) == null) {
            return;
        }
        if (i < 0 || i > cArr.length || i2 < 0 || (i3 = i + i2) < 0 || i3 > cArr.length) {
            k21.k(xw1.v("off: ", i, " len: ", i2, " b.length: "), cArr.length);
            return;
        }
        if (i2 == 0) {
            return;
        }
        int i4 = this.o;
        int i5 = i2 + i4;
        if (i5 > this.n.length) {
            c(i5);
        }
        while (i4 < i5) {
            char c = cArr[i];
            if ((c < ' ' || c > '~') && ((c < 160 || c > 255) && c != '\t')) {
                this.n[i4] = 63;
            } else {
                this.n[i4] = (byte) c;
            }
            i++;
            i4++;
        }
        this.o = i5;
    }

    public final void b(byte[] bArr, int i, int i2) {
        int i3;
        if (bArr == null) {
            return;
        }
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            k21.k(xw1.v("off: ", i, " len: ", i2, " b.length: "), bArr.length);
            return;
        }
        if (i2 == 0) {
            return;
        }
        int i4 = this.o + i2;
        if (i4 > this.n.length) {
            c(i4);
        }
        System.arraycopy(bArr, i, this.n, this.o, i2);
        this.o = i4;
    }

    public final void c(int i) {
        byte[] bArr = new byte[Math.max(this.n.length << 1, i)];
        System.arraycopy(this.n, 0, bArr, 0, this.o);
        this.n = bArr;
    }
}
