package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wm4 extends xm4 {
    public final byte[] p;
    public final int q;
    public final int r;

    public wm4(byte[] bArr, int i, int i2) {
        zm4.m(i, i + i2, bArr.length);
        this.p = bArr;
        this.q = i;
        this.r = i2;
    }

    @Override // defpackage.zm4
    public final byte a(int i) {
        return this.p[this.q + i];
    }

    @Override // defpackage.zm4
    public final int c() {
        return this.r;
    }

    @Override // defpackage.zm4
    public final xm4 d(int i, int i2) {
        int iM = zm4.m(i, i2, this.r);
        if (iM == 0) {
            return zm4.o;
        }
        return new wm4(this.p, this.q + i, iM);
    }

    @Override // defpackage.zm4
    public final void e(int i, byte[] bArr) {
        System.arraycopy(this.p, this.q, bArr, 0, i);
    }

    @Override // defpackage.zm4
    public final void f(jn4 jn4Var) {
        jn4Var.c(this.p, this.q, this.r);
    }

    @Override // defpackage.zm4
    public final boolean g(zm4 zm4Var) {
        boolean z = zm4Var instanceof ym4;
        if (!z && !(zm4Var instanceof wm4)) {
            return zm4Var.g(this);
        }
        int iC = zm4Var.c();
        int i = this.r;
        if (i > iC) {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 18 + String.valueOf(i).length());
            sb.append("Length too large: ");
            sb.append(i);
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i > zm4Var.c()) {
            int iC2 = zm4Var.c();
            q73.g(String.valueOf(i).length() + 27 + String.valueOf(iC2).length(), "Ran off end of other: 0, ", i, ", ", iC2);
            return false;
        }
        byte[] bArr = this.p;
        int i2 = this.q;
        if (z) {
            return zm4.n(i2, 0, i, bArr, ((ym4) zm4Var).p);
        }
        if (!(zm4Var instanceof wm4)) {
            return zm4Var.d(0, i).equals(d(i2, i + i2));
        }
        wm4 wm4Var = (wm4) zm4Var;
        return zm4.n(i2, wm4Var.q, i, bArr, wm4Var.p);
    }

    @Override // defpackage.zm4
    public final int h(int i, int i2) {
        return bo4.a(this.p, i, this.q, i2);
    }
}
