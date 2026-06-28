package defpackage;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class f00 implements Iterable, Serializable {
    public static final f00 p = new f00(dt1.b);
    public static final qv3 q;
    public int n = 0;
    public final byte[] o;

    static {
        q = r8.a() ? new qv3(17) : new qv3(16);
    }

    public f00(byte[] bArr) {
        bArr.getClass();
        this.o = bArr;
    }

    public static int c(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            mk0.h(xw1.q("Beginning index: ", i, " < 0"));
            return 0;
        }
        if (i2 < i) {
            mk0.h(di0.p(i, i2, "Beginning index larger than ending index: ", ", "));
            return 0;
        }
        mk0.h(di0.p(i2, i3, "End index: ", " >= "));
        return 0;
    }

    public static f00 d(byte[] bArr, int i, int i2) {
        byte[] bArrCopyOfRange;
        c(i, i + i2, bArr.length);
        switch (q.n) {
            case 16:
                bArrCopyOfRange = Arrays.copyOfRange(bArr, i, i2 + i);
                break;
            default:
                bArrCopyOfRange = new byte[i2];
                System.arraycopy(bArr, i, bArrCopyOfRange, 0, i2);
                break;
        }
        return new f00(bArrCopyOfRange);
    }

    public byte a(int i) {
        return this.o[i];
    }

    public void e(int i, byte[] bArr) {
        System.arraycopy(this.o, 0, bArr, 0, i);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f00) || size() != ((f00) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof f00)) {
            return obj.equals(this);
        }
        f00 f00Var = (f00) obj;
        int i = this.n;
        int i2 = f00Var.n;
        if (i != 0 && i2 != 0 && i != i2) {
            return false;
        }
        int size = size();
        if (size > f00Var.size()) {
            throw new IllegalArgumentException("Length too large: " + size + size());
        }
        if (size > f00Var.size()) {
            StringBuilder sbU = xw1.u("Ran off end of other: 0, ", size, ", ");
            sbU.append(f00Var.size());
            throw new IllegalArgumentException(sbU.toString());
        }
        byte[] bArr = f00Var.o;
        int iF = f() + size;
        int iF2 = f();
        int iF3 = f00Var.f();
        while (iF2 < iF) {
            if (this.o[iF2] != bArr[iF3]) {
                return false;
            }
            iF2++;
            iF3++;
        }
        return true;
    }

    public int f() {
        return 0;
    }

    public byte g(int i) {
        return this.o[i];
    }

    public final int hashCode() {
        int i = this.n;
        if (i != 0) {
            return i;
        }
        int size = size();
        int iF = f();
        int i2 = size;
        for (int i3 = iF; i3 < iF + size; i3++) {
            i2 = (i2 * 31) + this.o[i3];
        }
        if (i2 == 0) {
            i2 = 1;
        }
        this.n = i2;
        return i2;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new d00(this);
    }

    public int size() {
        return this.o.length;
    }

    public final String toString() {
        String strConcat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int size = size();
        if (size() <= 50) {
            strConcat = gg4.t(this);
        } else {
            int iC = c(0, 47, size());
            strConcat = gg4.t(iC == 0 ? p : new e00(this.o, f(), iC)).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(size);
        sb.append(" contents=\"");
        return xw1.s(sb, strConcat, "\">");
    }
}
