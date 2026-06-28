package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class m1 {
    public int a;
    public final Object b;
    public Object c;
    public Serializable d;
    public Object e;
    public Object f;

    public m1(xj3 xj3Var, km1 km1Var) {
        w80.L(km1Var, "HTTP parameters");
        this.b = xj3Var;
        f1 f1Var = (f1) km1Var;
        this.c = new nc2(f1Var.e(-1, "http.connection.max-line-length"), f1Var.e(-1, "http.connection.max-header-count"));
        this.e = bv.b;
        this.d = new ArrayList();
        this.a = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x007e, code lost:
    
        r8 = new defpackage.gj1[r12.size()];
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0088, code lost:
    
        if (r2 >= r12.size()) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0090, code lost:
    
        r8[r2] = new defpackage.cz((defpackage.b40) r12.get(r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0097, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x009a, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a4, code lost:
    
        throw new defpackage.e03(r8.getMessage());
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a5, code lost:
    
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.gj1[] c(defpackage.xj3 r8, int r9, int r10, defpackage.bv r11, java.util.ArrayList r12) throws defpackage.e03, defpackage.mc2 {
        /*
            java.lang.String r0 = "Session input buffer"
            defpackage.w80.L(r8, r0)
            java.lang.String r0 = "Line parser"
            defpackage.w80.L(r11, r0)
            java.lang.String r11 = "Header line list"
            defpackage.w80.L(r12, r11)
            r11 = 0
            r0 = r11
            r1 = r0
        L12:
            r2 = 0
            if (r0 != 0) goto L1d
            b40 r0 = new b40
            r3 = 64
            r0.<init>(r3)
            goto L1f
        L1d:
            r0.o = r2
        L1f:
            int r3 = r8.d(r0)
            r4 = -1
            if (r3 == r4) goto L7e
            int r3 = r0.o
            r4 = 1
            if (r3 >= r4) goto L2c
            goto L7e
        L2c:
            char[] r3 = r0.n
            char r3 = r3[r2]
            r5 = 9
            r6 = 32
            if (r3 == r6) goto L38
            if (r3 != r5) goto L68
        L38:
            if (r1 == 0) goto L68
        L3a:
            int r3 = r0.o
            if (r2 >= r3) goto L4a
            char[] r7 = r0.n
            char r7 = r7[r2]
            if (r7 == r6) goto L47
            if (r7 == r5) goto L47
            goto L4a
        L47:
            int r2 = r2 + 1
            goto L3a
        L4a:
            if (r10 <= 0) goto L5c
            int r5 = r1.o
            int r5 = r5 + r4
            int r5 = r5 + r3
            int r5 = r5 - r2
            if (r5 > r10) goto L54
            goto L5c
        L54:
            mc2 r8 = new mc2
            java.lang.String r9 = "Maximum line length limit exceeded"
            r8.<init>(r9)
            throw r8
        L5c:
            r1.a(r6)
            int r3 = r0.o
            int r3 = r3 - r2
            char[] r4 = r0.n
            r1.d(r4, r2, r3)
            goto L6d
        L68:
            r12.add(r0)
            r1 = r0
            r0 = r11
        L6d:
            if (r9 <= 0) goto L12
            int r2 = r12.size()
            if (r2 >= r9) goto L76
            goto L12
        L76:
            mc2 r8 = new mc2
            java.lang.String r9 = "Maximum header count exceeded"
            r8.<init>(r9)
            throw r8
        L7e:
            int r8 = r12.size()
            gj1[] r8 = new defpackage.gj1[r8]
        L84:
            int r9 = r12.size()
            if (r2 >= r9) goto La5
            java.lang.Object r9 = r12.get(r2)
            b40 r9 = (defpackage.b40) r9
            cz r10 = new cz     // Catch: defpackage.zs2 -> L9a
            r10.<init>(r9)     // Catch: defpackage.zs2 -> L9a
            r8[r2] = r10     // Catch: defpackage.zs2 -> L9a
            int r2 = r2 + 1
            goto L84
        L9a:
            r8 = move-exception
            e03 r9 = new e03
            java.lang.String r8 = r8.getMessage()
            r9.<init>(r8)
            throw r9
        La5:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m1.c(xj3, int, int, bv, java.util.ArrayList):gj1[]");
    }

    public static Boolean g(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Boolean h(String str, wz4 wz4Var, a25 a25Var) {
        List listY;
        Preconditions.checkNotNull(wz4Var);
        if (str != null && wz4Var.t() && wz4Var.B() != 1 && (wz4Var.B() != 7 ? wz4Var.u() : wz4Var.z() != 0)) {
            int iB = wz4Var.B();
            boolean zX = wz4Var.x();
            String strV = (zX || iB == 2 || iB == 7) ? wz4Var.v() : wz4Var.v().toUpperCase(Locale.ENGLISH);
            if (wz4Var.z() == 0) {
                listY = null;
            } else {
                listY = wz4Var.y();
                if (!zX) {
                    ArrayList arrayList = new ArrayList(listY.size());
                    Iterator it = listY.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((String) it.next()).toUpperCase(Locale.ENGLISH));
                    }
                    listY = Collections.unmodifiableList(arrayList);
                }
            }
            String str2 = iB == 2 ? strV : null;
            if (iB != 7 ? strV != null : listY != null && !listY.isEmpty()) {
                if (!zX && iB != 2) {
                    str = str.toUpperCase(Locale.ENGLISH);
                }
                switch (iB - 1) {
                    case 1:
                        if (str2 != null) {
                            try {
                                return Boolean.valueOf(Pattern.compile(str2, true != zX ? 66 : 0).matcher(str).matches());
                            } catch (PatternSyntaxException unused) {
                                if (a25Var != null) {
                                    a25Var.i.b(str2, "Invalid regular expression in REGEXP audience filter. expression");
                                }
                            }
                        }
                        break;
                    case 2:
                        return Boolean.valueOf(str.startsWith(strV));
                    case 3:
                        return Boolean.valueOf(str.endsWith(strV));
                    case 4:
                        return Boolean.valueOf(str.contains(strV));
                    case 5:
                        return Boolean.valueOf(str.equals(strV));
                    case 6:
                        if (listY != null) {
                            return Boolean.valueOf(listY.contains(str));
                        }
                        break;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0108  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Boolean i(java.math.BigDecimal r8, defpackage.rz4 r9, double r10) {
        /*
            Method dump skipped, instruction units count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m1.i(java.math.BigDecimal, rz4, double):java.lang.Boolean");
    }

    public im1 a() throws e03, mc2 {
        ArrayList arrayList = (ArrayList) this.d;
        xj3 xj3Var = (xj3) this.b;
        int i = this.a;
        if (i == 0) {
            try {
                this.f = b(xj3Var);
                this.a = 1;
            } catch (zs2 e) {
                throw new e03(e.getMessage(), e);
            }
        } else if (i != 1) {
            k21.n("Inconsistent parser state");
            return null;
        }
        nc2 nc2Var = (nc2) this.c;
        ((im1) this.f).setHeaders(c(xj3Var, nc2Var.o, nc2Var.n, (bv) this.e, arrayList));
        im1 im1Var = (im1) this.f;
        this.f = null;
        arrayList.clear();
        this.a = 0;
        return im1Var;
    }

    public abstract av b(xj3 xj3Var);

    public abstract int d();

    public abstract boolean e();

    public abstract boolean f();

    public m1(String str, int i) {
        this.b = str;
        this.a = i;
    }

    public m1(xj3 xj3Var, bv bvVar) {
        w80.L(xj3Var, "Session input buffer");
        this.b = xj3Var;
        this.e = bvVar == null ? bv.b : bvVar;
        this.c = nc2.p;
        this.d = new ArrayList();
        this.a = 0;
    }
}
