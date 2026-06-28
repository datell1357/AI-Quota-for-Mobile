package defpackage;

import java.math.RoundingMode;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class kr extends lr {
    public final fr c;
    public final Character d;

    /* JADX WARN: Removed duplicated region for block: B:9:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public kr(defpackage.fr r3, java.lang.Character r4) {
        /*
            r2 = this;
            r2.<init>()
            r3.getClass()
            r2.c = r3
            if (r4 == 0) goto L1a
            char r0 = r4.charValue()
            byte[] r3 = r3.g
            int r1 = r3.length
            if (r0 >= r1) goto L1a
            r3 = r3[r0]
            r0 = -1
            if (r3 == r0) goto L1a
            r3 = 0
            goto L1b
        L1a:
            r3 = 1
        L1b:
            java.lang.String r0 = "Padding character %s was already in alphabet"
            defpackage.n44.T(r0, r4, r3)
            r2.d = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.kr.<init>(fr, java.lang.Character):void");
    }

    @Override // defpackage.lr
    public int b(byte[] bArr, CharSequence charSequence) throws ir {
        CharSequence charSequenceG = g(charSequence);
        int length = charSequenceG.length();
        fr frVar = this.c;
        boolean[] zArr = frVar.h;
        int i = frVar.d;
        int i2 = frVar.e;
        if (!zArr[length % i2]) {
            throw new ir("Invalid input length " + charSequenceG.length());
        }
        int i3 = 0;
        for (int i4 = 0; i4 < charSequenceG.length(); i4 += i2) {
            long jA = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                jA <<= i;
                if (i4 + i6 < charSequenceG.length()) {
                    jA |= (long) frVar.a(charSequenceG.charAt(i5 + i4));
                    i5++;
                }
            }
            int i7 = frVar.f;
            int i8 = (i7 * 8) - (i5 * i);
            int i9 = (i7 - 1) * 8;
            while (i9 >= i8) {
                bArr[i3] = (byte) ((jA >>> i9) & 255);
                i9 -= 8;
                i3++;
            }
        }
        return i3;
    }

    @Override // defpackage.lr
    public void d(Appendable appendable, byte[] bArr, int i) {
        int i2 = 0;
        n44.Z(0, i, bArr.length);
        while (i2 < i) {
            fr frVar = this.c;
            h(appendable, bArr, i2, Math.min(frVar.f, i - i2));
            i2 += frVar.f;
        }
    }

    @Override // defpackage.lr
    public final int e(int i) {
        return (int) (((((long) this.c.d) * ((long) i)) + 7) / 8);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof kr) {
            kr krVar = (kr) obj;
            if (this.c.equals(krVar.c) && Objects.equals(this.d, krVar.d)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.lr
    public final int f(int i) {
        fr frVar = this.c;
        return w80.s(i, frVar.f, RoundingMode.CEILING) * frVar.e;
    }

    @Override // defpackage.lr
    public final CharSequence g(CharSequence charSequence) {
        charSequence.getClass();
        Character ch = this.d;
        if (ch == null) {
            return charSequence;
        }
        char cCharValue = ch.charValue();
        int length = charSequence.length() - 1;
        while (length >= 0 && charSequence.charAt(length) == cCharValue) {
            length--;
        }
        return charSequence.subSequence(0, length + 1);
    }

    public final void h(Appendable appendable, byte[] bArr, int i, int i2) {
        n44.Z(i, i + i2, bArr.length);
        fr frVar = this.c;
        int i3 = frVar.f;
        int i4 = frVar.d;
        int i5 = 0;
        n44.U(i2 <= i3);
        long j = 0;
        for (int i6 = 0; i6 < i2; i6++) {
            j = (j | ((long) (bArr[i + i6] & 255))) << 8;
        }
        int i7 = ((i2 + 1) * 8) - i4;
        while (i5 < i2 * 8) {
            appendable.append(frVar.b[((int) (j >>> (i7 - i5))) & frVar.c]);
            i5 += i4;
        }
        Character ch = this.d;
        if (ch != null) {
            while (i5 < frVar.f * 8) {
                appendable.append(ch.charValue());
                i5 += i4;
            }
        }
    }

    public final int hashCode() {
        return Objects.hashCode(this.d) ^ this.c.hashCode();
    }

    public lr i(fr frVar) {
        return new kr(frVar, (Character) null);
    }

    public final lr j() {
        char cCharAt = "\n".charAt(0);
        byte[] bArr = this.c.g;
        n44.T("Separator (%s) cannot contain alphabet characters", "\n", !(cCharAt < bArr.length && bArr[cCharAt] != -1));
        Character ch = this.d;
        if (ch != null) {
            n44.T("Separator (%s) cannot contain padding character", "\n", "\n".indexOf(ch.charValue()) < 0);
        }
        return new jr(this);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        fr frVar = this.c;
        sb.append(frVar);
        if (8 % frVar.d != 0) {
            Character ch = this.d;
            if (ch == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(ch);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    public kr(String str, String str2) {
        this(new fr(str, str2.toCharArray()), (Character) '=');
    }
}
