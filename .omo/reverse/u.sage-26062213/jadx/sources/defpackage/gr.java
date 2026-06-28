package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gr extends kr {
    public final char[] e;

    public gr(fr frVar) {
        super(frVar, (Character) null);
        this.e = new char[512];
        char[] cArr = frVar.b;
        n44.U(cArr.length == 16);
        for (int i = 0; i < 256; i++) {
            char[] cArr2 = this.e;
            cArr2[i] = cArr[i >>> 4];
            cArr2[i | 256] = cArr[i & 15];
        }
    }

    @Override // defpackage.kr, defpackage.lr
    public final int b(byte[] bArr, CharSequence charSequence) throws ir {
        if (charSequence.length() % 2 == 1) {
            throw new ir("Invalid input length " + charSequence.length());
        }
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            char cCharAt = charSequence.charAt(i);
            fr frVar = this.c;
            bArr[i2] = (byte) ((frVar.a(cCharAt) << 4) | frVar.a(charSequence.charAt(i + 1)));
            i += 2;
            i2++;
        }
        return i2;
    }

    @Override // defpackage.kr, defpackage.lr
    public final void d(Appendable appendable, byte[] bArr, int i) throws IOException {
        n44.Z(0, i, bArr.length);
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = bArr[i2] & 255;
            char[] cArr = this.e;
            appendable.append(cArr[i3]);
            appendable.append(cArr[i3 | 256]);
        }
    }

    @Override // defpackage.kr
    public final lr i(fr frVar) {
        return new gr(frVar);
    }
}
