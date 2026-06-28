package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e00 extends f00 {
    public final int r;
    public final int s;

    public e00(byte[] bArr, int i, int i2) {
        super(bArr);
        f00.c(i, i + i2, bArr.length);
        this.r = i;
        this.s = i2;
    }

    @Override // defpackage.f00
    public final byte a(int i) {
        int i2 = this.s;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.o[this.r + i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(di0.q(i, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(di0.p(i, i2, "Index > length: ", ", "));
    }

    @Override // defpackage.f00
    public final void e(int i, byte[] bArr) {
        System.arraycopy(this.o, this.r, bArr, 0, i);
    }

    @Override // defpackage.f00
    public final int f() {
        return this.r;
    }

    @Override // defpackage.f00
    public final byte g(int i) {
        return this.o[this.r + i];
    }

    @Override // defpackage.f00
    public final int size() {
        return this.s;
    }
}
