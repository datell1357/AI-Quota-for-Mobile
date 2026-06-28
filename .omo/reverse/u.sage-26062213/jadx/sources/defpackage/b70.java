package defpackage;

import java.nio.charset.Charset;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class b70 {
    public int n;
    public Object o;

    public b70(zg5 zg5Var, int i) {
        if (zg5Var == null) {
            k21.f("format options cannot be null");
            throw null;
        }
        if (i < 0) {
            k21.f(di0.r(i, "invalid index: ", new StringBuilder(String.valueOf(i).length() + 15)));
            throw null;
        }
        this.n = i;
        this.o = zg5Var;
    }

    public abstract long A();

    public abstract int B();

    public abstract long C();

    public byte[] D(int i) {
        byte[] bArr = (byte[]) this.o;
        Charset charset = ph2.a;
        int i2 = bArr.length < i + 2 ? 0 : (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8);
        int iH = ph2.h(i + 4, bArr);
        if (bArr.length < iH + i2) {
            return new byte[i2];
        }
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, iH, bArr2, 0, i2);
        return bArr2;
    }

    public abstract String E();

    public abstract String F();

    public abstract int G();

    public abstract int H();

    public abstract long I();

    public abstract boolean J(int i);

    public void K() throws wt1 {
        int iG;
        do {
            iG = G();
            if (iG == 0) {
                return;
            }
            int i = this.n;
            if (i >= 100) {
                throw new wt1("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            }
            this.n = i + 1;
            this.n--;
        } while (J(iG));
    }

    public abstract void L(tz0 tz0Var, Object obj);

    public void a(byte b) {
        byte[] bArr = (byte[]) this.o;
        int i = this.n;
        bArr[i] = b;
        this.n = i + 1;
    }

    public void b(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        for (byte b : bArr) {
            byte[] bArr2 = (byte[]) this.o;
            int i = this.n;
            bArr2[i] = b;
            this.n = i + 1;
        }
    }

    public void c(int i) {
        a((byte) (i & 255));
        a((byte) ((i >> 8) & 255));
        a((byte) ((i >> 16) & 255));
        a((byte) ((i >> 24) & 255));
    }

    public void d(int i) {
        a((byte) (i & 255));
        a((byte) ((i >> 8) & 255));
    }

    public void e() {
        throw new RuntimeException("Message builder not implemented for ".concat(getClass().getName()));
    }

    public abstract void f(int i);

    public String h() {
        if (((byte[]) this.o) == null) {
            e();
        }
        byte[] bArr = (byte[]) this.o;
        int length = bArr.length;
        int i = this.n;
        if (length > i) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, i);
            this.o = bArr2;
        }
        byte[] bArrB = (byte[]) this.o;
        if (bArrB != null && bArrB.length != 0) {
            oq oqVar = new oq(0, nr.d);
            long length2 = ((long) ((bArrB.length + 2) / 3)) * 4;
            int i2 = oqVar.a;
            if (i2 > 0) {
                long j = i2;
                length2 += (((length2 + j) - 1) / j) * ((long) oqVar.b);
            }
            if (length2 > 2147483647L) {
                throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + length2 + ") than the specified maximum size of 2147483647");
            }
            bArrB = oqVar.b(bArrB);
        }
        return new String(bArrB, uf0.b);
    }

    public abstract int i();

    public abstract boolean j();

    public abstract ke4 m(ke4 ke4Var, List list);

    public abstract pc4 n(qd4 qd4Var, pc4 pc4Var);

    public abstract void o(int i);

    public abstract int p(int i);

    public abstract boolean q();

    public abstract f00 r();

    public abstract double s();

    public abstract int t();

    public abstract int u();

    public abstract long v();

    public abstract float w();

    public abstract int x();

    public abstract long y();

    public abstract int z();

    public void k(qd4 qd4Var) {
    }

    public void l(qd4 qd4Var) {
    }

    public b70(int i) {
        this.n = i;
    }

    public b70() {
        this.o = null;
        this.n = 0;
    }
}
