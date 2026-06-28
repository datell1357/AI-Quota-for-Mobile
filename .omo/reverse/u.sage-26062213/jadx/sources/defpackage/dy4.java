package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dy4 extends iy4 {
    public final int q;

    public dy4(int i, byte[] bArr) {
        super(bArr);
        iy4.e(0, i, bArr.length);
        this.q = i;
    }

    @Override // defpackage.iy4
    public final byte a(int i) {
        int i2 = this.q;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.o[i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(di0.q(i, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(di0.p(i, i2, "Index > length: ", ", "));
    }

    @Override // defpackage.iy4
    public final byte c(int i) {
        return this.o[i];
    }

    @Override // defpackage.iy4
    public final int d() {
        return this.q;
    }
}
