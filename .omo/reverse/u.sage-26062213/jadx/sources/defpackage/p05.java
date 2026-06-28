package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p05 extends w05 {
    public final char[] d;

    public p05(m05 m05Var) {
        super(m05Var, (Character) null);
        this.d = new char[512];
        char[] cArr = m05Var.b;
        if (cArr.length != 16) {
            q73.d();
            throw null;
        }
        for (int i = 0; i < 256; i++) {
            char[] cArr2 = this.d;
            cArr2[i] = cArr[i >>> 4];
            cArr2[i | 256] = cArr[i & 15];
        }
    }

    @Override // defpackage.w05
    public final void a(StringBuilder sb, byte[] bArr, int i) {
        hu4.d(0, i, bArr.length);
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = bArr[i2] & 255;
            char[] cArr = this.d;
            sb.append(cArr[i3]);
            sb.append(cArr[i3 | 256]);
        }
    }
}
