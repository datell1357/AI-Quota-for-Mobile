package defpackage;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class bx1 implements Closeable, Flushable {
    public static final String[] A;
    public static final Pattern y = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");
    public static final String[] z = new String[128];
    public final Writer n;
    public int[] o;
    public int p;
    public yb1 q;
    public String r;
    public String s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f36u;
    public boolean v;
    public String w;
    public boolean x;

    static {
        for (int i = 0; i <= 31; i++) {
            z[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = z;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        A = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public bx1(Writer writer) {
        int[] iArr = new int[32];
        this.o = iArr;
        this.p = 0;
        if (iArr.length == 0) {
            this.o = Arrays.copyOf(iArr, 0);
        }
        int[] iArr2 = this.o;
        int i = this.p;
        this.p = i + 1;
        iArr2[i] = 6;
        this.f36u = 2;
        this.x = true;
        Objects.requireNonNull(writer, "out == null");
        this.n = writer;
        R(yb1.d);
    }

    public void A() throws IOException {
        z(1, 2, ']');
    }

    public void B() throws IOException {
        z(3, 5, '}');
    }

    public void F(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.w != null) {
            k21.n("Already wrote a name, expecting a value.");
            return;
        }
        int iN = N();
        if (iN == 3 || iN == 5) {
            this.w = str;
        } else {
            k21.n("Please begin an object before writing a name.");
        }
    }

    public final void K() throws IOException {
        if (this.t) {
            return;
        }
        String str = this.q.a;
        Writer writer = this.n;
        writer.write(str);
        int i = this.p;
        for (int i2 = 1; i2 < i; i2++) {
            writer.write(this.q.b);
        }
    }

    public bx1 L() throws IOException {
        if (this.w != null) {
            if (!this.x) {
                this.w = null;
                return this;
            }
            p0();
        }
        b();
        this.n.write("null");
        return this;
    }

    public final int N() {
        int i = this.p;
        if (i != 0) {
            return this.o[i - 1];
        }
        k21.n("JsonWriter is closed.");
        return 0;
    }

    public final void R(yb1 yb1Var) {
        Objects.requireNonNull(yb1Var);
        this.q = yb1Var;
        this.s = ",";
        if (yb1Var.c) {
            this.r = ": ";
            if (yb1Var.a.isEmpty()) {
                this.s = ", ";
            }
        } else {
            this.r = ":";
        }
        this.t = this.q.a.isEmpty() && this.q.b.isEmpty();
    }

    public final void V(int i) {
        if (i == 0) {
            throw null;
        }
        this.f36u = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Y(java.lang.String r8) throws java.io.IOException {
        /*
            r7 = this;
            boolean r0 = r7.v
            if (r0 == 0) goto L7
            java.lang.String[] r0 = defpackage.bx1.A
            goto L9
        L7:
            java.lang.String[] r0 = defpackage.bx1.z
        L9:
            java.io.Writer r7 = r7.n
            r1 = 34
            r7.write(r1)
            int r2 = r8.length()
            r3 = 0
            r4 = r3
        L16:
            if (r3 >= r2) goto L41
            char r5 = r8.charAt(r3)
            r6 = 128(0x80, float:1.794E-43)
            if (r5 >= r6) goto L25
            r5 = r0[r5]
            if (r5 != 0) goto L32
            goto L3e
        L25:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L2c
            java.lang.String r5 = "\\u2028"
            goto L32
        L2c:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L3e
            java.lang.String r5 = "\\u2029"
        L32:
            if (r4 >= r3) goto L39
            int r6 = r3 - r4
            r7.write(r8, r4, r6)
        L39:
            r7.write(r5)
            int r4 = r3 + 1
        L3e:
            int r3 = r3 + 1
            goto L16
        L41:
            if (r4 >= r2) goto L47
            int r2 = r2 - r4
            r7.write(r8, r4, r2)
        L47:
            r7.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bx1.Y(java.lang.String):void");
    }

    public void Z(double d) throws IOException {
        p0();
        if (this.f36u == 1 || !(Double.isNaN(d) || Double.isInfinite(d))) {
            b();
            this.n.append((CharSequence) Double.toString(d));
        } else {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d);
        }
    }

    public final void b() throws IOException {
        int iN = N();
        if (iN == 1) {
            this.o[this.p - 1] = 2;
            K();
            return;
        }
        Writer writer = this.n;
        if (iN == 2) {
            writer.append((CharSequence) this.s);
            K();
            return;
        }
        if (iN == 4) {
            writer.append((CharSequence) this.r);
            this.o[this.p - 1] = 5;
            return;
        }
        if (iN != 6) {
            if (iN != 7) {
                k21.n("Nesting problem.");
                return;
            } else if (this.f36u != 1) {
                k21.n("JSON must have only one top-level value.");
                return;
            }
        }
        this.o[this.p - 1] = 7;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.n.close();
        int i = this.p;
        if (i > 1 || (i == 1 && this.o[i - 1] != 7)) {
            p61.k("Incomplete document");
        } else {
            this.p = 0;
        }
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.p != 0) {
            this.n.flush();
        } else {
            k21.n("JsonWriter is closed.");
        }
    }

    public void i0(long j) throws IOException {
        p0();
        b();
        this.n.write(Long.toString(j));
    }

    public void j() throws IOException {
        p0();
        b();
        int i = this.p;
        int[] iArr = this.o;
        if (i == iArr.length) {
            this.o = Arrays.copyOf(iArr, i * 2);
        }
        int[] iArr2 = this.o;
        int i2 = this.p;
        this.p = i2 + 1;
        iArr2[i2] = 1;
        this.n.write(91);
    }

    public void j0(Number number) throws IOException {
        if (number == null) {
            L();
            return;
        }
        p0();
        String string = number.toString();
        Class<?> cls = number.getClass();
        if (cls != Integer.class && cls != Long.class && cls != Byte.class && cls != Short.class && cls != BigDecimal.class && cls != BigInteger.class && cls != AtomicInteger.class && cls != AtomicLong.class) {
            if (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN")) {
                if (this.f36u != 1) {
                    k21.f("Numeric values must be finite, but was ".concat(string));
                    return;
                }
            } else if (cls != Float.class && cls != Double.class && !y.matcher(string).matches()) {
                mk0.i("String created by ", cls, " is not a valid JSON number: ", string);
                return;
            }
        }
        b();
        this.n.append((CharSequence) string);
    }

    public void n0(String str) throws IOException {
        if (str == null) {
            L();
            return;
        }
        p0();
        b();
        Y(str);
    }

    public void o0(boolean z2) throws IOException {
        p0();
        b();
        this.n.write(z2 ? "true" : "false");
    }

    public final void p0() throws IOException {
        if (this.w != null) {
            int iN = N();
            if (iN == 5) {
                this.n.write(this.s);
            } else if (iN != 3) {
                k21.n("Nesting problem.");
                return;
            }
            K();
            this.o[this.p - 1] = 4;
            Y(this.w);
            this.w = null;
        }
    }

    public void r() throws IOException {
        p0();
        b();
        int i = this.p;
        int[] iArr = this.o;
        if (i == iArr.length) {
            this.o = Arrays.copyOf(iArr, i * 2);
        }
        int[] iArr2 = this.o;
        int i2 = this.p;
        this.p = i2 + 1;
        iArr2[i2] = 3;
        this.n.write(123);
    }

    public final void z(int i, int i2, char c) throws IOException {
        int iN = N();
        if (iN != i2 && iN != i) {
            k21.n("Nesting problem.");
            return;
        }
        if (this.w != null) {
            p61.w(this.w, "Dangling name: ");
            return;
        }
        this.p--;
        if (iN == i2) {
            K();
        }
        this.n.write(c);
    }
}
