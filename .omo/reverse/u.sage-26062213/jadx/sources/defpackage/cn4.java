package defpackage;

import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class cn4 {
    public int a;
    public int b;
    public e50 c;

    public static cn4 h(InputStream inputStream, int i) {
        if (i <= 0) {
            k21.f("bufferSize must be > 0");
            return null;
        }
        if (inputStream != null) {
            return new bn4(inputStream, i);
        }
        an4 an4Var = new an4(bo4.a);
        try {
            an4Var.a(0);
            return an4Var;
        } catch (fo4 e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int j(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    public static long k(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    public abstract int A();

    public abstract int B();

    public abstract int C();

    public abstract long D();

    public abstract int E();

    public abstract long F();

    public abstract int G();

    public abstract long H();

    public abstract int a(int i);

    public abstract void b(int i);

    public abstract int c();

    public abstract boolean d();

    public abstract int e();

    public abstract int f(byte[] bArr, int i, int i2);

    public abstract void g(int i);

    public final void i() throws fo4 {
        int iL;
        do {
            iL = l();
            if (iL == 0) {
                return;
            }
            int i = this.a;
            int i2 = this.b;
            if (i + i2 >= 100) {
                q73.t("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
                return;
            } else {
                this.b = i2 + 1;
                this.b--;
            }
        } while (n(iL));
    }

    public abstract int l();

    public abstract void m(int i);

    public abstract boolean n(int i);

    public abstract double o();

    public abstract float p();

    public abstract long q();

    public abstract long r();

    public abstract int s();

    public abstract long t();

    public abstract int u();

    public abstract boolean v();

    public abstract String w();

    public abstract String x();

    public abstract ym4 y();

    public abstract byte[] z();
}
