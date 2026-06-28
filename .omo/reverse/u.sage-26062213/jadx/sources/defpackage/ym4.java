package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ym4 extends xm4 {
    public final byte[] p;

    public ym4(byte[] bArr) {
        bArr.getClass();
        this.p = bArr;
    }

    @Override // defpackage.zm4
    public final byte a(int i) {
        return this.p[i];
    }

    @Override // defpackage.zm4
    public final int c() {
        return this.p.length;
    }

    @Override // defpackage.zm4
    public final xm4 d(int i, int i2) {
        byte[] bArr = this.p;
        int iM = zm4.m(0, i2, bArr.length);
        return iM == 0 ? zm4.o : new wm4(bArr, 0, iM);
    }

    @Override // defpackage.zm4
    public final void e(int i, byte[] bArr) {
        System.arraycopy(this.p, 0, bArr, 0, i);
    }

    @Override // defpackage.zm4
    public final void f(jn4 jn4Var) {
        byte[] bArr = this.p;
        jn4Var.c(bArr, 0, bArr.length);
    }

    @Override // defpackage.zm4
    public final boolean g(zm4 zm4Var) {
        boolean z = zm4Var instanceof ym4;
        byte[] bArr = this.p;
        if (z) {
            return Arrays.equals(bArr, ((ym4) zm4Var).p);
        }
        boolean z2 = zm4Var instanceof wm4;
        if (!z2) {
            return zm4Var.g(this);
        }
        wm4 wm4Var = (wm4) zm4Var;
        int i = wm4Var.r;
        int length = bArr.length;
        if (length > i) {
            StringBuilder sb = new StringBuilder(String.valueOf(length).length() + 18 + String.valueOf(length).length());
            sb.append("Length too large: ");
            sb.append(length);
            sb.append(length);
            throw new IllegalArgumentException(sb.toString());
        }
        if (length > i) {
            q73.g(String.valueOf(length).length() + 27 + String.valueOf(i).length(), "Ran off end of other: 0, ", length, ", ", i);
            return false;
        }
        if (z) {
            return zm4.n(0, 0, length, bArr, ((ym4) zm4Var).p);
        }
        if (!z2) {
            return zm4Var.d(0, length).equals(d(0, length));
        }
        return zm4.n(0, wm4Var.q, length, bArr, wm4Var.p);
    }

    @Override // defpackage.zm4
    public final int h(int i, int i2) {
        return bo4.a(this.p, i, 0, i2);
    }
}
