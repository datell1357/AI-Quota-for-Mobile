package defpackage;

import android.R;
import com.google.android.gms.common.api.Api;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Set;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class qn0 {
    public static final ka0 a = new ka0(-399272748, false, new sq(28));
    public static final ka0 b = new ka0(1102827572, false, new sq(29));
    public static final c71 c = new c71(0);
    public static final ll3 d = ll3.p;
    public static final float e = 8.0f;
    public static final float f = 24.0f;
    public static final dh5 g;
    public static final eh5 h;
    public static so1 i;
    public static km3 j;

    static {
        int i2 = 1;
        g = new dh5(i2);
        h = new eh5(i2);
    }

    public static final long A(int i2, l33 l33Var, l33 l33Var2) {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        if (i2 == 3) {
            f2 = l33Var.a;
            f3 = l33Var2.c;
        } else if (i2 == 4) {
            f2 = l33Var2.a;
            f3 = l33Var.c;
        } else if (i2 == 5) {
            f2 = l33Var.b;
            f3 = l33Var2.d;
        } else {
            if (i2 != 6) {
                k21.n("This function should only be used for 2-D focus search");
                return 0L;
            }
            f2 = l33Var2.b;
            f3 = l33Var.d;
        }
        float f7 = f2 - f3;
        if (f7 < 0.0f) {
            f7 = 0.0f;
        }
        long j2 = (long) f7;
        if (i2 == 3 || i2 == 4) {
            float f8 = l33Var.b;
            f4 = ((l33Var.d - f8) / 2.0f) + f8;
            f5 = l33Var2.b;
            f6 = l33Var2.d;
        } else {
            if (i2 != 5 && i2 != 6) {
                k21.n("This function should only be used for 2-D focus search");
                return 0L;
            }
            float f9 = l33Var.a;
            f4 = ((l33Var.c - f9) / 2.0f) + f9;
            f5 = l33Var2.a;
            f6 = l33Var2.c;
        }
        long j3 = (long) (f4 - (((f6 - f5) / 2.0f) + f5));
        return (j3 * j3) + (13 * j2 * j2);
    }

    public static final void B() {
        try {
            if (j == null) {
                e61 e61VarB = e61.b();
                e61VarB.a();
                km3 km3Var = (km3) ((pl0) ((z61) e61VarB.d.a(z61.class))).o.get();
                km3Var.getClass();
                j = km3Var;
            }
            km3 km3Var2 = j;
            if (km3Var2 == null) {
                nt1.X("sharedSessionRepository");
                throw null;
            }
            if (km3Var2.i) {
                if (km3Var2 != null) {
                    km3Var2.b();
                } else {
                    nt1.X("sharedSessionRepository");
                    throw null;
                }
            }
        } catch (Exception unused) {
        }
    }

    public static final nd2 C(nd2 nd2Var, pe1 pe1Var) {
        return nd2Var.c(new cp2(pe1Var));
    }

    public static final byte[] D(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(8192, inputStream.available()));
        byte[] bArr = new byte[8192];
        int i2 = inputStream.read(bArr);
        while (i2 >= 0) {
            byteArrayOutputStream.write(bArr, 0, i2);
            i2 = inputStream.read(bArr);
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArray.getClass();
        return byteArray;
    }

    public static final gc3 E(ag1 ag1Var) {
        ag1Var.W(1967007413);
        Object[] objArr = new Object[0];
        Object objK = ag1Var.K();
        if (objK == rb0.a) {
            objK = new t52(21);
            ag1Var.g0(objK);
        }
        gc3 gc3Var = (gc3) n44.J0(objArr, gc3.r, (ne1) objK, ag1Var, 384);
        gc3Var.p = (ic3) ag1Var.j(kc3.a);
        ag1Var.p(false);
        return gc3Var;
    }

    public static String F(y84 y84Var) {
        y84Var.getClass();
        String lowerCase = y84Var.name().toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return lowerCase.concat("_service_enabled");
    }

    public static int G(long j2) {
        if (j2 > 2147483647L) {
            return Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        if (j2 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j2;
    }

    public static final boolean H(int i2, yc ycVar, ka1 ka1Var, l33 l33Var) {
        ka1 ka1VarN;
        ug2 ug2Var = new ug2(new ka1[16]);
        if (!ka1Var.n.A) {
            ar1.b("visitChildren called on an unattached node");
        }
        ug2 ug2Var2 = new ug2(new md2[16]);
        md2 md2Var = ka1Var.n;
        md2 md2Var2 = md2Var.s;
        if (md2Var2 == null) {
            w80.c(ug2Var2, md2Var);
        } else {
            ug2Var2.c(md2Var2);
        }
        while (true) {
            int i3 = ug2Var2.p;
            if (i3 == 0) {
                break;
            }
            md2 md2VarG = (md2) ug2Var2.l(i3 - 1);
            if ((md2VarG.q & 1024) == 0) {
                w80.c(ug2Var2, md2VarG);
            } else {
                while (true) {
                    if (md2VarG == null) {
                        break;
                    }
                    if ((md2VarG.p & 1024) != 0) {
                        ug2 ug2Var3 = null;
                        while (md2VarG != null) {
                            if (md2VarG instanceof ka1) {
                                ka1 ka1Var2 = (ka1) md2VarG;
                                if (ka1Var2.A) {
                                    ug2Var.c(ka1Var2);
                                }
                            } else if ((md2VarG.p & 1024) != 0 && (md2VarG instanceof kr0)) {
                                int i4 = 0;
                                for (md2 md2Var3 = ((kr0) md2VarG).C; md2Var3 != null; md2Var3 = md2Var3.s) {
                                    if ((md2Var3.p & 1024) != 0) {
                                        i4++;
                                        if (i4 == 1) {
                                            md2VarG = md2Var3;
                                        } else {
                                            if (ug2Var3 == null) {
                                                ug2Var3 = new ug2(new md2[16]);
                                            }
                                            if (md2VarG != null) {
                                                ug2Var3.c(md2VarG);
                                                md2VarG = null;
                                            }
                                            ug2Var3.c(md2Var3);
                                        }
                                    }
                                }
                                if (i4 == 1) {
                                }
                            }
                            md2VarG = w80.g(ug2Var3);
                        }
                    } else {
                        md2VarG = md2VarG.s;
                    }
                }
            }
        }
        while (ug2Var.p != 0 && (ka1VarN = n(ug2Var, l33Var, i2)) != null) {
            if (ka1VarN.I0().a) {
                return ((Boolean) ycVar.k(ka1VarN)).booleanValue();
            }
            if (r(i2, ycVar, ka1VarN, l33Var)) {
                return true;
            }
            ug2Var.k(ka1VarN);
        }
        return false;
    }

    public static final String I(dh0 dh0Var) {
        Object f83Var;
        if (dh0Var instanceof su0) {
            return ((su0) dh0Var).toString();
        }
        try {
            f83Var = dh0Var + '@' + u(dh0Var);
        } catch (Throwable th) {
            f83Var = new f83(th);
        }
        if (g83.a(f83Var) != null) {
            f83Var = dh0Var.getClass().getName() + '@' + u(dh0Var);
        }
        return (String) f83Var;
    }

    public static String J(String str) {
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            if (cCharAt >= 'A' && cCharAt <= 'Z') {
                char[] charArray = str.toCharArray();
                while (i2 < length) {
                    char c2 = charArray[i2];
                    if (c2 >= 'A' && c2 <= 'Z') {
                        charArray[i2] = (char) (c2 ^ ' ');
                    }
                    i2++;
                }
                return String.valueOf(charArray);
            }
            i2++;
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [ib0, y13] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    public static final ArrayList K(tn3 tn3Var, int i2, Integer num) {
        ?? y13Var = new y13(tn3Var);
        int iQ = tn3Var.q(i2);
        vf1 vf1VarA = tn3Var.a(i2);
        while (i2 >= 0) {
            y13Var.n(tn3Var.i(i2), tn3Var.k(i2) ? tn3Var.p(tn3Var.b, i2) : rb0.a, tn3Var.a.h(i2), num);
            if (iQ >= 0) {
                vf1 vf1Var = vf1VarA;
                vf1VarA = tn3Var.a(iQ);
                i2 = iQ;
                iQ = tn3Var.q(iQ);
                num = vf1Var;
            } else {
                i2 = iQ;
                num = vf1VarA;
            }
        }
        return (ArrayList) y13Var.a;
    }

    public static final Boolean L(int i2, yc ycVar, ka1 ka1Var, l33 l33Var) {
        int iOrdinal = ka1Var.L0().ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                ka1 ka1VarA = gg4.A(ka1Var);
                if (ka1VarA == null) {
                    k21.n("ActiveParent must have a focusedChild");
                    return null;
                }
                int iOrdinal2 = ka1VarA.L0().ordinal();
                if (iOrdinal2 != 0) {
                    if (iOrdinal2 == 1) {
                        Boolean boolL = L(i2, ycVar, ka1VarA, l33Var);
                        if (!nt1.g(boolL, Boolean.FALSE)) {
                            return boolL;
                        }
                        if (l33Var == null) {
                            if (ka1VarA.L0() != fa1.o) {
                                k21.n("Searching for active node in inactive hierarchy");
                                return null;
                            }
                            ka1 ka1VarU = gg4.u(ka1VarA);
                            if (ka1VarU == null) {
                                k21.n("ActiveParent must have a focusedChild");
                                return null;
                            }
                            l33Var = gg4.v(ka1VarU);
                        }
                        return Boolean.valueOf(r(i2, ycVar, ka1Var, l33Var));
                    }
                    if (iOrdinal2 != 2) {
                        if (iOrdinal2 != 3) {
                            p61.x();
                            return null;
                        }
                        k21.n("ActiveParent must have a focusedChild");
                        return null;
                    }
                }
                if (l33Var == null) {
                    l33Var = gg4.v(ka1VarA);
                }
                return Boolean.valueOf(r(i2, ycVar, ka1Var, l33Var));
            }
            if (iOrdinal != 2) {
                if (iOrdinal == 3) {
                    return ka1Var.I0().a ? (Boolean) ycVar.k(ka1Var) : l33Var == null ? Boolean.valueOf(o(ka1Var, i2, ycVar)) : Boolean.valueOf(H(i2, ycVar, ka1Var, l33Var));
                }
                p61.x();
                return null;
            }
        }
        return Boolean.valueOf(o(ka1Var, i2, ycVar));
    }

    public static fh5 M(Set set) {
        fh5 fh5Var = new fh5();
        fh5Var.d = h;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            og5 og5Var = (og5) it.next();
            hm4.a(og5Var, "key");
            boolean z = og5Var.c;
            HashMap map = fh5Var.b;
            HashMap map2 = fh5Var.a;
            if (!z) {
                map.remove(og5Var);
                map2.put(og5Var, fh5.e);
            } else {
                if (!z) {
                    k21.f("key must be repeating");
                    return null;
                }
                map2.remove(og5Var);
                map.put(og5Var, fh5.f);
            }
        }
        return fh5Var;
    }

    public static final void a(n14 n14Var, nd2 nd2Var, pe1 pe1Var, cw cwVar, pe1 pe1Var2, ka0 ka0Var, ag1 ag1Var, int i2) {
        int i3;
        ag1Var.X(511725103);
        if ((i2 & 6) == 0) {
            i3 = (ag1Var.f(n14Var) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= ag1Var.f(nd2Var) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= ag1Var.h(pe1Var) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= ag1Var.f(cwVar) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= ag1Var.h(pe1Var2) ? 16384 : 8192;
        }
        if ((i2 & 196608) == 0) {
            i3 |= ag1Var.h(ka0Var) ? 131072 : 65536;
        }
        if (ag1Var.N(i3 & 1, (74899 & i3) != 74898)) {
            Object objK = ag1Var.K();
            if (objK == rb0.a) {
                objK = l9.y;
                ag1Var.g0(objK);
            }
            b(n14Var, nd2Var, pe1Var, cwVar, pe1Var2, (pe1) objK, ka0Var, ag1Var, 196608 | (i3 & 14) | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | ((i3 << 3) & 3670016));
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new td(n14Var, nd2Var, pe1Var, cwVar, pe1Var2, ka0Var, i2);
        }
    }

    public static final void b(n14 n14Var, nd2 nd2Var, pe1 pe1Var, cw cwVar, pe1 pe1Var2, pe1 pe1Var3, ka0 ka0Var, ag1 ag1Var, int i2) {
        pe1 pe1Var4;
        ag1 ag1Var2;
        ws2 ws2Var;
        j14 j14Var;
        Object obj;
        kg2 kg2Var;
        j14 j14Var2;
        he heVar;
        gp3 gp3Var;
        gp3 gp3Var2;
        j14 j14VarM;
        ag1 ag1Var3;
        boolean z;
        int i3;
        int i4;
        ag1Var.X(1935038908);
        int i5 = (i2 & 6) == 0 ? (ag1Var.f(n14Var) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i5 |= ag1Var.f(nd2Var) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i5 |= ag1Var.h(pe1Var) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i5 |= ag1Var.f(cwVar) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i5 |= ag1Var.h(pe1Var2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i5 |= ag1Var.h(pe1Var3) ? 131072 : 65536;
        }
        ka0 ka0Var2 = ka0Var;
        if ((1572864 & i2) == 0) {
            i5 |= ag1Var.h(ka0Var2) ? 1048576 : 524288;
        }
        if (ag1Var.N(i5 & 1, (599187 & i5) != 599186)) {
            int i6 = i5 & 14;
            boolean z2 = i6 == 4;
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            if (z2 || objK == bx3Var) {
                objK = new he(n14Var, cwVar);
                ag1Var.g0(objK);
            }
            he heVar2 = (he) objK;
            boolean z3 = i6 == 4;
            Object objK2 = ag1Var.K();
            Object obj2 = objK2;
            if (z3 || objK2 == bx3Var) {
                Object[] objArr = {n14Var.a.l()};
                gp3 gp3Var3 = new gp3();
                gp3Var3.addAll(ji.c0(objArr));
                ag1Var.g0(gp3Var3);
                obj2 = gp3Var3;
            }
            gp3 gp3Var4 = (gp3) obj2;
            ws2 ws2Var2 = n14Var.e;
            ws2 ws2Var3 = n14Var.d;
            int i7 = i5;
            ib0 ib0Var = n14Var.a;
            boolean zF = ag1Var.f(ws2Var2.getValue()) | (i6 == 4);
            Object objK3 = ag1Var.K();
            if (zF || objK3 == bx3Var) {
                long[] jArr = td3.a;
                objK3 = new kg2();
                ag1Var.g0(objK3);
            }
            kg2 kg2Var2 = (kg2) objK3;
            if (!gp3Var4.contains(ib0Var.l())) {
                gp3Var4.clear();
                gp3Var4.add(ib0Var.l());
            }
            if (nt1.g(ib0Var.l(), ws2Var3.getValue()) && ws2Var2.getValue() == null) {
                if (gp3Var4.size() != 1 || !nt1.g(gp3Var4.get(0), ib0Var.l())) {
                    gp3Var4.clear();
                    gp3Var4.add(ib0Var.l());
                }
                if (kg2Var2.e != 1 || kg2Var2.c(ib0Var.l())) {
                    kg2Var2.a();
                }
                heVar2.b = cwVar;
            }
            Object value = ws2Var2.getValue();
            if (value == null || value.equals(ib0Var.l())) {
                ws2Var = ws2Var3;
            } else {
                ListIterator listIterator = gp3Var4.listIterator();
                int i8 = 0;
                while (true) {
                    xj1 xj1Var = (xj1) listIterator;
                    if (!xj1Var.hasNext()) {
                        ws2Var = ws2Var3;
                        i4 = -1;
                        break;
                    }
                    ws2Var = ws2Var3;
                    if (nt1.g(pe1Var2.k(xj1Var.next()), pe1Var2.k(value))) {
                        i4 = i8;
                        break;
                    } else {
                        i8++;
                        ws2Var3 = ws2Var;
                    }
                }
                if (i4 == -1) {
                    gp3Var4.add(value);
                } else if (!nt1.g(gp3Var4.get(i4), value)) {
                    gp3Var4.set(i4, value);
                }
            }
            if (!nt1.g(ib0Var.l(), ws2Var.getValue())) {
                ListIterator listIterator2 = gp3Var4.listIterator();
                int i9 = 0;
                while (true) {
                    xj1 xj1Var2 = (xj1) listIterator2;
                    if (!xj1Var2.hasNext()) {
                        i3 = -1;
                        break;
                    } else {
                        if (nt1.g(pe1Var2.k(xj1Var2.next()), pe1Var2.k(ws2Var.getValue()))) {
                            i3 = i9;
                            break;
                        }
                        i9++;
                    }
                }
                if (i3 == -1) {
                    gp3Var4.add(ws2Var.getValue());
                } else if (!nt1.g(gp3Var4.get(i3), ws2Var.getValue()) || i3 != gp3Var4.size() - 1) {
                    gp3Var4.remove(i3);
                    gp3Var4.add(ws2Var.getValue());
                }
            }
            Object value2 = ws2Var2.getValue();
            boolean zF2 = ag1Var.f(value2);
            Object objK4 = ag1Var.K();
            if (zF2 || objK4 == bx3Var) {
                objK4 = value2 != null ? new du2(heVar2, ws2Var.getValue(), value2) : null;
                ag1Var.g0(objK4);
            }
            du2 du2Var = (du2) objK4;
            boolean zF3 = ag1Var.f(du2Var) | ((i7 & 458752) == 131072);
            Object objK5 = ag1Var.K();
            if (!zF3 && objK5 != bx3Var) {
                obj = objK5;
                j14Var = null;
            } else if (du2Var != null && pe1Var3.k(du2Var) != null) {
                mk0.b();
                return;
            } else {
                j14Var = null;
                ag1Var.g0(null);
                obj = null;
            }
            if (obj != null) {
                mk0.b();
                return;
            }
            if (kg2Var2.b(ws2Var.getValue()) && kg2Var2.b(ib0Var.l()) && (value2 == null || kg2Var2.b(value2))) {
                ag1Var.W(-298958042);
                ag1Var.p(false);
                kg2Var = kg2Var2;
                j14Var2 = j14Var;
                heVar = heVar2;
                gp3Var = gp3Var4;
                pe1Var4 = pe1Var;
            } else {
                ag1Var.W(-302678073);
                kg2Var2.a();
                int size = gp3Var4.size();
                int i10 = 0;
                while (i10 < size) {
                    int i11 = size;
                    Object obj3 = gp3Var4.get(i10);
                    kg2 kg2Var3 = kg2Var2;
                    kg2Var3.m(obj3, qj0.U(427839334, new wd(obj3, n14Var, du2Var, pe1Var, heVar2, gp3Var4, ka0Var2), ag1Var));
                    i10++;
                    gp3Var4 = gp3Var4;
                    kg2Var2 = kg2Var3;
                    size = i11;
                    j14Var = j14Var;
                    ka0Var2 = ka0Var;
                }
                kg2Var = kg2Var2;
                j14Var2 = j14Var;
                heVar = heVar2;
                gp3Var = gp3Var4;
                pe1Var4 = pe1Var;
                ag1Var.p(false);
            }
            boolean zF4 = ag1Var.f(n14Var.f()) | ag1Var.f(heVar) | ag1Var.f(ws2Var2.getValue());
            Object objK6 = ag1Var.K();
            if (zF4 || objK6 == bx3Var) {
                objK6 = (ng0) pe1Var4.k(heVar);
                ag1Var.g0(objK6);
            }
            ng0 ng0Var = (ng0) objK6;
            n14 n14Var2 = heVar.a;
            boolean zF5 = ag1Var.f(heVar);
            Object objK7 = ag1Var.K();
            if (zF5 || objK7 == bx3Var) {
                objK7 = ca.A(Boolean.FALSE);
                ag1Var.g0(objK7);
            }
            pg2 pg2Var = (pg2) objK7;
            pg2 pg2VarE = ca.E(ng0Var.d, ag1Var);
            if (nt1.g(n14Var2.a.l(), n14Var2.d.getValue())) {
                pg2Var.setValue(Boolean.FALSE);
            } else if (pg2VarE.getValue() != null) {
                pg2Var.setValue(Boolean.TRUE);
            }
            boolean zBooleanValue = ((Boolean) pg2Var.getValue()).booleanValue();
            nd2 nd2Var2 = kd2.b;
            if (zBooleanValue) {
                ag1Var.W(1353077497);
                gp3Var2 = gp3Var;
                ag1 ag1Var4 = ag1Var;
                j14VarM = ht4.m(heVar.a, k30.t, null, ag1Var4, 0, 2);
                boolean zF6 = ag1Var4.f(j14VarM);
                Object objK8 = ag1Var4.K();
                if (zF6 || objK8 == bx3Var) {
                    objK8 = n44.d0(nd2Var2);
                    ag1Var4.g0(objK8);
                }
                nd2Var2 = (nd2) objK8;
                ag1Var4.p(false);
                ag1Var3 = ag1Var4;
            } else {
                ag1 ag1Var5 = ag1Var;
                gp3Var2 = gp3Var;
                ag1Var5.W(1353343539);
                ag1Var5.p(false);
                j14VarM = j14Var2;
                ag1Var3 = ag1Var5;
            }
            nd2 nd2VarC = nd2Var.c(nd2Var2.c(new de(j14VarM, pg2VarE, heVar)));
            Object objK9 = ag1Var3.K();
            if (objK9 == bx3Var) {
                objK9 = new zd(heVar);
                ag1Var3.g0(objK9);
            }
            zd zdVar = (zd) objK9;
            int iHashCode = Long.hashCode(ag1Var3.T);
            hu2 hu2VarL = ag1Var3.l();
            nd2 nd2VarH = is0.H(ag1Var3, nd2VarC);
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            ag1Var3.Z();
            if (ag1Var3.S) {
                ag1Var3.k(ic0Var);
            } else {
                ag1Var3.j0();
            }
            ht4.D(kb0.f, ag1Var3, zdVar);
            ht4.D(kb0.e, ag1Var3, hu2VarL);
            Integer numValueOf = Integer.valueOf(iHashCode);
            fd fdVar = kb0.g;
            if (ag1Var3.S) {
                ag1Var3.b(fdVar, numValueOf);
            }
            ht4.y(ag1Var3, kb0.h);
            ht4.D(kb0.d, ag1Var3, nd2VarH);
            ag1Var3.W(758586195);
            int size2 = gp3Var2.size();
            for (int i12 = 0; i12 < size2; i12++) {
                Object obj4 = gp3Var2.get(i12);
                ag1Var3.U(1420119555, pe1Var2.k(obj4));
                df1 df1Var = (df1) kg2Var.g(obj4);
                if (df1Var == null) {
                    ag1Var3.W(1074069702);
                    z = false;
                } else {
                    z = false;
                    ag1Var3.W(1420120731);
                    df1Var.f(ag1Var3, 0);
                }
                ag1Var3.p(z);
                ag1Var3.p(z);
            }
            ag1Var3.p(false);
            ag1Var3.p(true);
            ag1Var2 = ag1Var3;
        } else {
            pe1Var4 = pe1Var;
            ag1 ag1Var6 = ag1Var;
            ag1Var6.Q();
            ag1Var2 = ag1Var6;
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new xd(n14Var, nd2Var, pe1Var4, cwVar, pe1Var2, pe1Var3, ka0Var, i2);
        }
    }

    public static final void c(int i2) {
        if (i2 > 0) {
            return;
        }
        k21.f("px must be > 0.");
    }

    public static final l33 d(long j2, long j3) {
        int i2 = (int) (j2 >> 32);
        int i3 = (int) (j2 & 4294967295L);
        return new l33(Float.intBitsToFloat(i2), Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (j3 >> 32)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j3 & 4294967295L)) + Float.intBitsToFloat(i3));
    }

    public static final void e(a12 a12Var, Object obj, int i2, Object obj2, ag1 ag1Var, int i3) {
        ag1Var.X(1439843069);
        int i4 = (ag1Var.f(a12Var) ? 4 : 2) | i3 | (ag1Var.f(obj) ? 32 : 16) | (ag1Var.d(i2) ? 256 : 128) | (ag1Var.f(obj2) ? 2048 : 1024);
        if (ag1Var.N(i4 & 1, (i4 & 1171) != 1170)) {
            ((fc3) obj).e(obj2, qj0.U(980966366, new d02(i2, a12Var, obj2), ag1Var), ag1Var, 48);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ha0(a12Var, obj, i2, obj2, i3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object f(defpackage.yy3 r4, defpackage.ff1 r5, java.lang.Throwable r6, defpackage.fh0 r7) {
        /*
            boolean r0 = r7 instanceof defpackage.g81
            if (r0 == 0) goto L13
            r0 = r7
            g81 r0 = (defpackage.g81) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            g81 r0 = new g81
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.r
            int r1 = r0.s
            r2 = 1
            if (r1 == 0) goto L30
            if (r1 != r2) goto L29
            java.lang.Throwable r6 = r0.q
            defpackage.gg4.T(r7)     // Catch: java.lang.Throwable -> L27
            goto L40
        L27:
            r4 = move-exception
            goto L43
        L29:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            r4 = 0
            return r4
        L30:
            defpackage.gg4.T(r7)
            r0.q = r6     // Catch: java.lang.Throwable -> L27
            r0.s = r2     // Catch: java.lang.Throwable -> L27
            java.lang.Object r4 = r5.d(r4, r6, r0)     // Catch: java.lang.Throwable -> L27
            ri0 r5 = defpackage.ri0.n
            if (r4 != r5) goto L40
            return r5
        L40:
            t64 r4 = defpackage.t64.a
            return r4
        L43:
            if (r6 == 0) goto L4a
            if (r6 == r4) goto L4a
            defpackage.on4.j(r4, r6)
        L4a:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qn0.f(yy3, ff1, java.lang.Throwable, fh0):java.lang.Object");
    }

    public static final void g(Logger logger, nw3 nw3Var, sw3 sw3Var, String str) {
        logger.fine(sw3Var.b + ' ' + String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1)) + ": " + nw3Var.a);
    }

    public static final void h(j3 j3Var, gh3 gh3Var) {
        bh3 bh3Var = gh3Var.d;
        kg2 kg2Var = bh3Var.n;
        Object objG = bh3Var.n.g(lh3.y);
        if (objG == null) {
            objG = null;
        }
        q93 q93Var = (q93) objG;
        if (mt1.h(gh3Var)) {
            if (q93Var != null && q93Var.a == 8) {
                return;
            }
            Object objG2 = kg2Var.g(ah3.x);
            if (objG2 == null) {
                objG2 = null;
            }
            o2 o2Var = (o2) objG2;
            if (o2Var != null) {
                j3Var.a(new d3(null, R.id.accessibilityActionPageUp, o2Var.a, null));
            }
            Object objG3 = kg2Var.g(ah3.z);
            if (objG3 == null) {
                objG3 = null;
            }
            o2 o2Var2 = (o2) objG3;
            if (o2Var2 != null) {
                j3Var.a(new d3(null, R.id.accessibilityActionPageDown, o2Var2.a, null));
            }
            Object objG4 = kg2Var.g(ah3.y);
            if (objG4 == null) {
                objG4 = null;
            }
            o2 o2Var3 = (o2) objG4;
            if (o2Var3 != null) {
                j3Var.a(new d3(null, R.id.accessibilityActionPageLeft, o2Var3.a, null));
            }
            Object objG5 = kg2Var.g(ah3.A);
            if (objG5 == null) {
                objG5 = null;
            }
            o2 o2Var4 = (o2) objG5;
            if (o2Var4 != null) {
                j3Var.a(new d3(null, R.id.accessibilityActionPageRight, o2Var4.a, null));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0033, code lost:
    
        if (r11 >= r2) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
    
        if (r10 <= r7) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0041, code lost:
    
        if (r9 >= r6) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0048, code lost:
    
        if (r8 <= r5) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004a, code lost:
    
        if (r21 != 3) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004d, code lost:
    
        if (r21 != 4) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004f, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0050, code lost:
    
        if (r21 != 3) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0052, code lost:
    
        r1 = r11 - r19.c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0057, code lost:
    
        if (r21 != 4) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0059, code lost:
    
        r1 = r19.a - r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005d, code lost:
    
        if (r21 != 5) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x005f, code lost:
    
        r1 = r9 - r19.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0064, code lost:
    
        if (r21 != 6) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0066, code lost:
    
        r1 = r19.b - r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006d, code lost:
    
        if (r1 >= 0.0f) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006f, code lost:
    
        r1 = 0.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0071, code lost:
    
        if (r21 != 3) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0073, code lost:
    
        r11 = r11 - r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0075, code lost:
    
        if (r21 != 4) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0077, code lost:
    
        r11 = r2 - r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x007a, code lost:
    
        if (r21 != 5) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x007c, code lost:
    
        r11 = r9 - r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x007f, code lost:
    
        if (r21 != 6) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0081, code lost:
    
        r11 = r6 - r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0087, code lost:
    
        if (r11 >= 1.0f) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0089, code lost:
    
        r11 = 1.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x008c, code lost:
    
        if (r1 >= r11) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x008e, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x008f, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0090, code lost:
    
        defpackage.k21.n("This function should only be used for 2-D focus search");
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0093, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0094, code lost:
    
        defpackage.k21.n("This function should only be used for 2-D focus search");
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0097, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0098, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean i(defpackage.l33 r18, defpackage.l33 r19, defpackage.l33 r20, int r21) {
        /*
            r0 = r18
            r1 = r19
            r2 = r20
            r3 = r21
            boolean r4 = j(r3, r2, r0)
            float r5 = r2.b
            float r6 = r2.d
            float r7 = r2.a
            float r2 = r2.c
            float r8 = r0.d
            float r9 = r0.b
            float r10 = r0.c
            float r11 = r0.a
            r12 = 0
            if (r4 != 0) goto L9c
            boolean r0 = j(r3, r1, r0)
            if (r0 != 0) goto L27
            goto L9c
        L27:
            java.lang.String r4 = "This function should only be used for 2-D focus search"
            r13 = 6
            r14 = 5
            r15 = 4
            r18 = 1
            r0 = 3
            if (r3 != r0) goto L36
            int r16 = (r11 > r2 ? 1 : (r11 == r2 ? 0 : -1))
            if (r16 < 0) goto L98
            goto L4a
        L36:
            if (r3 != r15) goto L3d
            int r16 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r16 > 0) goto L98
            goto L4a
        L3d:
            if (r3 != r14) goto L44
            int r16 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r16 < 0) goto L98
            goto L4a
        L44:
            if (r3 != r13) goto L99
            int r16 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
            if (r16 > 0) goto L98
        L4a:
            if (r3 != r0) goto L4d
            goto L4f
        L4d:
            if (r3 != r15) goto L50
        L4f:
            return r18
        L50:
            if (r3 != r0) goto L57
            float r1 = r1.c
            float r1 = r11 - r1
            goto L69
        L57:
            if (r3 != r15) goto L5d
            float r1 = r1.a
            float r1 = r1 - r10
            goto L69
        L5d:
            if (r3 != r14) goto L64
            float r1 = r1.d
            float r1 = r9 - r1
            goto L69
        L64:
            if (r3 != r13) goto L94
            float r1 = r1.b
            float r1 = r1 - r8
        L69:
            r16 = 0
            int r17 = (r1 > r16 ? 1 : (r1 == r16 ? 0 : -1))
            if (r17 >= 0) goto L71
            r1 = r16
        L71:
            if (r3 != r0) goto L75
            float r11 = r11 - r7
            goto L83
        L75:
            if (r3 != r15) goto L7a
            float r11 = r2 - r10
            goto L83
        L7a:
            if (r3 != r14) goto L7f
            float r11 = r9 - r5
            goto L83
        L7f:
            if (r3 != r13) goto L90
            float r11 = r6 - r8
        L83:
            r0 = 1065353216(0x3f800000, float:1.0)
            int r2 = (r11 > r0 ? 1 : (r11 == r0 ? 0 : -1))
            if (r2 >= 0) goto L8a
            r11 = r0
        L8a:
            int r0 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r0 >= 0) goto L8f
            return r18
        L8f:
            return r12
        L90:
            defpackage.k21.n(r4)
            return r12
        L94:
            defpackage.k21.n(r4)
            return r12
        L98:
            return r18
        L99:
            defpackage.k21.n(r4)
        L9c:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qn0.i(l33, l33, l33, int):boolean");
    }

    public static final boolean j(int i2, l33 l33Var, l33 l33Var2) {
        if (i2 == 3 || i2 == 4) {
            return l33Var.d > l33Var2.b && l33Var.b < l33Var2.d;
        }
        if (i2 == 5 || i2 == 6) {
            return l33Var.c > l33Var2.a && l33Var.a < l33Var2.c;
        }
        k21.n("This function should only be used for 2-D focus search");
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [ib0, y13] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3, types: [vf1] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Integer] */
    public static final List k(xn3 xn3Var, Integer num, int i2, Integer num2) {
        int iE;
        int iS;
        dg2 dg2Var;
        if (xn3Var.w || xn3Var.p() == 0) {
            return g01.n;
        }
        ?? y13Var = new y13(xn3Var);
        if (num2 != null) {
            iE = num2.intValue();
        } else {
            iE = xn3Var.v;
            if (iE < 0) {
                iE = xn3Var.E(xn3Var.b, i2);
            }
        }
        if (num == 0) {
            int iN = xn3Var.i - xn3Var.N(xn3Var.b, xn3Var.r(i2));
            tf2 tf2Var = xn3Var.s;
            num = Integer.valueOf(iN + ((tf2Var == null || (dg2Var = (dg2) tf2Var.b(i2)) == null) ? 0 : dg2Var.b));
        }
        int iR = xn3Var.r(i2) * 5;
        int[] iArr = xn3Var.b;
        if (iR < iArr.length) {
            iS = xn3Var.s(i2);
        } else {
            int iE2 = iE >= 0 ? xn3Var.E(iArr, iE) : iE;
            iS = xn3Var.s(iE);
            int i3 = iE;
            iE = iE2;
            i2 = i3;
        }
        while (i2 >= 0) {
            y13Var.n(iS, (xn3Var.b[(xn3Var.r(i2) * 5) + 1] & 536870912) != 0 ? xn3Var.t(i2) : rb0.a, xn3Var.O(i2), num);
            num = xn3Var.b(i2);
            if (iE >= 0) {
                int iE3 = xn3Var.E(xn3Var.b, iE);
                iS = xn3Var.s(iE);
                int i4 = iE;
                iE = iE3;
                i2 = i4;
            } else {
                i2 = iE;
            }
        }
        return (ArrayList) y13Var.a;
    }

    public static final String l(fv1 fv1Var, gi3 gi3Var) {
        gi3Var.getClass();
        fv1Var.getClass();
        for (Annotation annotation : gi3Var.getAnnotations()) {
            if (annotation instanceof ov1) {
                return ((ov1) annotation).discriminator();
            }
        }
        return (String) fv1Var.a.e;
    }

    public static final void m(ka1 ka1Var, ug2 ug2Var) {
        if (!ka1Var.n.A) {
            ar1.b("visitChildren called on an unattached node");
        }
        ug2 ug2Var2 = new ug2(new md2[16]);
        md2 md2Var = ka1Var.n;
        md2 md2Var2 = md2Var.s;
        if (md2Var2 == null) {
            w80.c(ug2Var2, md2Var);
        } else {
            ug2Var2.c(md2Var2);
        }
        while (true) {
            int i2 = ug2Var2.p;
            if (i2 == 0) {
                return;
            }
            md2 md2VarG = (md2) ug2Var2.l(i2 - 1);
            if ((md2VarG.q & 1024) == 0) {
                w80.c(ug2Var2, md2VarG);
            } else {
                while (true) {
                    if (md2VarG == null) {
                        break;
                    }
                    if ((md2VarG.p & 1024) != 0) {
                        ug2 ug2Var3 = null;
                        while (md2VarG != null) {
                            if (md2VarG instanceof ka1) {
                                ka1 ka1Var2 = (ka1) md2VarG;
                                if (ka1Var2.A && !w80.R(ka1Var2).d0) {
                                    if (ka1Var2.I0().a) {
                                        ug2Var.c(ka1Var2);
                                    } else {
                                        m(ka1Var2, ug2Var);
                                    }
                                }
                            } else if ((md2VarG.p & 1024) != 0 && (md2VarG instanceof kr0)) {
                                int i3 = 0;
                                for (md2 md2Var3 = ((kr0) md2VarG).C; md2Var3 != null; md2Var3 = md2Var3.s) {
                                    if ((md2Var3.p & 1024) != 0) {
                                        i3++;
                                        if (i3 == 1) {
                                            md2VarG = md2Var3;
                                        } else {
                                            if (ug2Var3 == null) {
                                                ug2Var3 = new ug2(new md2[16]);
                                            }
                                            if (md2VarG != null) {
                                                ug2Var3.c(md2VarG);
                                                md2VarG = null;
                                            }
                                            ug2Var3.c(md2Var3);
                                        }
                                    }
                                }
                                if (i3 == 1) {
                                }
                            }
                            md2VarG = w80.g(ug2Var3);
                        }
                    } else {
                        md2VarG = md2VarG.s;
                    }
                }
            }
        }
    }

    public static final ka1 n(ug2 ug2Var, l33 l33Var, int i2) {
        l33 l33VarD;
        ka1 ka1Var = null;
        if (i2 == 3) {
            l33VarD = l33Var.d((l33Var.c - l33Var.a) + 1.0f, 0.0f);
        } else if (i2 == 4) {
            l33VarD = l33Var.d(-((l33Var.c - l33Var.a) + 1.0f), 0.0f);
        } else if (i2 == 5) {
            l33VarD = l33Var.d(0.0f, (l33Var.d - l33Var.b) + 1.0f);
        } else {
            if (i2 != 6) {
                k21.n("This function should only be used for 2-D focus search");
                return null;
            }
            l33VarD = l33Var.d(0.0f, -((l33Var.d - l33Var.b) + 1.0f));
        }
        Object[] objArr = ug2Var.n;
        int i3 = ug2Var.p;
        for (int i4 = 0; i4 < i3; i4++) {
            ka1 ka1Var2 = (ka1) objArr[i4];
            if (gg4.I(ka1Var2)) {
                l33 l33VarV = gg4.v(ka1Var2);
                if (y(l33VarV, l33VarD, l33Var, i2)) {
                    ka1Var = ka1Var2;
                    l33VarD = l33VarV;
                }
            }
        }
        return ka1Var;
    }

    public static final boolean o(ka1 ka1Var, int i2, pe1 pe1Var) {
        l33 l33Var;
        ug2 ug2Var = new ug2(new ka1[16]);
        m(ka1Var, ug2Var);
        int i3 = ug2Var.p;
        if (i3 <= 1) {
            ka1 ka1Var2 = (ka1) (i3 == 0 ? null : ug2Var.n[0]);
            if (ka1Var2 != null) {
                return ((Boolean) pe1Var.k(ka1Var2)).booleanValue();
            }
        } else {
            if (i2 == 7) {
                i2 = 4;
            }
            if (i2 == 4 || i2 == 6) {
                l33 l33VarV = gg4.v(ka1Var);
                float f2 = l33VarV.a;
                float f3 = l33VarV.b;
                l33Var = new l33(f2, f3, f2, f3);
            } else {
                if (i2 != 3 && i2 != 5) {
                    k21.n("This function should only be used for 2-D focus search");
                    return false;
                }
                l33 l33VarV2 = gg4.v(ka1Var);
                float f4 = l33VarV2.c;
                float f5 = l33VarV2.d;
                l33Var = new l33(f4, f5, f4, f5);
            }
            ka1 ka1VarN = n(ug2Var, l33Var, i2);
            if (ka1VarN != null) {
                return ((Boolean) pe1Var.k(ka1VarN)).booleanValue();
            }
        }
        return false;
    }

    public static final Integer p(tn3 tn3Var, zb0 zb0Var, int i2, int i3) {
        Integer numP;
        int[] iArr = tn3Var.b;
        while (true) {
            if (i2 >= i3) {
                return null;
            }
            int i4 = iArr[(i2 * 5) + 3] + i2;
            if (tn3Var.j(i2) && tn3Var.i(i2) == 206 && nt1.g(tn3Var.p(iArr, i2), wb0.e)) {
                Object objH = tn3Var.h(i2, 0);
                eg1 eg1Var = objH instanceof eg1 ? (eg1) objH : null;
                m53 m53Var = eg1Var != null ? eg1Var.a : null;
                xf1 xf1Var = m53Var instanceof xf1 ? (xf1) m53Var : null;
                if (xf1Var != null && xf1Var.n == zb0Var) {
                    return Integer.valueOf(i2);
                }
            }
            if (tn3Var.d(i2) && (numP = p(tn3Var, zb0Var, i2 + 1, i4)) != null) {
                return Integer.valueOf(numP.intValue());
            }
            i2 = i4;
        }
    }

    public static final String q(long j2) {
        return String.format("%6s", Arrays.copyOf(new Object[]{j2 <= -999500000 ? di0.x(new StringBuilder(), (j2 - 500000000) / 1000000000, " s ") : j2 <= -999500 ? di0.x(new StringBuilder(), (j2 - 500000) / 1000000, " ms") : j2 <= 0 ? di0.x(new StringBuilder(), (j2 - 500) / 1000, " µs") : j2 < 999500 ? di0.x(new StringBuilder(), (j2 + 500) / 1000, " µs") : j2 < 999500000 ? di0.x(new StringBuilder(), (j2 + 500000) / 1000000, " ms") : di0.x(new StringBuilder(), (j2 + 500000000) / 1000000000, " s ")}, 1));
    }

    public static final boolean r(int i2, yc ycVar, ka1 ka1Var, l33 l33Var) {
        if (H(i2, ycVar, ka1Var, l33Var)) {
            return true;
        }
        Boolean bool = (Boolean) ht4.C(ka1Var, i2, new lp2(((dh) ((q9) w80.S(ka1Var)).getFocusOwner()).f(), ka1Var, l33Var, i2, ycVar, 1));
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public static byte[] s(String str, String str2) {
        w80.L(str, "Input");
        w80.H(str2, "Charset");
        try {
            return str.getBytes(str2);
        } catch (UnsupportedEncodingException unused) {
            return str.getBytes();
        }
    }

    public static long t(km1 km1Var) {
        w80.L(km1Var, "HTTP parameters");
        Long l = (Long) km1Var.c("http.conn-manager.timeout");
        return l != null ? l.longValue() : ((f1) km1Var).e(0, "http.connection.timeout");
    }

    public static final String u(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static ji2 v(bc4 bc4Var) {
        u6 u6Var = ki2.a;
        tk0 tk0Var = tk0.b;
        u6Var.getClass();
        tk0Var.getClass();
        qd1 qd1Var = new qd1(bc4Var, u6Var, tk0Var);
        i50 i50VarA = y33.a(ji2.class);
        String strB = i50VarA.b();
        if (strB != null) {
            return (ji2) qd1Var.B(i50VarA, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(strB));
        }
        k21.f("Local and anonymous classes can not be ViewModels");
        return null;
    }

    public static final m82 w(m82 m82Var) {
        xy1 xy1Var = m82Var.F.F;
        while (true) {
            xy1 xy1VarU = xy1Var.u();
            xy1 xy1Var2 = null;
            if ((xy1VarU != null ? xy1VarU.f415u : null) == null) {
                m82 m82VarM0 = ((mm2) xy1Var.S.e).M0();
                m82VarM0.getClass();
                return m82VarM0;
            }
            xy1 xy1VarU2 = xy1Var.u();
            if (xy1VarU2 != null) {
                xy1Var2 = xy1VarU2.f415u;
            }
            xy1Var2.getClass();
            xy1 xy1VarU3 = xy1Var.u();
            xy1VarU3.getClass();
            xy1Var = xy1VarU3.f415u;
            xy1Var.getClass();
        }
    }

    public static final int x(int i2, int i3) {
        return (i2 >> i3) & 31;
    }

    public static final boolean y(l33 l33Var, l33 l33Var2, l33 l33Var3, int i2) {
        if (!z(i2, l33Var, l33Var3)) {
            return false;
        }
        if (z(i2, l33Var2, l33Var3) && !i(l33Var3, l33Var, l33Var2, i2)) {
            return !i(l33Var3, l33Var2, l33Var, i2) && A(i2, l33Var3, l33Var) < A(i2, l33Var3, l33Var2);
        }
        return true;
    }

    public static final boolean z(int i2, l33 l33Var, l33 l33Var2) {
        if (i2 == 3) {
            float f2 = l33Var2.c;
            float f3 = l33Var2.a;
            float f4 = l33Var.c;
            return (f2 > f4 || f3 >= f4) && f3 > l33Var.a;
        }
        if (i2 == 4) {
            float f5 = l33Var2.a;
            float f6 = l33Var2.c;
            float f7 = l33Var.a;
            return (f5 < f7 || f6 <= f7) && f6 < l33Var.c;
        }
        if (i2 == 5) {
            float f8 = l33Var2.d;
            float f9 = l33Var2.b;
            float f10 = l33Var.d;
            return (f8 > f10 || f9 >= f10) && f9 > l33Var.b;
        }
        if (i2 != 6) {
            k21.n("This function should only be used for 2-D focus search");
            return false;
        }
        float f11 = l33Var2.b;
        float f12 = l33Var2.d;
        float f13 = l33Var.b;
        return (f11 < f13 || f12 <= f13) && f12 < l33Var.d;
    }
}
