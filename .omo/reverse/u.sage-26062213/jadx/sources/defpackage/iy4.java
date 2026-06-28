package defpackage;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class iy4 implements Iterable, Serializable {
    public static final iy4 p = new iy4(dz4.b);
    public int n = 0;
    public final byte[] o;

    static {
        int i = ay4.a;
    }

    public iy4(byte[] bArr) {
        bArr.getClass();
        this.o = bArr;
    }

    public static int e(int i, int i2, int i3) {
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

    public static iy4 f(byte[] bArr, int i, int i2) {
        e(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new iy4(bArr2);
    }

    public byte a(int i) {
        return this.o[i];
    }

    public byte c(int i) {
        return this.o[i];
    }

    public int d() {
        return this.o.length;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof iy4) && d() == ((iy4) obj).d()) {
            if (d() == 0) {
                return true;
            }
            if (!(obj instanceof iy4)) {
                return obj.equals(this);
            }
            iy4 iy4Var = (iy4) obj;
            int i = this.n;
            int i2 = iy4Var.n;
            if (i == 0 || i2 == 0 || i == i2) {
                int iD = d();
                if (iD > iy4Var.d()) {
                    throw new IllegalArgumentException("Length too large: " + iD + d());
                }
                if (iD > iy4Var.d()) {
                    k21.f(di0.p(iD, iy4Var.d(), "Ran off end of other: 0, ", ", "));
                    return false;
                }
                byte[] bArr = iy4Var.o;
                int i3 = 0;
                int i4 = 0;
                while (i3 < iD) {
                    if (this.o[i3] == bArr[i4]) {
                        i3++;
                        i4++;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.n;
        if (i != 0) {
            return i;
        }
        int iD = d();
        int i2 = iD;
        for (int i3 = 0; i3 < iD; i3++) {
            i2 = (i2 * 31) + this.o[i3];
        }
        if (i2 == 0) {
            i2 = 1;
        }
        this.n = i2;
        return i2;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new d00(this);
    }

    public final String toString() {
        String strConcat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int iD = d();
        if (d() <= 50) {
            strConcat = ug4.k(this);
        } else {
            int iE = e(0, 47, d());
            strConcat = ug4.k(iE == 0 ? p : new dy4(iE, this.o)).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(iD);
        sb.append(" contents=\"");
        return xw1.s(sb, strConcat, "\">");
    }
}
