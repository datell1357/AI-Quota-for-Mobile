package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ai4 {
    public static final LinkedHashMap a(ArrayList arrayList) {
        String str = bt2.o;
        bt2 bt2VarK = qz0.k("/");
        js2[] js2VarArr = {new js2(bt2VarK, new wh4(bt2VarK, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, 65532))};
        LinkedHashMap linkedHashMap = new LinkedHashMap(oa2.a0(1));
        oa2.c0(linkedHashMap, js2VarArr);
        for (wh4 wh4Var : o70.y0(arrayList, new lh0(19))) {
            if (((wh4) linkedHashMap.put(wh4Var.a, wh4Var)) == null) {
                while (true) {
                    bt2 bt2Var = wh4Var.a;
                    bt2 bt2VarC = bt2Var.c();
                    if (bt2VarC != null) {
                        wh4 wh4Var2 = (wh4) linkedHashMap.get(bt2VarC);
                        if (wh4Var2 != null) {
                            wh4Var2.q.add(bt2Var);
                            break;
                        }
                        wh4 wh4Var3 = new wh4(bt2VarC, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, 65532);
                        linkedHashMap.put(bt2VarC, wh4Var3);
                        wh4Var3.q.add(bt2Var);
                        wh4Var = wh4Var3;
                    }
                }
            }
        }
        return linkedHashMap;
    }

    public static final String b(int i) {
        qj0.z(16);
        String string = Integer.toString(i, 16);
        string.getClass();
        return "0x".concat(string);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:18|134|19|(3:21|(2:53|54)(4:24|146|25|(2:27|(2:36|37)(6:31|132|32|33|35|(1:49)(1:50)))(2:39|40))|(1:65)(1:66))|142|55|56|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x013b, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01b6 A[Catch: all -> 0x014a, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x014a, blocks: (B:3:0x000d, B:5:0x001b, B:6:0x0023, B:16:0x007a, B:18:0x0084, B:66:0x0149, B:62:0x0142, B:69:0x014e, B:97:0x01a9, B:100:0x01b6, B:95:0x01a4, B:107:0x01c2, B:110:0x01ce, B:111:0x01d5, B:112:0x01d6, B:113:0x01d9, B:114:0x01da, B:115:0x01ef, B:59:0x013d, B:92:0x019f, B:19:0x008d, B:21:0x0096, B:24:0x00a7, B:50:0x012c, B:46:0x0125, B:53:0x0130, B:54:0x0135, B:7:0x002c, B:9:0x0035, B:15:0x005b, B:104:0x01ba, B:105:0x01bf), top: B:131:0x000d, inners: #0, #1, #6, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0149 A[Catch: all -> 0x014a, TryCatch #4 {all -> 0x014a, blocks: (B:3:0x000d, B:5:0x001b, B:6:0x0023, B:16:0x007a, B:18:0x0084, B:66:0x0149, B:62:0x0142, B:69:0x014e, B:97:0x01a9, B:100:0x01b6, B:95:0x01a4, B:107:0x01c2, B:110:0x01ce, B:111:0x01d5, B:112:0x01d6, B:113:0x01d9, B:114:0x01da, B:115:0x01ef, B:59:0x013d, B:92:0x019f, B:19:0x008d, B:21:0x0096, B:24:0x00a7, B:50:0x012c, B:46:0x0125, B:53:0x0130, B:54:0x0135, B:7:0x002c, B:9:0x0035, B:15:0x005b, B:104:0x01ba, B:105:0x01bf), top: B:131:0x000d, inners: #0, #1, #6, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01a9 A[Catch: all -> 0x014a, TRY_LEAVE, TryCatch #4 {all -> 0x014a, blocks: (B:3:0x000d, B:5:0x001b, B:6:0x0023, B:16:0x007a, B:18:0x0084, B:66:0x0149, B:62:0x0142, B:69:0x014e, B:97:0x01a9, B:100:0x01b6, B:95:0x01a4, B:107:0x01c2, B:110:0x01ce, B:111:0x01d5, B:112:0x01d6, B:113:0x01d9, B:114:0x01da, B:115:0x01ef, B:59:0x013d, B:92:0x019f, B:19:0x008d, B:21:0x0096, B:24:0x00a7, B:50:0x012c, B:46:0x0125, B:53:0x0130, B:54:0x0135, B:7:0x002c, B:9:0x0035, B:15:0x005b, B:104:0x01ba, B:105:0x01bf), top: B:131:0x000d, inners: #0, #1, #6, #10 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final defpackage.xh4 c(defpackage.bt2 r24, defpackage.r51 r25, defpackage.pe1 r26) {
        /*
            Method dump skipped, instruction units count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ai4.c(bt2, r51, pe1):xh4");
    }

    public static final wh4 d(final d23 d23Var) throws IOException {
        int iR = d23Var.r();
        if (iR != 33639248) {
            throw new IOException("bad zip: expected " + b(33639248) + " but was " + b(iR));
        }
        d23Var.skip(4L);
        short sA = d23Var.A();
        int i = sA & 65535;
        if ((sA & 1) != 0) {
            p61.k("unsupported zip: general purpose bit flag=".concat(b(i)));
            return null;
        }
        int iA = d23Var.A() & 65535;
        int iA2 = d23Var.A() & 65535;
        int iA3 = d23Var.A() & 65535;
        long jR = ((long) d23Var.r()) & 4294967295L;
        final v33 v33Var = new v33();
        v33Var.n = ((long) d23Var.r()) & 4294967295L;
        final v33 v33Var2 = new v33();
        v33Var2.n = ((long) d23Var.r()) & 4294967295L;
        int iA4 = d23Var.A() & 65535;
        int iA5 = d23Var.A() & 65535;
        int iA6 = d23Var.A() & 65535;
        d23Var.skip(8L);
        final v33 v33Var3 = new v33();
        v33Var3.n = ((long) d23Var.r()) & 4294967295L;
        String strB = d23Var.B(iA4);
        if (zs3.C0(strB, (char) 0)) {
            p61.k("bad zip: filename contains 0x00");
            return null;
        }
        long j = v33Var2.n == 4294967295L ? 8L : 0L;
        if (v33Var.n == 4294967295L) {
            j += 8;
        }
        if (v33Var3.n == 4294967295L) {
            j += 8;
        }
        final long j2 = j;
        final w33 w33Var = new w33();
        final w33 w33Var2 = new w33();
        final w33 w33Var3 = new w33();
        final s33 s33Var = new s33();
        e(d23Var, iA5, new df1() { // from class: yh4
            @Override // defpackage.df1
            public final Object f(Object obj, Object obj2) throws IOException {
                int iIntValue = ((Integer) obj).intValue();
                long jLongValue = ((Long) obj2).longValue();
                d23 d23Var2 = d23Var;
                if (iIntValue == 1) {
                    s33 s33Var2 = s33Var;
                    if (s33Var2.n) {
                        p61.k("bad zip: zip64 extra repeated");
                        return null;
                    }
                    s33Var2.n = true;
                    if (jLongValue < j2) {
                        p61.k("bad zip: zip64 extra too short");
                        return null;
                    }
                    v33 v33Var4 = v33Var2;
                    long jZ = v33Var4.n;
                    if (jZ == 4294967295L) {
                        jZ = d23Var2.z();
                    }
                    v33Var4.n = jZ;
                    v33 v33Var5 = v33Var;
                    v33Var5.n = v33Var5.n == 4294967295L ? d23Var2.z() : 0L;
                    v33 v33Var6 = v33Var3;
                    v33Var6.n = v33Var6.n == 4294967295L ? d23Var2.z() : 0L;
                } else if (iIntValue == 10) {
                    if (jLongValue < 4) {
                        p61.k("bad zip: NTFS extra too short");
                        return null;
                    }
                    d23Var2.skip(4L);
                    ai4.e(d23Var2, (int) (jLongValue - 4), new zh4(w33Var, d23Var2, w33Var2, w33Var3));
                }
                return t64.a;
            }
        });
        if (j2 > 0 && !s33Var.n) {
            p61.k("bad zip: zip64 extra required but absent");
            return null;
        }
        String strB2 = d23Var.B(iA6);
        String str = bt2.o;
        return new wh4(qz0.k("/").e(strB), gt3.r0(strB, "/", false), strB2, jR, v33Var.n, v33Var2.n, iA, v33Var3.n, iA3, iA2, (Long) w33Var.n, (Long) w33Var2.n, (Long) w33Var3.n, 57344);
    }

    public static final void e(d23 d23Var, int i, df1 df1Var) throws IOException {
        sy syVar = d23Var.o;
        long j = i;
        while (j != 0) {
            if (j < 4) {
                p61.k("bad zip: truncated header in extra field");
                return;
            }
            int iA = d23Var.A() & 65535;
            long jA = ((long) d23Var.A()) & 65535;
            long j2 = j - 4;
            if (j2 < jA) {
                p61.k("bad zip: truncated value in extra field");
                return;
            }
            d23Var.d0(jA);
            long j3 = syVar.o;
            df1Var.f(Integer.valueOf(iA), Long.valueOf(jA));
            long j4 = (syVar.o + jA) - j3;
            if (j4 < 0) {
                p61.k(di0.q(iA, "unsupported zip: too many bytes processed for "));
                return;
            } else {
                if (j4 > 0) {
                    syVar.skip(j4);
                }
                j = j2 - jA;
            }
        }
    }

    public static final wh4 f(d23 d23Var, wh4 wh4Var) throws IOException {
        int iR = d23Var.r();
        if (iR != 67324752) {
            throw new IOException("bad zip: expected " + b(67324752) + " but was " + b(iR));
        }
        d23Var.skip(2L);
        short sA = d23Var.A();
        int i = sA & 65535;
        if ((sA & 1) != 0) {
            p61.k("unsupported zip: general purpose bit flag=".concat(b(i)));
            return null;
        }
        d23Var.skip(18L);
        long jA = ((long) d23Var.A()) & 65535;
        int iA = d23Var.A() & 65535;
        d23Var.skip(jA);
        if (wh4Var == null) {
            d23Var.skip(iA);
            return null;
        }
        w33 w33Var = new w33();
        w33 w33Var2 = new w33();
        w33 w33Var3 = new w33();
        e(d23Var, iA, new zh4(d23Var, w33Var, w33Var2, w33Var3));
        return new wh4(wh4Var.a, wh4Var.b, wh4Var.c, wh4Var.d, wh4Var.e, wh4Var.f, wh4Var.g, wh4Var.h, wh4Var.i, wh4Var.j, wh4Var.k, wh4Var.l, wh4Var.m, (Integer) w33Var.n, (Integer) w33Var2.n, (Integer) w33Var3.n);
    }

    public static void g(String str, int i, List list) {
        if (list.size() == i) {
            return;
        }
        q73.f(i, list.size(), str, " operation requires ");
    }

    public static void h(String str, int i, List list) {
        if (list.size() >= i) {
            return;
        }
        q73.f(i, list.size(), str, " operation requires at least ");
    }

    public static void i(int i, String str, ArrayList arrayList) {
        if (arrayList.size() <= i) {
            return;
        }
        q73.f(i, arrayList.size(), str, " operation requires at most ");
    }

    public static boolean j(ls4 ls4Var) {
        if (ls4Var == null) {
            return false;
        }
        Double dZzd = ls4Var.zzd();
        return !dZzd.isNaN() && dZzd.doubleValue() >= 0.0d && dZzd.equals(Double.valueOf(Math.floor(dZzd.doubleValue())));
    }

    public static fu4 k(String str) {
        fu4 fu4Var;
        if (str == null || str.isEmpty()) {
            fu4Var = null;
        } else {
            fu4Var = (fu4) fu4.y0.get(Integer.valueOf(Integer.parseInt(str)));
        }
        if (fu4Var != null) {
            return fu4Var;
        }
        k21.f(di0.u("Unsupported commandId ", str));
        return null;
    }

    public static boolean l(ls4 ls4Var, ls4 ls4Var2) {
        if (!ls4Var.getClass().equals(ls4Var2.getClass())) {
            return false;
        }
        if ((ls4Var instanceof vs4) || (ls4Var instanceof fs4)) {
            return true;
        }
        if (!(ls4Var instanceof eq4)) {
            return ls4Var instanceof ss4 ? ls4Var.zzc().equals(ls4Var2.zzc()) : ls4Var instanceof oo4 ? ls4Var.zze().equals(ls4Var2.zze()) : ls4Var == ls4Var2;
        }
        if (Double.isNaN(ls4Var.zzd().doubleValue()) || Double.isNaN(ls4Var2.zzd().doubleValue())) {
            return false;
        }
        return ls4Var.zzd().equals(ls4Var2.zzd());
    }

    public static int m(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d) || d == 0.0d) {
            return 0;
        }
        return (int) ((((double) (d > 0.0d ? 1 : -1)) * Math.floor(Math.abs(d))) % 4.294967296E9d);
    }

    public static double n(double d) {
        if (Double.isNaN(d)) {
            return 0.0d;
        }
        if (Double.isInfinite(d) || d == 0.0d || d == 0.0d) {
            return d;
        }
        return ((double) (d > 0.0d ? 1 : -1)) * Math.floor(Math.abs(d));
    }

    public static Object o(ls4 ls4Var) {
        if (ls4.g.equals(ls4Var)) {
            return null;
        }
        if (ls4.f.equals(ls4Var)) {
            return "";
        }
        if (ls4Var instanceof cs4) {
            return p((cs4) ls4Var);
        }
        if (!(ls4Var instanceof vn4)) {
            return !ls4Var.zzd().isNaN() ? ls4Var.zzd() : ls4Var.zzc();
        }
        ArrayList arrayList = new ArrayList();
        vn4 vn4Var = (vn4) ls4Var;
        int i = 0;
        while (i < vn4Var.l()) {
            if (i >= vn4Var.l()) {
                q73.l(di0.r(i, "Out of bounds index: ", new StringBuilder(String.valueOf(i).length() + 21)));
                return null;
            }
            int i2 = i + 1;
            Object objO = o(vn4Var.m(i));
            if (objO != null) {
                arrayList.add(objO);
            }
            i = i2;
        }
        return arrayList;
    }

    public static HashMap p(cs4 cs4Var) {
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList(cs4Var.n.keySet());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            String str = (String) obj;
            Object objO = o(cs4Var.d(str));
            if (objO != null) {
                map.put(str, objO);
            }
        }
        return map;
    }

    public static void q(qd1 qd1Var) {
        int iM = m(qd1Var.S("runtime.counter").zzd().doubleValue() + 1.0d);
        if (iM <= 1000000) {
            qd1Var.Q("runtime.counter", new eq4(Double.valueOf(iM)));
        } else {
            k21.n("Instructions allowed exceeded");
        }
    }
}
