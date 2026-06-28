package defpackage;

import java.io.IOException;
import java.math.RoundingMode;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class w05 {
    public static final p05 c;
    public final m05 a;
    public final Character b;

    static {
        new t05("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
        new t05("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
        new w05("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new w05("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        c = new p05(new m05("base16()", new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'}));
    }

    public w05(m05 m05Var, Character ch) {
        this.a = m05Var;
        if (ch != null) {
            byte[] bArr = m05Var.g;
            if (bArr.length > 61 && bArr[61] != -1) {
                k21.f(lu4.b("Padding character %s was already in alphabet", ch));
                throw null;
            }
        }
        this.b = ch;
    }

    public void a(StringBuilder sb, byte[] bArr, int i) {
        int i2 = 0;
        hu4.d(0, i, bArr.length);
        while (i2 < i) {
            m05 m05Var = this.a;
            b(sb, bArr, i2, Math.min(m05Var.f, i - i2));
            i2 += m05Var.f;
        }
    }

    public final void b(StringBuilder sb, byte[] bArr, int i, int i2) {
        hu4.d(i, i + i2, bArr.length);
        m05 m05Var = this.a;
        int i3 = m05Var.f;
        int i4 = m05Var.d;
        if (i2 > i3) {
            q73.d();
            return;
        }
        int i5 = 0;
        long j = 0;
        for (int i6 = 0; i6 < i2; i6++) {
            j = (j | ((long) (bArr[i + i6] & 255))) << 8;
        }
        int i7 = (i2 + 1) * 8;
        while (i5 < i2 * 8) {
            sb.append(m05Var.b[((int) (j >>> ((i7 - i4) - i5))) & m05Var.c]);
            i5 += i4;
        }
        if (this.b != null) {
            while (i5 < m05Var.f * 8) {
                sb.append('=');
                i5 += i4;
            }
        }
    }

    public final String c(int i, byte[] bArr) {
        hu4.d(0, i, bArr.length);
        m05 m05Var = this.a;
        int i2 = m05Var.f;
        RoundingMode roundingMode = RoundingMode.CEILING;
        StringBuilder sb = new StringBuilder(m05Var.e * rg4.b(i, i2));
        try {
            a(sb, bArr, i);
            return sb.toString();
        } catch (IOException e) {
            k21.c(e);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof w05) {
            w05 w05Var = (w05) obj;
            if (this.a.equals(w05Var.a) && Objects.equals(this.b, w05Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.b) ^ this.a.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        m05 m05Var = this.a;
        sb.append(m05Var);
        if (8 % m05Var.d != 0) {
            Character ch = this.b;
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

    public w05(String str, String str2) {
        this(new m05(str, str2.toCharArray()), (Character) '=');
    }
}
