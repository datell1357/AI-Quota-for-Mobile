package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t05 extends w05 {
    /* JADX WARN: Illegal instructions before constructor call */
    public t05(String str, String str2) {
        char[] charArray = str2.toCharArray();
        super(new m05(str, charArray), (Character) '=');
        if (charArray.length == 64) {
            return;
        }
        q73.d();
        throw null;
    }

    @Override // defpackage.w05
    public final void a(StringBuilder sb, byte[] bArr, int i) {
        int i2 = 0;
        hu4.d(0, i, bArr.length);
        for (int i3 = i; i3 >= 3; i3 -= 3) {
            int i4 = ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2] & 255) << 16) | (bArr[i2 + 2] & 255);
            m05 m05Var = this.a;
            char[] cArr = m05Var.b;
            char[] cArr2 = m05Var.b;
            sb.append(cArr[i4 >>> 18]);
            sb.append(cArr2[(i4 >>> 12) & 63]);
            sb.append(cArr2[(i4 >>> 6) & 63]);
            sb.append(cArr2[i4 & 63]);
            i2 += 3;
        }
        if (i2 < i) {
            b(sb, bArr, i2, i - i2);
        }
    }
}
