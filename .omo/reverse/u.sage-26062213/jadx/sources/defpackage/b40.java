package defpackage;

import java.io.Serializable;
import java.nio.CharBuffer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b40 implements CharSequence, Serializable {
    public char[] n;
    public int o;

    public b40(int i) {
        w80.J(i, "Buffer capacity");
        this.n = new char[i];
    }

    public final void a(char c) {
        int i = this.o + 1;
        if (i > this.n.length) {
            f(i);
        }
        this.n[this.o] = c;
        this.o = i;
    }

    public final void b(String str) {
        if (str == null) {
            str = "null";
        }
        int length = str.length();
        int i = this.o + length;
        if (i > this.n.length) {
            f(i);
        }
        str.getChars(0, length, this.n, this.o);
        this.o = i;
    }

    public final void c(byte[] bArr, int i, int i2) {
        int i3;
        if (bArr == null) {
            return;
        }
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            k21.k(xw1.v("off: ", i, " len: ", i2, " b.length: "), bArr.length);
            return;
        }
        if (i2 == 0) {
            return;
        }
        int i4 = this.o;
        int i5 = i2 + i4;
        if (i5 > this.n.length) {
            f(i5);
        }
        while (i4 < i5) {
            this.n[i4] = (char) (bArr[i] & 255);
            i++;
            i4++;
        }
        this.o = i5;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.n[i];
    }

    public final void d(char[] cArr, int i, int i2) {
        int i3;
        if (cArr == null) {
            return;
        }
        if (i < 0 || i > cArr.length || i2 < 0 || (i3 = i + i2) < 0 || i3 > cArr.length) {
            k21.k(xw1.v("off: ", i, " len: ", i2, " b.length: "), cArr.length);
            return;
        }
        if (i2 == 0) {
            return;
        }
        int i4 = this.o + i2;
        if (i4 > this.n.length) {
            f(i4);
        }
        System.arraycopy(cArr, i, this.n, this.o, i2);
        this.o = i4;
    }

    public final void e(int i) {
        if (i <= 0) {
            return;
        }
        int length = this.n.length;
        int i2 = this.o;
        if (i > length - i2) {
            f(i2 + i);
        }
    }

    public final void f(int i) {
        char[] cArr = new char[Math.max(this.n.length << 1, i)];
        System.arraycopy(this.n, 0, cArr, 0, this.o);
        this.n = cArr;
    }

    public final int g(int i, int i2, int i3) {
        if (i2 < 0) {
            i2 = 0;
        }
        int i4 = this.o;
        if (i3 > i4) {
            i3 = i4;
        }
        if (i2 > i3) {
            return -1;
        }
        while (i2 < i3) {
            if (this.n[i2] == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public final String h(int i, int i2) {
        if (i < 0) {
            mk0.h(di0.q(i, "Negative beginIndex: "));
            return null;
        }
        if (i2 > this.o) {
            k21.k(xw1.u("endIndex: ", i2, " > length: "), this.o);
            return null;
        }
        if (i <= i2) {
            return new String(this.n, i, i2 - i);
        }
        mk0.h(di0.p(i, i2, "beginIndex: ", " > endIndex: "));
        return null;
    }

    public final String i(int i, int i2) {
        if (i < 0) {
            mk0.h(di0.q(i, "Negative beginIndex: "));
            return null;
        }
        if (i2 > this.o) {
            k21.k(xw1.u("endIndex: ", i2, " > length: "), this.o);
            return null;
        }
        if (i > i2) {
            mk0.h(di0.p(i, i2, "beginIndex: ", " > endIndex: "));
            return null;
        }
        while (i < i2 && vi1.a(this.n[i])) {
            i++;
        }
        while (i2 > i && vi1.a(this.n[i2 - 1])) {
            i2--;
        }
        return new String(this.n, i, i2 - i);
    }

    public final boolean isEmpty() {
        return this.o == 0;
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.o;
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        if (i < 0) {
            mk0.h(di0.q(i, "Negative beginIndex: "));
            return null;
        }
        if (i2 > this.o) {
            k21.k(xw1.u("endIndex: ", i2, " > length: "), this.o);
            return null;
        }
        if (i <= i2) {
            return CharBuffer.wrap(this.n, i, i2);
        }
        mk0.h(di0.p(i, i2, "beginIndex: ", " > endIndex: "));
        return null;
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return new String(this.n, 0, this.o);
    }
}
