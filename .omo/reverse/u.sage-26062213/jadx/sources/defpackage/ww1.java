package defpackage;

import com.google.android.gms.common.ConnectionResult;
import java.io.Closeable;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ww1 implements Closeable {
    public int[] A;
    public final Reader n;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f402u;
    public int v;
    public String w;
    public int[] x;
    public String[] z;
    public int B = 2;
    public final char[] o = new char[1024];
    public int p = 0;
    public int q = 0;
    public int r = 0;
    public int s = 0;
    public int t = 0;
    public int y = 1;

    static {
        b21.o = new b21(9);
    }

    public ww1(Reader reader) {
        int[] iArr = new int[32];
        this.x = iArr;
        iArr[0] = 6;
        this.z = new String[32];
        this.A = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.n = reader;
    }

    public final void A() throws IOException {
        int iZ = this.t;
        if (iZ == 0) {
            iZ = z();
        }
        if (iZ != 4) {
            throw A0("END_ARRAY");
        }
        int i = this.y;
        this.y = i - 1;
        int[] iArr = this.A;
        int i2 = i - 2;
        iArr[i2] = iArr[i2] + 1;
        this.t = 0;
    }

    public final IllegalStateException A0(String str) {
        String str2 = s0() == 9 ? "adapter-not-null-safe" : "unexpected-json-structure";
        StringBuilder sbA = di0.A("Expected ", str, " but was ");
        sbA.append(xw1.A(s0()));
        sbA.append(R());
        sbA.append("\nSee ");
        sbA.append("https://github.com/google/gson/blob/main/Troubleshooting.md#".concat(str2));
        return new IllegalStateException(sbA.toString());
    }

    public final void B() throws IOException {
        int iZ = this.t;
        if (iZ == 0) {
            iZ = z();
        }
        if (iZ != 2) {
            throw A0("END_OBJECT");
        }
        int i = this.y;
        int i2 = i - 1;
        this.y = i2;
        this.z[i2] = null;
        int[] iArr = this.A;
        int i3 = i - 2;
        iArr[i3] = iArr[i3] + 1;
        this.t = 0;
    }

    public final void B0(String str) throws r92 {
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) > 127) {
                z0("String contains non-ASCII characters: ".concat(str));
                throw null;
            }
        }
    }

    public final boolean F(int i) throws IOException {
        int i2;
        int i3;
        int i4 = this.s;
        int i5 = this.p;
        this.s = i4 - i5;
        int i6 = this.q;
        char[] cArr = this.o;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.q = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.q = 0;
        }
        this.p = 0;
        do {
            int i8 = this.q;
            int i9 = this.n.read(cArr, i8, cArr.length - i8);
            if (i9 == -1) {
                return false;
            }
            i2 = this.q + i9;
            this.q = i2;
            if (this.r == 0 && (i3 = this.s) == 0 && i2 > 0 && cArr[0] == 65279) {
                this.p++;
                this.s = i3 + 1;
                i++;
            }
        } while (i2 < i);
        return true;
    }

    public final String K(boolean z) {
        StringBuilder sb = new StringBuilder("$");
        int i = 0;
        while (true) {
            int i2 = this.y;
            if (i >= i2) {
                return sb.toString();
            }
            int i3 = this.x[i];
            switch (i3) {
                case 1:
                case 2:
                    int i4 = this.A[i];
                    if (z && i4 > 0 && i == i2 - 1) {
                        i4--;
                    }
                    sb.append('[');
                    sb.append(i4);
                    sb.append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    sb.append('.');
                    String str = this.z[i];
                    if (str != null) {
                        sb.append(str);
                    }
                    break;
                case 6:
                case 7:
                case 8:
                    break;
                default:
                    k21.c(di0.q(i3, "Unknown scope value: "));
                    return null;
            }
            i++;
        }
    }

    public final boolean L() throws IOException {
        int iZ = this.t;
        if (iZ == 0) {
            iZ = z();
        }
        return (iZ == 2 || iZ == 4 || iZ == 17) ? false : true;
    }

    public final boolean N(char c) throws r92 {
        if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
            return false;
        }
        if (c != '#') {
            if (c == ',') {
                return false;
            }
            if (c != '/' && c != '=') {
                if (c == '{' || c == '}' || c == ':') {
                    return false;
                }
                if (c != ';') {
                    switch (c) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        r();
        return false;
    }

    public final String R() {
        StringBuilder sbV = xw1.v(" at line ", this.r + 1, " column ", (this.p - this.s) + 1, " path ");
        sbV.append(K(false));
        return sbV.toString();
    }

    public final boolean V() throws IOException {
        int iZ = this.t;
        if (iZ == 0) {
            iZ = z();
        }
        if (iZ == 5) {
            this.t = 0;
            int[] iArr = this.A;
            int i = this.y - 1;
            iArr[i] = iArr[i] + 1;
            return true;
        }
        if (iZ != 6) {
            throw A0("a boolean");
        }
        this.t = 0;
        int[] iArr2 = this.A;
        int i2 = this.y - 1;
        iArr2[i2] = iArr2[i2] + 1;
        return false;
    }

    public final double Y() throws IOException {
        int iZ = this.t;
        if (iZ == 0) {
            iZ = z();
        }
        if (iZ == 15) {
            this.t = 0;
            int[] iArr = this.A;
            int i = this.y - 1;
            iArr[i] = iArr[i] + 1;
            return this.f402u;
        }
        if (iZ == 16) {
            this.w = new String(this.o, this.p, this.v);
            this.p += this.v;
        } else if (iZ == 8 || iZ == 9) {
            this.w = p0(iZ == 8 ? '\'' : '\"');
        } else if (iZ == 10) {
            this.w = r0();
        } else if (iZ != 11) {
            throw A0("a double");
        }
        this.t = 11;
        double d = Double.parseDouble(this.w);
        if (this.B != 1 && (Double.isNaN(d) || Double.isInfinite(d))) {
            z0("JSON forbids NaN and infinities: " + d);
            throw null;
        }
        this.w = null;
        this.t = 0;
        int[] iArr2 = this.A;
        int i2 = this.y - 1;
        iArr2[i2] = iArr2[i2] + 1;
        return d;
    }

    public final int Z() throws IOException {
        int iZ = this.t;
        if (iZ == 0) {
            iZ = z();
        }
        if (iZ == 15) {
            long j = this.f402u;
            int i = (int) j;
            if (j == i) {
                this.t = 0;
                int[] iArr = this.A;
                int i2 = this.y - 1;
                iArr[i2] = iArr[i2] + 1;
                return i;
            }
            throw new NumberFormatException("Expected an int but was " + this.f402u + R());
        }
        if (iZ == 16) {
            this.w = new String(this.o, this.p, this.v);
            this.p += this.v;
        } else {
            if (iZ != 8 && iZ != 9 && iZ != 10) {
                throw A0("an int");
            }
            if (iZ == 10) {
                this.w = r0();
            } else {
                this.w = p0(iZ == 8 ? '\'' : '\"');
            }
            B0(this.w);
            try {
                int i3 = Integer.parseInt(this.w);
                this.t = 0;
                int[] iArr2 = this.A;
                int i4 = this.y - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return i3;
            } catch (NumberFormatException unused) {
            }
        }
        this.t = 11;
        double d = Double.parseDouble(this.w);
        int i5 = (int) d;
        if (i5 == d) {
            this.w = null;
            this.t = 0;
            int[] iArr3 = this.A;
            int i6 = this.y - 1;
            iArr3[i6] = iArr3[i6] + 1;
            return i5;
        }
        throw new NumberFormatException("Expected an int but was " + this.w + R());
    }

    public final void b() throws IOException {
        int iZ = this.t;
        if (iZ == 0) {
            iZ = z();
        }
        if (iZ != 3) {
            throw A0("BEGIN_ARRAY");
        }
        t0(1);
        this.A[this.y - 1] = 0;
        this.t = 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.t = 0;
        this.x[0] = 8;
        this.y = 1;
        this.n.close();
    }

    public final long i0() throws IOException {
        int iZ = this.t;
        if (iZ == 0) {
            iZ = z();
        }
        if (iZ == 15) {
            this.t = 0;
            int[] iArr = this.A;
            int i = this.y - 1;
            iArr[i] = iArr[i] + 1;
            return this.f402u;
        }
        if (iZ == 16) {
            this.w = new String(this.o, this.p, this.v);
            this.p += this.v;
        } else {
            if (iZ != 8 && iZ != 9 && iZ != 10) {
                throw A0("a long");
            }
            if (iZ == 10) {
                this.w = r0();
            } else {
                this.w = p0(iZ == 8 ? '\'' : '\"');
            }
            B0(this.w);
            try {
                long j = Long.parseLong(this.w);
                this.t = 0;
                int[] iArr2 = this.A;
                int i2 = this.y - 1;
                iArr2[i2] = iArr2[i2] + 1;
                return j;
            } catch (NumberFormatException unused) {
            }
        }
        this.t = 11;
        double d = Double.parseDouble(this.w);
        long j2 = (long) d;
        if (j2 == d) {
            this.w = null;
            this.t = 0;
            int[] iArr3 = this.A;
            int i3 = this.y - 1;
            iArr3[i3] = iArr3[i3] + 1;
            return j2;
        }
        throw new NumberFormatException("Expected a long but was " + this.w + R());
    }

    public final void j() throws IOException {
        int iZ = this.t;
        if (iZ == 0) {
            iZ = z();
        }
        if (iZ != 1) {
            throw A0("BEGIN_OBJECT");
        }
        t0(3);
        this.t = 0;
    }

    public final String j0() throws IOException {
        String strP0;
        int iZ = this.t;
        if (iZ == 0) {
            iZ = z();
        }
        if (iZ == 14) {
            strP0 = r0();
        } else if (iZ == 12) {
            strP0 = p0('\'');
        } else {
            if (iZ != 13) {
                throw A0("a name");
            }
            strP0 = p0('\"');
        }
        this.t = 0;
        this.z[this.y - 1] = strP0;
        return strP0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x006c, code lost:
    
        return r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int n0(boolean r10) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ww1.n0(boolean):int");
    }

    public final void o0() {
        int iZ = this.t;
        if (iZ == 0) {
            iZ = z();
        }
        if (iZ != 7) {
            throw A0("null");
        }
        this.t = 0;
        int[] iArr = this.A;
        int i = this.y - 1;
        iArr[i] = iArr[i] + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x003d, code lost:
    
        r11.p = r8;
        r8 = r8 - r3;
        r2 = r8 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0042, code lost:
    
        if (r1 != null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0044, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max(r8 * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006b, code lost:
    
        if (r1 != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006d, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r3) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007b, code lost:
    
        r1.append(r7, r3, r2 - r3);
        r11.p = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String p0(char r12) throws defpackage.r92 {
        /*
            r11 = this;
            r0 = 0
            r1 = r0
        L2:
            int r2 = r11.p
            int r3 = r11.q
        L6:
            r4 = r3
            r3 = r2
        L8:
            r5 = 16
            r6 = 1
            char[] r7 = r11.o
            if (r2 >= r4) goto L6b
            int r8 = r2 + 1
            char r2 = r7[r2]
            int r9 = r11.B
            r10 = 3
            if (r9 != r10) goto L23
            r9 = 32
            if (r2 < r9) goto L1d
            goto L23
        L1d:
            java.lang.String r12 = "Unescaped control characters (\\u0000-\\u001F) are not allowed in strict mode"
            r11.z0(r12)
            throw r0
        L23:
            if (r2 != r12) goto L39
            r11.p = r8
            int r8 = r8 - r3
            int r8 = r8 - r6
            if (r1 != 0) goto L31
            java.lang.String r11 = new java.lang.String
            r11.<init>(r7, r3, r8)
            return r11
        L31:
            r1.append(r7, r3, r8)
            java.lang.String r11 = r1.toString()
            return r11
        L39:
            r9 = 92
            if (r2 != r9) goto L5e
            r11.p = r8
            int r8 = r8 - r3
            int r2 = r8 + (-1)
            if (r1 != 0) goto L4f
            int r8 = r8 * 2
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            int r4 = java.lang.Math.max(r8, r5)
            r1.<init>(r4)
        L4f:
            r1.append(r7, r3, r2)
            char r2 = r11.u0()
            r1.append(r2)
            int r2 = r11.p
            int r3 = r11.q
            goto L6
        L5e:
            r5 = 10
            if (r2 != r5) goto L69
            int r2 = r11.r
            int r2 = r2 + r6
            r11.r = r2
            r11.s = r8
        L69:
            r2 = r8
            goto L8
        L6b:
            if (r1 != 0) goto L7b
            int r1 = r2 - r3
            int r1 = r1 * 2
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r4.<init>(r1)
            r1 = r4
        L7b:
            int r4 = r2 - r3
            r1.append(r7, r3, r4)
            r11.p = r2
            boolean r2 = r11.F(r6)
            if (r2 == 0) goto L8a
            goto L2
        L8a:
            java.lang.String r12 = "Unterminated string"
            r11.z0(r12)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ww1.p0(char):java.lang.String");
    }

    public final String q0() {
        String str;
        int iZ = this.t;
        if (iZ == 0) {
            iZ = z();
        }
        if (iZ == 10) {
            str = r0();
        } else if (iZ == 8) {
            str = p0('\'');
        } else if (iZ == 9) {
            str = p0('\"');
        } else if (iZ == 11) {
            str = this.w;
            this.w = null;
        } else if (iZ == 15) {
            str = Long.toString(this.f402u);
        } else {
            if (iZ != 16) {
                throw A0("a string");
            }
            str = new String(this.o, this.p, this.v);
            this.p += this.v;
        }
        this.t = 0;
        int[] iArr = this.A;
        int i = this.y - 1;
        iArr[i] = iArr[i] + 1;
        return str;
    }

    public final void r() throws r92 {
        if (this.B == 1) {
            return;
        }
        z0("Use JsonReader.setStrictness(Strictness.LENIENT) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0048, code lost:
    
        r();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0042. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:47:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String r0() throws defpackage.r92 {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = r1
        L3:
            int r3 = r6.p
            int r3 = r3 + r2
            int r4 = r6.q
            char[] r5 = r6.o
            if (r3 >= r4) goto L4c
            char r3 = r5[r3]
            r4 = 9
            if (r3 == r4) goto L58
            r4 = 10
            if (r3 == r4) goto L58
            r4 = 12
            if (r3 == r4) goto L58
            r4 = 13
            if (r3 == r4) goto L58
            r4 = 32
            if (r3 == r4) goto L58
            r4 = 35
            if (r3 == r4) goto L48
            r4 = 44
            if (r3 == r4) goto L58
            r4 = 47
            if (r3 == r4) goto L48
            r4 = 61
            if (r3 == r4) goto L48
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L58
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L58
            r4 = 58
            if (r3 == r4) goto L58
            r4 = 59
            if (r3 == r4) goto L48
            switch(r3) {
                case 91: goto L58;
                case 92: goto L48;
                case 93: goto L58;
                default: goto L45;
            }
        L45:
            int r2 = r2 + 1
            goto L3
        L48:
            r6.r()
            goto L58
        L4c:
            int r3 = r5.length
            if (r2 >= r3) goto L5a
            int r3 = r2 + 1
            boolean r3 = r6.F(r3)
            if (r3 == 0) goto L58
            goto L3
        L58:
            r1 = r2
            goto L78
        L5a:
            if (r0 != 0) goto L67
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r0.<init>(r3)
        L67:
            int r3 = r6.p
            r0.append(r5, r3, r2)
            int r3 = r6.p
            int r3 = r3 + r2
            r6.p = r3
            r2 = 1
            boolean r2 = r6.F(r2)
            if (r2 != 0) goto L2
        L78:
            int r2 = r6.p
            if (r0 != 0) goto L82
            java.lang.String r0 = new java.lang.String
            r0.<init>(r5, r2, r1)
            goto L89
        L82:
            r0.append(r5, r2, r1)
            java.lang.String r0 = r0.toString()
        L89:
            int r2 = r6.p
            int r2 = r2 + r1
            r6.p = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ww1.r0():java.lang.String");
    }

    public final int s0() throws IOException {
        int iZ = this.t;
        if (iZ == 0) {
            iZ = z();
        }
        switch (iZ) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case ConnectionResult.SERVICE_INVALID /* 9 */:
            case 10:
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return 6;
            case 12:
            case 13:
            case 14:
                return 5;
            case 15:
            case 16:
                return 7;
            case 17:
                return 10;
            default:
                throw new AssertionError();
        }
    }

    public final void t0(int i) throws r92 {
        int i2 = this.y;
        if (i2 - 1 >= 255) {
            throw new r92("Nesting limit 255 reached".concat(R()));
        }
        int[] iArr = this.x;
        if (i2 == iArr.length) {
            int i3 = i2 * 2;
            this.x = Arrays.copyOf(iArr, i3);
            this.A = Arrays.copyOf(this.A, i3);
            this.z = (String[]) Arrays.copyOf(this.z, i3);
        }
        int[] iArr2 = this.x;
        int i4 = this.y;
        this.y = i4 + 1;
        iArr2[i4] = i;
    }

    public final String toString() {
        return ww1.class.getSimpleName().concat(R());
    }

    public final char u0() throws r92 {
        int i;
        if (this.p == this.q && !F(1)) {
            z0("Unterminated escape sequence");
            throw null;
        }
        int i2 = this.p;
        int i3 = i2 + 1;
        this.p = i3;
        char[] cArr = this.o;
        char c = cArr[i2];
        if (c != '\n') {
            if (c != '\"') {
                if (c != '\'') {
                    if (c != '/' && c != '\\') {
                        if (c == 'b') {
                            return '\b';
                        }
                        if (c == 'f') {
                            return '\f';
                        }
                        if (c == 'n') {
                            return '\n';
                        }
                        if (c == 'r') {
                            return '\r';
                        }
                        if (c == 't') {
                            return '\t';
                        }
                        if (c != 'u') {
                            z0("Invalid escape sequence");
                            throw null;
                        }
                        if (i2 + 5 > this.q && !F(4)) {
                            z0("Unterminated escape sequence");
                            throw null;
                        }
                        int i4 = this.p;
                        int i5 = i4 + 4;
                        int i6 = 0;
                        while (i4 < i5) {
                            char c2 = cArr[i4];
                            int i7 = i6 << 4;
                            if (c2 >= '0' && c2 <= '9') {
                                i = c2 - '0';
                            } else if (c2 >= 'a' && c2 <= 'f') {
                                i = c2 - 'W';
                            } else {
                                if (c2 < 'A' || c2 > 'F') {
                                    z0("Malformed Unicode escape \\u".concat(new String(cArr, this.p, 4)));
                                    throw null;
                                }
                                i = c2 - '7';
                            }
                            i6 = i + i7;
                            i4++;
                        }
                        this.p += 4;
                        return (char) i6;
                    }
                }
            }
            return c;
        }
        if (this.B == 3) {
            z0("Cannot escape a newline character in strict mode");
            throw null;
        }
        this.r++;
        this.s = i3;
        if (this.B == 3) {
            z0("Invalid escaped character \"'\" in strict mode");
            throw null;
        }
        return c;
    }

    public final void v0(char c) throws r92 {
        do {
            int i = this.p;
            int i2 = this.q;
            while (i < i2) {
                int i3 = i + 1;
                char c2 = this.o[i];
                if (c2 == c) {
                    this.p = i3;
                    return;
                }
                if (c2 == '\\') {
                    this.p = i3;
                    u0();
                    i = this.p;
                    i2 = this.q;
                } else {
                    if (c2 == '\n') {
                        this.r++;
                        this.s = i3;
                    }
                    i = i3;
                }
            }
            this.p = i;
        } while (F(1));
        z0("Unterminated string");
        throw null;
    }

    public final void w0() {
        char c;
        do {
            if (this.p >= this.q && !F(1)) {
                return;
            }
            int i = this.p;
            int i2 = i + 1;
            this.p = i2;
            c = this.o[i];
            if (c == '\n') {
                this.r++;
                this.s = i2;
                return;
            }
        } while (c != '\r');
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0046, code lost:
    
        r();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x0() throws defpackage.r92 {
        /*
            r3 = this;
        L0:
            r0 = 0
        L1:
            int r1 = r3.p
            int r1 = r1 + r0
            int r2 = r3.q
            if (r1 >= r2) goto L4f
            char[] r2 = r3.o
            char r1 = r2[r1]
            r2 = 9
            if (r1 == r2) goto L49
            r2 = 10
            if (r1 == r2) goto L49
            r2 = 12
            if (r1 == r2) goto L49
            r2 = 13
            if (r1 == r2) goto L49
            r2 = 32
            if (r1 == r2) goto L49
            r2 = 35
            if (r1 == r2) goto L46
            r2 = 44
            if (r1 == r2) goto L49
            r2 = 47
            if (r1 == r2) goto L46
            r2 = 61
            if (r1 == r2) goto L46
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L49
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto L49
            r2 = 58
            if (r1 == r2) goto L49
            r2 = 59
            if (r1 == r2) goto L46
            switch(r1) {
                case 91: goto L49;
                case 92: goto L46;
                case 93: goto L49;
                default: goto L43;
            }
        L43:
            int r0 = r0 + 1
            goto L1
        L46:
            r3.r()
        L49:
            int r1 = r3.p
            int r1 = r1 + r0
            r3.p = r1
            return
        L4f:
            r3.p = r1
            r0 = 1
            boolean r0 = r3.F(r0)
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ww1.x0():void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void y0() throws IOException {
        int i = 0;
        do {
            int iZ = this.t;
            if (iZ == 0) {
                iZ = z();
            }
            switch (iZ) {
                case 1:
                    t0(3);
                    i++;
                    this.t = 0;
                    break;
                case 2:
                    if (i == 0) {
                        this.z[this.y - 1] = null;
                    }
                    this.y--;
                    i--;
                    this.t = 0;
                    break;
                case 3:
                    t0(1);
                    i++;
                    this.t = 0;
                    break;
                case 4:
                    this.y--;
                    i--;
                    this.t = 0;
                    break;
                case 5:
                case 6:
                case 7:
                case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                case 15:
                default:
                    this.t = 0;
                    break;
                case 8:
                    v0('\'');
                    this.t = 0;
                    break;
                case ConnectionResult.SERVICE_INVALID /* 9 */:
                    v0('\"');
                    this.t = 0;
                    break;
                case 10:
                    x0();
                    this.t = 0;
                    break;
                case 12:
                    v0('\'');
                    if (i == 0) {
                        this.z[this.y - 1] = "<skipped>";
                    }
                    this.t = 0;
                    break;
                case 13:
                    v0('\"');
                    if (i == 0) {
                        this.z[this.y - 1] = "<skipped>";
                    }
                    this.t = 0;
                    break;
                case 14:
                    x0();
                    if (i == 0) {
                        this.z[this.y - 1] = "<skipped>";
                    }
                    this.t = 0;
                    break;
                case 16:
                    this.p += this.v;
                    this.t = 0;
                    break;
                case 17:
                    break;
            }
            return;
        } while (i > 0);
        int[] iArr = this.A;
        int i2 = this.y - 1;
        iArr[i2] = iArr[i2] + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:145:0x01cd, code lost:
    
        r24 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0222, code lost:
    
        if (N(r14) != false) goto L125;
     */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0184 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x027e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x027f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int z() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 813
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ww1.z():int");
    }

    public final void z0(String str) throws r92 {
        throw new r92(str + R() + "\nSee " + "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("malformed-json"));
    }
}
