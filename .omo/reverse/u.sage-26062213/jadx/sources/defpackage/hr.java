package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hr extends kr {
    public hr(String str, String str2) {
        this(new fr(str, str2.toCharArray()), (Character) '=');
    }

    @Override // defpackage.kr, defpackage.lr
    public final int b(byte[] bArr, CharSequence charSequence) throws ir {
        CharSequence charSequenceG = g(charSequence);
        int length = charSequenceG.length();
        fr frVar = this.c;
        if (!frVar.h[length % frVar.e]) {
            throw new ir("Invalid input length " + charSequenceG.length());
        }
        int i = 0;
        int i2 = 0;
        while (i < charSequenceG.length()) {
            int i3 = i + 2;
            int iA = (frVar.a(charSequenceG.charAt(i + 1)) << 12) | (frVar.a(charSequenceG.charAt(i)) << 18);
            int i4 = i2 + 1;
            bArr[i2] = (byte) (iA >>> 16);
            if (i3 < charSequenceG.length()) {
                int i5 = i + 3;
                int iA2 = iA | (frVar.a(charSequenceG.charAt(i3)) << 6);
                int i6 = i2 + 2;
                bArr[i4] = (byte) ((iA2 >>> 8) & 255);
                if (i5 < charSequenceG.length()) {
                    i += 4;
                    i2 += 3;
                    bArr[i6] = (byte) ((iA2 | frVar.a(charSequenceG.charAt(i5))) & 255);
                } else {
                    i2 = i6;
                    i = i5;
                }
            } else {
                i2 = i4;
                i = i3;
            }
        }
        return i2;
    }

    @Override // defpackage.kr, defpackage.lr
    public final void d(Appendable appendable, byte[] bArr, int i) throws IOException {
        int i2 = 0;
        n44.Z(0, i, bArr.length);
        for (int i3 = i; i3 >= 3; i3 -= 3) {
            int i4 = i2 + 2;
            int i5 = ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2] & 255) << 16);
            i2 += 3;
            int i6 = i5 | (bArr[i4] & 255);
            fr frVar = this.c;
            char[] cArr = frVar.b;
            char[] cArr2 = frVar.b;
            appendable.append(cArr[i6 >>> 18]);
            appendable.append(cArr2[(i6 >>> 12) & 63]);
            appendable.append(cArr2[(i6 >>> 6) & 63]);
            appendable.append(cArr2[i6 & 63]);
        }
        if (i2 < i) {
            h(appendable, bArr, i2, i - i2);
        }
    }

    @Override // defpackage.kr
    public final lr i(fr frVar) {
        return new hr(frVar, (Character) null);
    }

    public hr(fr frVar, Character ch) {
        super(frVar, ch);
        n44.U(frVar.b.length == 64);
    }
}
