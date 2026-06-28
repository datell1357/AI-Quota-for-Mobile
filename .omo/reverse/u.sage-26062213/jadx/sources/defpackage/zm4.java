package defpackage;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class zm4 implements Iterable, Serializable {
    public static final ym4 o = new ym4(bo4.a);
    public int n;

    static {
        int i = um4.a;
    }

    public static ym4 i(byte[] bArr, int i, int i2) {
        try {
            return k(bArr, i, i2);
        } catch (fo4 e) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
        }
    }

    public static ym4 k(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return o;
        }
        m(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new ym4(bArr2);
    }

    public static int m(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 21);
            sb.append("Beginning index: ");
            sb.append(i);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i2 < i) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(i).length() + 44 + String.valueOf(i2).length());
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder(String.valueOf(i2).length() + 15 + String.valueOf(i3).length());
        sb3.append("End index: ");
        sb3.append(i2);
        sb3.append(" >= ");
        sb3.append(i3);
        throw new IndexOutOfBoundsException(sb3.toString());
    }

    public static /* synthetic */ boolean n(int i, int i2, int i3, byte[] bArr, byte[] bArr2) {
        int i4 = i + i3;
        m(i, i4, bArr.length);
        m(i2, i3 + i2, bArr2.length);
        while (i < i4) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public abstract byte a(int i);

    public abstract int c();

    public abstract xm4 d(int i, int i2);

    public abstract void e(int i, byte[] bArr);

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zm4)) {
            return false;
        }
        zm4 zm4Var = (zm4) obj;
        int iC = c();
        if (iC != zm4Var.c()) {
            return false;
        }
        if (iC == 0) {
            return true;
        }
        int i = this.n;
        int i2 = zm4Var.n;
        if (i == 0 || i2 == 0 || i == i2) {
            return g(zm4Var);
        }
        return false;
    }

    public abstract void f(jn4 jn4Var);

    public abstract boolean g(zm4 zm4Var);

    public abstract int h(int i, int i2);

    public final int hashCode() {
        int iH = this.n;
        if (iH == 0) {
            int iC = c();
            iH = h(iC, iC);
            if (iH == 0) {
                iH = 1;
            }
            this.n = iH;
        }
        return iH;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new d00(this);
    }

    public final byte[] l() {
        int iC = c();
        if (iC == 0) {
            return bo4.a;
        }
        byte[] bArr = new byte[iC];
        e(iC, bArr);
        return bArr;
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int iC = c();
        String strA = c() <= 50 ? gp4.a(l()) : gp4.a(d(0, 47).l()).concat("...");
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(iC);
        sb.append(" contents=\"");
        return xw1.s(sb, strA, "\">");
    }
}
