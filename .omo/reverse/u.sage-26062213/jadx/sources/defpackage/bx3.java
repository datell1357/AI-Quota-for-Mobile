package defpackage;

import java.net.InetAddress;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class bx3 implements cx3, gi0, hc2, p60, yv2, pa1, by3, qk2, qh, sh, a14, mg0, wt3, ie0, zm1, rp3 {
    public static final bx3 o = new bx3(0);
    public static final bx3 p = new bx3(1);
    public static final bx3 q = new bx3(2);
    public static final ef4 r = new ef4();
    public static final bx3 s = new bx3(5);
    public final /* synthetic */ int n;

    public bx3() {
        this.n = 13;
        new s82(16);
        long[] jArr = td3.a;
        new kg2();
    }

    public static final d50 k(bx3 bx3Var, String str) {
        d50 d50Var = new d50(str);
        d50.d.put(str, d50Var);
        return d50Var;
    }

    public static g00 m(String str) {
        if (str.length() % 2 != 0) {
            k21.l("Unexpected hex string: ".concat(str));
            return null;
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (mt1.g(str.charAt(i2 + 1)) + (mt1.g(str.charAt(i2)) << 4));
        }
        return new g00(bArr);
    }

    public static g00 o(String str) {
        str.getClass();
        byte[] bytes = str.getBytes(k40.a);
        bytes.getClass();
        g00 g00Var = new g00(bytes);
        g00Var.p = str;
        return g00Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0045, code lost:
    
        if (java.lang.Character.isHighSurrogate(r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0082, code lost:
    
        if (java.lang.Character.isLowSurrogate(r5) != false) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x006c A[EDGE_INSN: B:92:0x006c->B:46:0x006c BREAK  A[LOOP:2: B:47:0x006e->B:58:0x0085], EDGE_INSN: B:93:0x006c->B:46:0x006c BREAK  A[LOOP:2: B:47:0x006e->B:58:0x0085, LOOP_LABEL: LOOP:2: B:47:0x006e->B:58:0x0085]] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00a2 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean q(defpackage.nz0 r7, android.text.Editable r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bx3.q(nz0, android.text.Editable, int, int, boolean):boolean");
    }

    public static int r(ym1 ym1Var, ym1 ym1Var2) {
        int iB;
        int iB2;
        w80.L(ym1Var, "Planned route");
        boolean z = ym1Var.s;
        em1 em1Var = ym1Var.n;
        if (ym1Var2 != null) {
            boolean z2 = ym1Var2.s;
            em1 em1Var2 = ym1Var2.n;
            if (ym1Var2.b() >= 1) {
                if (ym1Var.b() > 1) {
                    if (ym1Var2.b() <= 1 || !em1Var.equals(em1Var2) || (iB = ym1Var.b()) < (iB2 = ym1Var2.b())) {
                        return -1;
                    }
                    for (int i = 0; i < iB2 - 1; i++) {
                        if (!ym1Var.f(i).equals(ym1Var2.f(i))) {
                            return -1;
                        }
                    }
                    if (iB > iB2) {
                        return 4;
                    }
                    if (ym1Var2.c() && !ym1Var.c()) {
                        return -1;
                    }
                    if (ym1Var2.g() && !ym1Var.g()) {
                        return -1;
                    }
                    if (ym1Var.c() && !ym1Var2.c()) {
                        return 3;
                    }
                    if (ym1Var.g() && !ym1Var2.g()) {
                        return 5;
                    }
                    if (z != z2) {
                        return -1;
                    }
                } else {
                    if (ym1Var2.b() > 1 || !em1Var.equals(em1Var2) || z != z2) {
                        return -1;
                    }
                    InetAddress inetAddress = ym1Var.o;
                    if (inetAddress != null && !inetAddress.equals(ym1Var2.o)) {
                        return -1;
                    }
                }
                return 0;
            }
        }
        return ym1Var.b() > 1 ? 2 : 1;
    }

    public static /* bridge */ lp4 s(Object obj) {
        rn4 rn4Var = (rn4) obj;
        lp4 lp4Var = rn4Var.zzc;
        if (lp4Var != lp4.f) {
            return lp4Var;
        }
        lp4 lp4VarA = lp4.a();
        rn4Var.zzc = lp4VarA;
        return lp4VarA;
    }

    public static boolean t(int i, e50 e50Var, Object obj) throws fo4 {
        cn4 cn4Var = (cn4) e50Var.d;
        int i2 = e50Var.a;
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            e50Var.R(0);
            ((lp4) obj).d(i3 << 3, Long.valueOf(cn4Var.r()));
            return true;
        }
        if (i4 == 1) {
            e50Var.R(1);
            ((lp4) obj).d((i3 << 3) | 1, Long.valueOf(cn4Var.t()));
            return true;
        }
        if (i4 == 2) {
            ((lp4) obj).d((i3 << 3) | 2, e50Var.Z());
            return true;
        }
        if (i4 != 3) {
            if (i4 == 4) {
                if (i != 0) {
                    return false;
                }
                q73.t("Protocol message end-group tag did not match expected tag.");
                return false;
            }
            if (i4 != 5) {
                q73.p();
                return false;
            }
            e50Var.R(5);
            ((lp4) obj).d(5 | (i3 << 3), Integer.valueOf(cn4Var.u()));
            return true;
        }
        lp4 lp4VarA = lp4.a();
        int i5 = i3 << 3;
        int i6 = i + 1;
        if (i6 >= 100) {
            q73.t("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return false;
        }
        while (e50Var.Y() != Integer.MAX_VALUE && t(i6, e50Var, lp4VarA)) {
        }
        if ((i5 | 4) != e50Var.a) {
            q73.t("Protocol message end-group tag did not match expected tag.");
            return false;
        }
        if (lp4VarA.e) {
            lp4VarA.e = false;
        }
        ((lp4) obj).d(i5 | 3, lp4VarA);
        return true;
    }

    @Override // defpackage.qh, defpackage.sh
    public float a() {
        return 0.0f;
    }

    @Override // defpackage.cx3
    public float c() {
        return Float.NaN;
    }

    @Override // defpackage.cx3
    public long d() {
        int i = t70.g;
        return t70.f;
    }

    @Override // defpackage.mg0
    public long e(long j, long j2) {
        if (Float.intBitsToFloat((int) (j >> 32)) <= Float.intBitsToFloat((int) (j2 >> 32)) && Float.intBitsToFloat((int) (j & 4294967295L)) <= Float.intBitsToFloat((int) (j2 & 4294967295L))) {
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(1.0f)) << 32) | (((long) Float.floatToRawIntBits(1.0f)) & 4294967295L);
            int i = sd3.a;
            return jFloatToRawIntBits;
        }
        float fA = ht4.a(j, j2);
        long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(fA)) << 32) | (((long) Float.floatToRawIntBits(fA)) & 4294967295L);
        int i2 = sd3.a;
        return jFloatToRawIntBits2;
    }

    @Override // defpackage.zm1
    public ym1 f(em1 em1Var, om1 om1Var, ul1 ul1Var) throws cm1 {
        if (em1Var == null) {
            throw new e03(cm1.a("Target host is not specified"));
        }
        v63 v63VarD = rl1.c(ul1Var).d();
        InetAddress inetAddress = v63VarD.p;
        em1 em1VarN = v63VarD.o;
        if (em1VarN == null) {
            em1VarN = n(em1Var);
        }
        if (em1Var.p <= 0) {
            try {
                em1Var = new em1(em1Var.n, mj1.t(em1Var), em1Var.q);
            } catch (r74 e) {
                throw new cm1(e.getMessage());
            }
        }
        boolean zEqualsIgnoreCase = em1Var.q.equalsIgnoreCase("https");
        return em1VarN == null ? new ym1(em1Var, inetAddress, zEqualsIgnoreCase) : new ym1(em1Var, inetAddress, em1VarN, zEqualsIgnoreCase);
    }

    @Override // defpackage.cx3
    public zf5 g() {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
    @Override // defpackage.ie0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean h(defpackage.vm1 r10, defpackage.ul1 r11) {
        /*
            Method dump skipped, instruction units count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bx3.h(vm1, ul1):boolean");
    }

    @Override // defpackage.qh
    public void i(gb2 gb2Var, int i, int[] iArr, hy1 hy1Var, int[] iArr2) {
        if (hy1Var == hy1.n) {
            th.b(i, iArr, iArr2, false);
        } else {
            th.b(i, iArr, iArr2, true);
        }
    }

    @Override // defpackage.sh
    public void j(int i, gb2 gb2Var, int[] iArr, int[] iArr2) {
        th.b(i, iArr, iArr2, false);
    }

    @Override // defpackage.hc2
    public boolean l(ub2 ub2Var) {
        return false;
    }

    public em1 n(em1 em1Var) {
        return null;
    }

    public synchronized d50 p(String str) {
        d50 d50Var;
        try {
            str.getClass();
            LinkedHashMap linkedHashMap = d50.d;
            d50Var = (d50) linkedHashMap.get(str);
            if (d50Var == null) {
                d50Var = (d50) linkedHashMap.get(gt3.y0(str, "TLS_", false) ? "SSL_".concat(str.substring(4)) : gt3.y0(str, "SSL_", false) ? "TLS_".concat(str.substring(4)) : str);
                if (d50Var == null) {
                    d50Var = new d50(str);
                }
                linkedHashMap.put(str, d50Var);
            }
        } catch (Throwable th) {
            throw th;
        }
        return d50Var;
    }

    @Override // defpackage.wt3
    public ow3 then(Object obj) {
        return mt1.t(Boolean.TRUE);
    }

    public String toString() {
        switch (this.n) {
            case 12:
                return "Arrangement#SpaceBetween";
            case 19:
                return "Empty";
            default:
                return super.toString();
        }
    }

    public bx3(mj1 mj1Var) {
        this.n = 26;
    }

    public /* synthetic */ bx3(int i) {
        this.n = i;
    }

    public bx3(q9 q9Var) {
        this.n = 8;
        xv2.a.getClass();
    }

    @Override // defpackage.hc2
    public void b(ub2 ub2Var, boolean z) {
    }
}
