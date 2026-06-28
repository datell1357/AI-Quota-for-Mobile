package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w15 extends b25 {
    public final int q;
    public final int r;

    public w15(byte[] bArr, int i, int i2) {
        super(bArr);
        b25.g(i, i + i2, bArr.length);
        this.q = i;
        this.r = i2;
    }

    @Override // defpackage.b25
    public final byte a(int i) {
        int i2 = this.r;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.o[this.q + i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(di0.q(i, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(di0.p(i, i2, "Index > length: ", ", "));
    }

    @Override // defpackage.b25
    public final byte c(int i) {
        return this.o[this.q + i];
    }

    @Override // defpackage.b25
    public final int d() {
        return this.q;
    }

    @Override // defpackage.b25
    public final int e() {
        return this.r;
    }

    @Override // defpackage.b25
    public final void f(int i, byte[] bArr) {
        System.arraycopy(this.o, this.q, bArr, 0, i);
    }
}
