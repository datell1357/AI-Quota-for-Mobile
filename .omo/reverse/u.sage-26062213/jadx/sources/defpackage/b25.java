package defpackage;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class b25 implements Iterable, Serializable {
    public static final b25 p = new b25(s25.a);
    public int n = 0;
    public final byte[] o;

    static {
        int i = q15.a;
    }

    public b25(byte[] bArr) {
        bArr.getClass();
        this.o = bArr;
    }

    public static int g(int i, int i2, int i3) {
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

    public static b25 h(int i, byte[] bArr) {
        g(0, i, bArr.length);
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return new b25(bArr2);
    }

    public byte a(int i) {
        return this.o[i];
    }

    public byte c(int i) {
        return this.o[i];
    }

    public int d() {
        return 0;
    }

    public int e() {
        return this.o.length;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof b25) && e() == ((b25) obj).e()) {
            if (e() == 0) {
                return true;
            }
            if (!(obj instanceof b25)) {
                return obj.equals(this);
            }
            b25 b25Var = (b25) obj;
            int i = this.n;
            int i2 = b25Var.n;
            if (i == 0 || i2 == 0 || i == i2) {
                int iE = e();
                if (iE > b25Var.e()) {
                    throw new IllegalArgumentException("Length too large: " + iE + e());
                }
                if (iE > b25Var.e()) {
                    k21.f(di0.p(iE, b25Var.e(), "Ran off end of other: 0, ", ", "));
                    return false;
                }
                byte[] bArr = b25Var.o;
                int iD = d() + iE;
                int iD2 = d();
                int iD3 = b25Var.d();
                while (iD2 < iD) {
                    if (this.o[iD2] == bArr[iD3]) {
                        iD2++;
                        iD3++;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public void f(int i, byte[] bArr) {
        System.arraycopy(this.o, 0, bArr, 0, i);
    }

    public final int hashCode() {
        int i = this.n;
        if (i != 0) {
            return i;
        }
        int iE = e();
        int iD = d();
        byte[] bArr = s25.a;
        int i2 = iE;
        for (int i3 = iD; i3 < iD + iE; i3++) {
            i2 = (i2 * 31) + this.o[i3];
        }
        if (i2 == 0) {
            i2 = 1;
        }
        this.n = i2;
        return i2;
    }

    public final byte[] i() {
        int iE = e();
        if (iE == 0) {
            return s25.a;
        }
        byte[] bArr = new byte[iE];
        f(iE, bArr);
        return bArr;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new d00(this);
    }

    public final String toString() {
        b25 w15Var;
        String strConcat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int iE = e();
        if (e() <= 50) {
            strConcat = ci4.d(this);
        } else {
            int iG = g(0, 47, e());
            if (iG == 0) {
                w15Var = p;
            } else {
                w15Var = new w15(this.o, d(), iG);
            }
            strConcat = ci4.d(w15Var).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(iE);
        sb.append(" contents=\"");
        return xw1.s(sb, strConcat, "\">");
    }
}
