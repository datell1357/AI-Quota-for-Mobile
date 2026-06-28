package defpackage;

import android.R;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import javax.net.ssl.SSLContext;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class dm0 {
    public static final z70 A;
    public static final z70 B;
    public static final float C;
    public static final z70 D;
    public static final z70 E;
    public static final z70 F;
    public static final float G;
    public static final z70 H;
    public static final z70 I;
    public static final int[] J;
    public static final long[] K;
    public static final Object L;
    public static Thread M;
    public static volatile Handler N;
    public static so1 O;
    public static final xe b = new xe(Float.POSITIVE_INFINITY);
    public static final ye c = new ye(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
    public static final ze d = new ze(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
    public static final af e = new af(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
    public static final xe f = new xe(Float.NEGATIVE_INFINITY);
    public static final ye g = new ye(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
    public static final ze h = new ze(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
    public static final af i = new af(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
    public static final ka0 j = new ka0(-1230183870, false, new sq(26));
    public static final ka0 k = new ka0(996855992, false, new sq(27));
    public static final ka0 l = new ka0(-1135635555, false, new lq(10));
    public static final ll3 m = ll3.r;
    public static final z70 n;
    public static final float o;
    public static final float p;
    public static final z70 q;
    public static final float r;
    public static final z70 s;
    public static final float t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final z70 f69u;
    public static final float v;
    public static final z70 w;
    public static final float x;
    public static final f54 y;
    public static final z70 z;
    public final /* synthetic */ int a;

    static {
        z70 z70Var = z70.t;
        n = z70Var;
        o = 0.38f;
        p = 8.0f;
        q = z70Var;
        r = 0.12f;
        s = z70Var;
        t = 0.12f;
        f69u = z70.z;
        v = 1.0f;
        w = z70.w;
        x = 1.0f;
        y = f54.p;
        z70 z70Var2 = z70.s;
        z = z70Var2;
        z70 z70Var3 = z70.f434u;
        A = z70Var3;
        B = z70Var;
        C = 0.38f;
        D = z70Var2;
        E = z70.x;
        F = z70Var;
        G = 0.38f;
        H = z70Var2;
        I = z70Var3;
        J = new int[]{13, 15, 14};
        K = new long[0];
        L = new Object();
    }

    public /* synthetic */ dm0(int i2) {
        this.a = i2;
    }

    public static dh0 A(dh0 dh0Var) {
        dh0Var.getClass();
        fh0 fh0Var = dh0Var instanceof fh0 ? (fh0) dh0Var : null;
        if (fh0Var == null || (dh0Var = fh0Var.p) != null) {
            return dh0Var;
        }
        ji0 ji0Var = (ji0) fh0Var.e().K(w13.s);
        dh0 su0Var = ji0Var != null ? new su0(ji0Var, fh0Var) : fh0Var;
        fh0Var.p = su0Var;
        return su0Var;
    }

    public static final boolean B(qi0 qi0Var) {
        tu1 tu1Var = (tu1) qi0Var.d().K(mj1.W);
        if (tu1Var != null) {
            return tu1Var.b();
        }
        return true;
    }

    public static qz1 C(v12 v12Var, ne1 ne1Var) {
        qv3 qv3Var = qv3.q;
        int iOrdinal = v12Var.ordinal();
        if (iOrdinal == 0) {
            return new nv3(ne1Var);
        }
        if (iOrdinal == 1) {
            cc3 cc3Var = new cc3();
            cc3Var.n = ne1Var;
            cc3Var.o = qv3Var;
            return cc3Var;
        }
        if (iOrdinal != 2) {
            p61.x();
            return null;
        }
        i74 i74Var = new i74();
        i74Var.n = ne1Var;
        i74Var.o = qv3Var;
        return i74Var;
    }

    public static nv3 D(ne1 ne1Var) {
        ne1Var.getClass();
        return new nv3(ne1Var);
    }

    public static final boolean E(ka1 ka1Var, yc ycVar) {
        Object[] objArr = new ka1[16];
        if (!ka1Var.n.A) {
            ar1.b("visitChildren called on an unattached node");
        }
        ug2 ug2Var = new ug2(new md2[16]);
        md2 md2Var = ka1Var.n;
        md2 md2Var2 = md2Var.s;
        if (md2Var2 == null) {
            w80.c(ug2Var, md2Var);
        } else {
            ug2Var.c(md2Var2);
        }
        int i2 = 0;
        while (true) {
            int i3 = ug2Var.p;
            if (i3 == 0) {
                break;
            }
            md2 md2VarG = (md2) ug2Var.l(i3 - 1);
            if ((md2VarG.q & 1024) == 0) {
                w80.c(ug2Var, md2VarG);
            } else {
                while (true) {
                    if (md2VarG == null) {
                        break;
                    }
                    if ((md2VarG.p & 1024) != 0) {
                        ug2 ug2Var2 = null;
                        while (md2VarG != null) {
                            if (md2VarG instanceof ka1) {
                                ka1 ka1Var2 = (ka1) md2VarG;
                                int i4 = i2 + 1;
                                if (objArr.length < i4) {
                                    int length = objArr.length;
                                    Object[] objArr2 = new Object[Math.max(i4, length * 2)];
                                    System.arraycopy(objArr, 0, objArr2, 0, length);
                                    objArr = objArr2;
                                }
                                objArr[i2] = ka1Var2;
                                i2 = i4;
                            } else if ((md2VarG.p & 1024) != 0 && (md2VarG instanceof kr0)) {
                                int i5 = 0;
                                for (md2 md2Var3 = ((kr0) md2VarG).C; md2Var3 != null; md2Var3 = md2Var3.s) {
                                    if ((md2Var3.p & 1024) != 0) {
                                        i5++;
                                        if (i5 == 1) {
                                            md2VarG = md2Var3;
                                        } else {
                                            if (ug2Var2 == null) {
                                                ug2Var2 = new ug2(new md2[16]);
                                            }
                                            if (md2VarG != null) {
                                                ug2Var2.c(md2VarG);
                                                md2VarG = null;
                                            }
                                            ug2Var2.c(md2Var3);
                                        }
                                    }
                                }
                                if (i5 == 1) {
                                }
                            }
                            md2VarG = w80.g(ug2Var2);
                        }
                    } else {
                        md2VarG = md2VarG.s;
                    }
                }
            }
        }
        Arrays.sort(objArr, 0, i2, lh0.p);
        int i6 = i2 - 1;
        if (i6 < objArr.length) {
            while (i6 >= 0) {
                ka1 ka1Var3 = (ka1) objArr[i6];
                if (gg4.I(ka1Var3) && n(ka1Var3, ycVar)) {
                    return true;
                }
                i6--;
            }
        }
        return false;
    }

    public static final boolean F(ka1 ka1Var, yc ycVar) {
        Object[] objArr = new ka1[16];
        if (!ka1Var.n.A) {
            ar1.b("visitChildren called on an unattached node");
        }
        ug2 ug2Var = new ug2(new md2[16]);
        md2 md2Var = ka1Var.n;
        md2 md2Var2 = md2Var.s;
        if (md2Var2 == null) {
            w80.c(ug2Var, md2Var);
        } else {
            ug2Var.c(md2Var2);
        }
        int i2 = 0;
        while (true) {
            int i3 = ug2Var.p;
            if (i3 == 0) {
                break;
            }
            md2 md2VarG = (md2) ug2Var.l(i3 - 1);
            if ((md2VarG.q & 1024) == 0) {
                w80.c(ug2Var, md2VarG);
            } else {
                while (true) {
                    if (md2VarG == null) {
                        break;
                    }
                    if ((md2VarG.p & 1024) != 0) {
                        ug2 ug2Var2 = null;
                        while (md2VarG != null) {
                            if (md2VarG instanceof ka1) {
                                ka1 ka1Var2 = (ka1) md2VarG;
                                int i4 = i2 + 1;
                                if (objArr.length < i4) {
                                    int length = objArr.length;
                                    Object[] objArr2 = new Object[Math.max(i4, length * 2)];
                                    System.arraycopy(objArr, 0, objArr2, 0, length);
                                    objArr = objArr2;
                                }
                                objArr[i2] = ka1Var2;
                                i2 = i4;
                            } else if ((md2VarG.p & 1024) != 0 && (md2VarG instanceof kr0)) {
                                int i5 = 0;
                                for (md2 md2Var3 = ((kr0) md2VarG).C; md2Var3 != null; md2Var3 = md2Var3.s) {
                                    if ((md2Var3.p & 1024) != 0) {
                                        i5++;
                                        if (i5 == 1) {
                                            md2VarG = md2Var3;
                                        } else {
                                            if (ug2Var2 == null) {
                                                ug2Var2 = new ug2(new md2[16]);
                                            }
                                            if (md2VarG != null) {
                                                ug2Var2.c(md2VarG);
                                                md2VarG = null;
                                            }
                                            ug2Var2.c(md2Var3);
                                        }
                                    }
                                }
                                if (i5 == 1) {
                                }
                            }
                            md2VarG = w80.g(ug2Var2);
                        }
                    } else {
                        md2VarG = md2VarG.s;
                    }
                }
            }
        }
        Arrays.sort(objArr, 0, i2, lh0.p);
        for (int i6 = 0; i6 < i2; i6++) {
            ka1 ka1Var3 = (ka1) objArr[i6];
            if (gg4.I(ka1Var3) && v(ka1Var3, ycVar)) {
                return true;
            }
        }
        return false;
    }

    public static byte[] G(InputStream inputStream, int i2) throws IOException {
        byte[] bArr = new byte[i2];
        int i3 = 0;
        while (i3 < i2) {
            int i4 = inputStream.read(bArr, i3, i2 - i3);
            if (i4 < 0) {
                k21.n(di0.q(i2, "Not enough bytes to read: "));
                return null;
            }
            i3 += i4;
        }
        return bArr;
    }

    public static byte[] H(FileInputStream fileInputStream, int i2, int i3) {
        Inflater inflater = new Inflater();
        try {
            byte[] bArr = new byte[i3];
            byte[] bArr2 = new byte[2048];
            int i4 = 0;
            int iInflate = 0;
            while (!inflater.finished() && !inflater.needsDictionary() && i4 < i2) {
                int i5 = fileInputStream.read(bArr2);
                if (i5 < 0) {
                    throw new IllegalStateException("Invalid zip data. Stream ended after $totalBytesRead bytes. Expected " + i2 + " bytes");
                }
                inflater.setInput(bArr2, 0, i5);
                try {
                    iInflate += inflater.inflate(bArr, iInflate, i3 - iInflate);
                    i4 += i5;
                } catch (DataFormatException e2) {
                    throw new IllegalStateException(e2.getMessage());
                }
            }
            if (i4 == i2) {
                if (inflater.finished()) {
                    return bArr;
                }
                throw new IllegalStateException("Inflater did not finish");
            }
            throw new IllegalStateException("Didn't read enough bytes during decompression. expected=" + i2 + " actual=" + i4);
        } finally {
            inflater.end();
        }
    }

    public static long I(InputStream inputStream, int i2) {
        byte[] bArrG = G(inputStream, i2);
        long j2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            j2 += ((long) (bArrG[i3] & 255)) << (i3 * 8);
        }
        return j2;
    }

    public static final yf1 J(ag1 ag1Var) {
        ag1 ag1Var2;
        ag1Var.T(206, wb0.e);
        if (ag1Var.S) {
            xn3.z(ag1Var.I);
        }
        Object objC = ag1Var.C();
        eg1 n83Var = objC instanceof eg1 ? (eg1) objC : null;
        if (n83Var == null) {
            ag1Var2 = ag1Var;
            n83Var = new n83(new xf1(new yf1(ag1Var2, ag1Var.T, ag1Var.q, ag1Var.C, ag1Var.h.G)), -1);
            ag1Var2.h0(n83Var);
        } else {
            ag1Var2 = ag1Var;
        }
        m53 m53Var = n83Var.a;
        m53Var.getClass();
        yf1 yf1Var = ((xf1) m53Var).n;
        yf1Var.f.setValue(ag1Var2.l());
        ag1Var2.p(false);
        return yf1Var;
    }

    public static final long K(long j2, long j3) {
        long j4 = j2 - j3;
        long j5 = (j4 ^ j2) & (~(j4 ^ j3));
        gy0 gy0Var = gy0.NANOSECONDS;
        if (j5 >= 0) {
            return c75.T(j4, gy0Var);
        }
        gy0 gy0Var2 = gy0.MILLISECONDS;
        if (gy0Var.compareTo(gy0Var2) >= 0) {
            return cy0.i(z(j4));
        }
        long j6 = (j2 / 1000000) - (j3 / 1000000);
        long j7 = (j2 % 1000000) - (j3 % 1000000);
        bx3 bx3Var = cy0.o;
        return cy0.g(c75.T(j6, gy0Var2), c75.T(j7, gy0Var));
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x00fe, code lost:
    
        return true;
     */
    /* JADX WARN: Removed duplicated region for block: B:129:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x019b A[EDGE_INSN: B:157:0x019b->B:127:0x019b BREAK  A[LOOP:5: B:89:0x012c->B:162:0x012c], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x012e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean L(defpackage.ka1 r12, defpackage.ka1 r13, int r14, defpackage.yc r15) {
        /*
            Method dump skipped, instruction units count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dm0.L(ka1, ka1, int, yc):boolean");
    }

    public static final Rect M(ns1 ns1Var) {
        return new Rect(ns1Var.a, ns1Var.b, ns1Var.c, ns1Var.d);
    }

    public static final void N(vv2 vv2Var, long j2, pe1 pe1Var, boolean z2) {
        MotionEvent motionEventA = vv2Var.a();
        if (motionEventA == null) {
            k21.f("The PointerEvent receiver cannot have a null MotionEvent.");
            return;
        }
        int action = motionEventA.getAction();
        if (z2) {
            motionEventA.setAction(3);
        }
        int i2 = (int) (j2 >> 32);
        int i3 = (int) (j2 & 4294967295L);
        motionEventA.offsetLocation(-Float.intBitsToFloat(i2), -Float.intBitsToFloat(i3));
        pe1Var.k(motionEventA);
        motionEventA.offsetLocation(Float.intBitsToFloat(i2), Float.intBitsToFloat(i3));
        motionEventA.setAction(action);
    }

    public static Object O(df1 df1Var, Object obj, dh0 dh0Var) {
        df1Var.getClass();
        hi0 hi0VarE = dh0Var.e();
        Object qt1Var = hi0VarE == d01.n ? new qt1(dh0Var) : new rt1(dh0Var, hi0VarE);
        n44.R(2, df1Var);
        return df1Var.f(obj, qt1Var);
    }

    public static void P(ByteArrayOutputStream byteArrayOutputStream, long j2, int i2) {
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            bArr[i3] = (byte) ((j2 >> (i3 * 8)) & 255);
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void Q(ByteArrayOutputStream byteArrayOutputStream, int i2) {
        P(byteArrayOutputStream, i2, 2);
    }

    public static boolean R(Thread thread) {
        if (M == null) {
            M = Looper.getMainLooper().getThread();
        }
        return thread == M;
    }

    public static Handler S() {
        if (N == null) {
            synchronized (L) {
                try {
                    if (N == null) {
                        N = new Handler(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        return N;
    }

    public static pd a(float f2) {
        return new pd(Float.valueOf(f2), k30.m, Float.valueOf(0.01f), 8);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:196:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(final defpackage.ne1 r32, final defpackage.nd2 r33, boolean r34, defpackage.jl3 r35, final defpackage.kz r36, defpackage.pz r37, defpackage.fx r38, defpackage.zr2 r39, final defpackage.ka0 r40, defpackage.ag1 r41, final int r42, final int r43) {
        /*
            Method dump skipped, instruction units count: 808
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dm0.b(ne1, nd2, boolean, jl3, kz, pz, fx, zr2, ka0, ag1, int, int):void");
    }

    public static final bh0 c(hi0 hi0Var) {
        if (hi0Var.K(mj1.W) == null) {
            hi0Var = hi0Var.F(n44.E());
        }
        return new bh0(hi0Var);
    }

    public static final void d(ut0 ut0Var, ag1 ag1Var, int i2) {
        ut0 ut0Var2;
        ag1Var.X(294589392);
        if ((((ag1Var.h(ut0Var) ? 4 : 2) | i2) & 3) == 2 && ag1Var.z()) {
            ag1Var.Q();
            ut0Var2 = ut0Var;
        } else {
            gc3 gc3VarE = qn0.E(ag1Var);
            pg2 pg2VarH = ca.h(ut0Var.b().e, ag1Var);
            List list = (List) pg2VarH.getValue();
            boolean zBooleanValue = ((Boolean) ag1Var.j(vr1.a)).booleanValue();
            boolean zF = ag1Var.f(list);
            Object objK = ag1Var.K();
            Object obj = rb0.a;
            Object obj2 = objK;
            if (zF || objK == obj) {
                gp3 gp3Var = new gp3();
                ArrayList arrayList = new ArrayList();
                for (Object obj3 : list) {
                    yh2 yh2Var = (yh2) obj3;
                    if (zBooleanValue || yh2Var.f421u.j.d.compareTo(g22.q) >= 0) {
                        arrayList.add(obj3);
                    }
                }
                gp3Var.addAll(arrayList);
                ag1Var.g0(gp3Var);
                obj2 = gp3Var;
            }
            gp3 gp3Var2 = (gp3) obj2;
            g(gp3Var2, (List) pg2VarH.getValue(), ag1Var, 0);
            pg2 pg2VarH2 = ca.h(ut0Var.b().f, ag1Var);
            Object objK2 = ag1Var.K();
            if (objK2 == obj) {
                objK2 = new gp3();
                ag1Var.g0(objK2);
            }
            gp3 gp3Var3 = (gp3) objK2;
            ag1Var.W(-367418626);
            ListIterator listIterator = gp3Var2.listIterator();
            while (true) {
                xj1 xj1Var = (xj1) listIterator;
                if (!xj1Var.hasNext()) {
                    break;
                }
                yh2 yh2Var2 = (yh2) xj1Var.next();
                qi2 qi2Var = yh2Var2.o;
                qi2Var.getClass();
                tt0 tt0Var = (tt0) qi2Var;
                boolean zH = ag1Var.h(ut0Var) | ag1Var.h(yh2Var2);
                Object objK3 = ag1Var.K();
                if (zH || objK3 == obj) {
                    objK3 = new h4(12, ut0Var, yh2Var2);
                    ag1Var.g0(objK3);
                }
                gp3 gp3Var4 = gp3Var3;
                ut0 ut0Var3 = ut0Var;
                n44.D((ne1) objK3, tt0Var.s, qj0.U(1129586364, new rt0(yh2Var2, ut0Var3, gc3VarE, gp3Var4, tt0Var), ag1Var), ag1Var, 384);
                ut0Var = ut0Var3;
                gp3Var3 = gp3Var4;
            }
            ut0Var2 = ut0Var;
            gp3 gp3Var5 = gp3Var3;
            ag1Var.p(false);
            Set set = (Set) pg2VarH2.getValue();
            boolean zF2 = ag1Var.f(pg2VarH2) | ag1Var.h(ut0Var2);
            Object objK4 = ag1Var.K();
            if (zF2 || objK4 == obj) {
                objK4 = new q4(pg2VarH2, ut0Var2, gp3Var5, (dh0) null);
                ag1Var.g0(objK4);
            }
            zf5.d(set, gp3Var5, (df1) objK4, ag1Var);
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new sp0(i2, 9, ut0Var2);
        }
    }

    public static final f21 e(jo1 jo1Var, Throwable th) {
        ao1 ao1Var;
        if (th instanceof in2) {
            pe1 pe1Var = jo1Var.n;
            ho1 ho1Var = jo1Var.t;
            ao1Var = (ao1) pe1Var.k(jo1Var);
            if (ao1Var == null) {
                ao1Var = (ao1) ho1Var.j.k(jo1Var);
            }
            if (ao1Var == null && (ao1Var = (ao1) jo1Var.m.k(jo1Var)) == null) {
                ao1Var = (ao1) ho1Var.i.k(jo1Var);
            }
        } else {
            ao1Var = (ao1) jo1Var.m.k(jo1Var);
            if (ao1Var == null) {
                ao1Var = (ao1) jo1Var.t.i.k(jo1Var);
            }
        }
        return new f21(ao1Var, jo1Var, th);
    }

    public static final void f(final ne1 ne1Var, final nd2 nd2Var, boolean z2, jl3 jl3Var, kz kzVar, fx fxVar, zr2 zr2Var, final ka0 ka0Var, ag1 ag1Var, final int i2) {
        final boolean z3;
        final jl3 jl3Var2;
        final kz kzVar2;
        final fx fxVar2;
        final zr2 zr2Var2;
        int i3;
        int i4;
        jl3 jl3Var3;
        zr2 zr2Var3;
        boolean z4;
        kz kzVar3;
        fx fxVar3;
        ag1Var.X(399974542);
        int i5 = i2 | (ag1Var.h(ne1Var) ? 4 : 2) | (ag1Var.f(nd2Var) ? 32 : 16) | 113976704;
        if (ag1Var.N(i5 & 1, (306783379 & i5) != 306783378)) {
            ag1Var.S();
            if ((i2 & 1) == 0 || ag1Var.x()) {
                ds2 ds2Var = lz.a;
                jl3 jl3VarA = ol3.a(ht4.b, ag1Var);
                y70 y70Var = ((ua2) ag1Var.j(wa2.a)).a;
                kz kzVar4 = y70Var.X;
                if (kzVar4 == null) {
                    long j2 = t70.e;
                    i3 = -3734529;
                    kz kzVar5 = new kz(j2, a80.c(y70Var, nt1.f), j2, t70.b(nt1.e, a80.c(y70Var, nt1.d)));
                    y70Var.X = kzVar5;
                    kzVar4 = kzVar5;
                } else {
                    i3 = -3734529;
                }
                float f2 = ht4.c;
                ag1Var.W(-112362814);
                long jD = a80.d(nt1.g, ag1Var);
                ag1Var.p(false);
                fx fxVar4 = new fx(f2, new sp3(jD));
                i4 = i5 & i3;
                jl3Var3 = jl3VarA;
                zr2Var3 = lz.a;
                z4 = true;
                kzVar3 = kzVar4;
                fxVar3 = fxVar4;
            } else {
                ag1Var.Q();
                i4 = i5 & (-3734529);
                z4 = z2;
                jl3Var3 = jl3Var;
                kzVar3 = kzVar;
                fxVar3 = fxVar;
                zr2Var3 = zr2Var;
            }
            ag1Var.q();
            b(ne1Var, nd2Var, z4, jl3Var3, kzVar3, null, fxVar3, zr2Var3, ka0Var, ag1Var, i4 & 2147483646, 0);
            jl3Var2 = jl3Var3;
            zr2Var2 = zr2Var3;
            fxVar2 = fxVar3;
            kzVar2 = kzVar3;
            z3 = z4;
        } else {
            ag1Var.Q();
            z3 = z2;
            jl3Var2 = jl3Var;
            kzVar2 = kzVar;
            fxVar2 = fxVar;
            zr2Var2 = zr2Var;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1(nd2Var, z3, jl3Var2, kzVar2, fxVar2, zr2Var2, ka0Var, i2) { // from class: qz
                public final /* synthetic */ nd2 o;
                public final /* synthetic */ boolean p;
                public final /* synthetic */ jl3 q;
                public final /* synthetic */ kz r;
                public final /* synthetic */ fx s;
                public final /* synthetic */ zr2 t;

                /* JADX INFO: renamed from: u, reason: collision with root package name */
                public final /* synthetic */ ka0 f287u;

                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iF0 = qj0.f0(805306369);
                    dm0.f(this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.f287u, (ag1) obj, iF0);
                    return t64.a;
                }
            };
        }
    }

    public static final void g(List list, Collection collection, ag1 ag1Var, int i2) {
        ag1Var.X(1537894851);
        if ((((ag1Var.h(list) ? 4 : 2) | i2 | (ag1Var.h(collection) ? 32 : 16)) & 19) == 18 && ag1Var.z()) {
            ag1Var.Q();
        } else {
            boolean zBooleanValue = ((Boolean) ag1Var.j(vr1.a)).booleanValue();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                yh2 yh2Var = (yh2) it.next();
                r22 r22Var = yh2Var.f421u.j;
                boolean zG = ag1Var.g(zBooleanValue) | ag1Var.h(list) | ag1Var.h(yh2Var);
                Object objK = ag1Var.K();
                if (zG || objK == rb0.a) {
                    objK = new ot0(yh2Var, list, zBooleanValue);
                    ag1Var.g0(objK);
                }
                zf5.a(r22Var, (pe1) objK, ag1Var);
            }
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new l4(i2, 8, list, collection);
        }
    }

    public static final void h(boolean z2, df1 df1Var, ag1 ag1Var, int i2) {
        ag1Var.X(1818896922);
        int i3 = (ag1Var.g(z2) ? 4 : 2) | i2 | (ag1Var.h(df1Var) ? 32 : 16);
        if ((i3 & 19) == 18 && ag1Var.z()) {
            ag1Var.Q();
        } else {
            fl4.c(z2, df1Var, ag1Var, i3 & 126);
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ci2(z2, df1Var, i2, 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void i(defpackage.ne1 r19, defpackage.nd2 r20, boolean r21, defpackage.jl3 r22, defpackage.kz r23, defpackage.zr2 r24, defpackage.ka0 r25, defpackage.ag1 r26, int r27, int r28) {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dm0.i(ne1, nd2, boolean, jl3, kz, zr2, ka0, ag1, int, int):void");
    }

    public static final Object[] j(Object[] objArr, int i2, Object obj, Object obj2) {
        Object[] objArr2 = new Object[objArr.length + 2];
        ji.R(0, i2, 6, objArr, objArr2);
        ji.O(i2 + 2, i2, objArr.length, objArr, objArr2);
        objArr2[i2] = obj;
        objArr2[i2 + 1] = obj2;
        return objArr2;
    }

    public static final Object[] k(int i2, Object[] objArr) {
        Object[] objArr2 = new Object[objArr.length - 2];
        ji.R(0, i2, 6, objArr, objArr2);
        ji.O(i2, i2 + 2, objArr.length, objArr, objArr2);
        return objArr2;
    }

    public static final Object[] l(int i2, Object[] objArr) {
        Object[] objArr2 = new Object[objArr.length - 1];
        ji.R(0, i2, 6, objArr, objArr2);
        ji.O(i2, i2 + 1, objArr.length, objArr, objArr2);
        return objArr2;
    }

    public static final void m(j3 j3Var, gh3 gh3Var) {
        if (mt1.h(gh3Var)) {
            Object objG = gh3Var.d.n.g(ah3.i);
            if (objG == null) {
                objG = null;
            }
            o2 o2Var = (o2) objG;
            if (o2Var != null) {
                j3Var.a(new d3(null, R.id.accessibilityActionSetProgress, o2Var.a, null));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0076 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean n(defpackage.ka1 r7, defpackage.yc r8) {
        /*
            fa1 r0 = r7.L0()
            int r0 = r0.ordinal()
            if (r0 == 0) goto L81
            r1 = 3
            r2 = 0
            r3 = 2
            r4 = 1
            if (r0 == r4) goto L35
            if (r0 == r3) goto L81
            if (r0 != r1) goto L31
            boolean r0 = E(r7, r8)
            if (r0 != 0) goto L77
            ca1 r0 = r7.I0()
            boolean r0 = r0.a
            if (r0 == 0) goto L2d
            java.lang.Object r7 = r8.k(r7)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            goto L2e
        L2d:
            r7 = r2
        L2e:
            if (r7 == 0) goto L76
            goto L77
        L31:
            defpackage.p61.x()
            return r2
        L35:
            ka1 r0 = defpackage.gg4.A(r7)
            java.lang.String r5 = "ActiveParent must have a focusedChild"
            if (r0 == 0) goto L7d
            fa1 r6 = r0.L0()
            int r6 = r6.ordinal()
            if (r6 == 0) goto L78
            if (r6 == r4) goto L55
            if (r6 == r3) goto L78
            if (r6 == r1) goto L51
            defpackage.p61.x()
            return r2
        L51:
            defpackage.k21.n(r5)
            return r2
        L55:
            boolean r1 = n(r0, r8)
            if (r1 != 0) goto L77
            boolean r7 = w(r7, r0, r3, r8)
            if (r7 != 0) goto L77
            ca1 r7 = r0.I0()
            boolean r7 = r7.a
            if (r7 == 0) goto L76
            java.lang.Object r7 = r8.k(r0)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L76
            goto L77
        L76:
            return r2
        L77:
            return r4
        L78:
            boolean r7 = w(r7, r0, r3, r8)
            return r7
        L7d:
            defpackage.k21.n(r5)
            return r2
        L81:
            boolean r7 = E(r7, r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dm0.n(ka1, yc):boolean");
    }

    public static final void o(qi0 qi0Var, qd2 qd2Var) {
        tu1 tu1Var = (tu1) qi0Var.d().K(mj1.W);
        if (tu1Var != null) {
            tu1Var.j(qd2Var);
        } else {
            mk0.k(qi0Var, "Scope cannot be cancelled because it does not have a job: ");
        }
    }

    public static final void p(long j2, hr2 hr2Var) {
        if (hr2Var == hr2.n) {
            if (mf0.g(j2) != Integer.MAX_VALUE) {
                return;
            }
            dr1.c("Vertically scrollable component was measured with an infinity maximum height constraints, which is disallowed. One of the common reasons is nesting layouts like LazyColumn and Column(Modifier.verticalScroll()). If you want to add a header before the list of items please add a header as a separate item() before the main items() inside the LazyColumn scope. There could be other reasons for this to happen: your ComposeView was added into a LinearLayout with some weight, you applied Modifier.wrapContentSize(unbounded = true) or wrote a custom layout. Please try to remove the source of infinite constraints in the hierarchy above the scrolling container.");
        } else {
            if (mf0.h(j2) != Integer.MAX_VALUE) {
                return;
            }
            dr1.c("Horizontally scrollable component was measured with an infinity maximum width constraints, which is disallowed. One of the common reasons is nesting layouts like LazyRow and Row(Modifier.horizontalScroll()). If you want to add a header before the list of items please add a header as a separate item() before the main items() inside the LazyRow scope. There could be other reasons for this to happen: your ComposeView was added into a LinearLayout with some weight, you applied Modifier.wrapContentSize(unbounded = true) or wrote a custom layout. Please try to remove the source of infinite constraints in the hierarchy above the scrolling container.");
        }
    }

    public static byte[] q(byte[] bArr) {
        Deflater deflater = new Deflater(1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, deflater);
            try {
                deflaterOutputStream.write(bArr);
                deflaterOutputStream.close();
                deflater.end();
                return byteArrayOutputStream.toByteArray();
            } finally {
            }
        } catch (Throwable th) {
            deflater.end();
            throw th;
        }
    }

    public static final Object r(df1 df1Var, dh0 dh0Var) {
        me3 me3Var = new me3(dh0Var, dh0Var.e());
        return gg4.S(me3Var, true, me3Var, df1Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static dh0 s(dh0 dh0Var, dh0 dh0Var2, df1 df1Var) {
        df1Var.getClass();
        if (df1Var instanceof dr) {
            return ((dr) df1Var).o(dh0Var2, dh0Var);
        }
        hi0 hi0VarE = dh0Var2.e();
        return hi0VarE == d01.n ? new ot1(dh0Var2, dh0Var, df1Var) : new pt1(dh0Var2, hi0VarE, df1Var, dh0Var);
    }

    public static SSLContext t() {
        try {
            SSLContext sSLContext = SSLContext.getInstance(rb3.TLS);
            sSLContext.init(null, null, null);
            return sSLContext;
        } catch (KeyManagementException e2) {
            throw new x60(e2.getMessage(), e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new x60(e3.getMessage(), e3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0083, code lost:
    
        if (r1.m(r10, r0) == r5) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0071 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #0 {all -> 0x0035, blocks: (B:13:0x002f, B:25:0x0054, B:29:0x0069, B:31:0x0071, B:20:0x0045, B:24:0x0050), top: B:50:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0083 -> B:14:0x0032). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object u(defpackage.b81 r7, defpackage.n30 r8, boolean r9, defpackage.dh0 r10) throws java.lang.Throwable {
        /*
            boolean r0 = r10 instanceof defpackage.f81
            if (r0 == 0) goto L13
            r0 = r10
            f81 r0 = (defpackage.f81) r0
            int r1 = r0.v
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.v = r1
            goto L18
        L13:
            f81 r0 = new f81
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f94u
            int r1 = r0.v
            r2 = 0
            r3 = 2
            r4 = 1
            ri0 r5 = defpackage.ri0.n
            if (r1 == 0) goto L49
            if (r1 == r4) goto L3d
            if (r1 != r3) goto L37
            boolean r9 = r0.t
            wy r7 = r0.s
            n30 r8 = r0.r
            b81 r1 = r0.q
            defpackage.gg4.T(r10)     // Catch: java.lang.Throwable -> L35
        L32:
            r10 = r7
            r7 = r1
            goto L54
        L35:
            r7 = move-exception
            goto L8e
        L37:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r7)
            return r2
        L3d:
            boolean r9 = r0.t
            wy r7 = r0.s
            n30 r8 = r0.r
            b81 r1 = r0.q
            defpackage.gg4.T(r10)     // Catch: java.lang.Throwable -> L35
            goto L69
        L49:
            defpackage.gg4.T(r10)
            boolean r10 = r7 instanceof defpackage.yy3
            if (r10 != 0) goto La9
            wy r10 = r8.iterator()     // Catch: java.lang.Throwable -> L35
        L54:
            r0.q = r7     // Catch: java.lang.Throwable -> L35
            r0.r = r8     // Catch: java.lang.Throwable -> L35
            r0.s = r10     // Catch: java.lang.Throwable -> L35
            r0.t = r9     // Catch: java.lang.Throwable -> L35
            r0.v = r4     // Catch: java.lang.Throwable -> L35
            java.lang.Object r1 = r10.b(r0)     // Catch: java.lang.Throwable -> L35
            if (r1 != r5) goto L65
            goto L85
        L65:
            r6 = r1
            r1 = r7
            r7 = r10
            r10 = r6
        L69:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> L35
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Throwable -> L35
            if (r10 == 0) goto L86
            java.lang.Object r10 = r7.c()     // Catch: java.lang.Throwable -> L35
            r0.q = r1     // Catch: java.lang.Throwable -> L35
            r0.r = r8     // Catch: java.lang.Throwable -> L35
            r0.s = r7     // Catch: java.lang.Throwable -> L35
            r0.t = r9     // Catch: java.lang.Throwable -> L35
            r0.v = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r10 = r1.m(r10, r0)     // Catch: java.lang.Throwable -> L35
            if (r10 != r5) goto L32
        L85:
            return r5
        L86:
            if (r9 == 0) goto L8b
            r8.j(r2)
        L8b:
            t64 r7 = defpackage.t64.a
            return r7
        L8e:
            throw r7     // Catch: java.lang.Throwable -> L8f
        L8f:
            r10 = move-exception
            if (r9 == 0) goto La8
            boolean r9 = r7 instanceof java.util.concurrent.CancellationException
            if (r9 == 0) goto L99
            r2 = r7
            java.util.concurrent.CancellationException r2 = (java.util.concurrent.CancellationException) r2
        L99:
            if (r2 != 0) goto La5
            java.util.concurrent.CancellationException r2 = new java.util.concurrent.CancellationException
            java.lang.String r9 = "Channel was consumed, consumer had failed"
            r2.<init>(r9)
            r2.initCause(r7)
        La5:
            r8.j(r2)
        La8:
            throw r10
        La9:
            yy3 r7 = (defpackage.yy3) r7
            java.lang.Throwable r7 = r7.n
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dm0.u(b81, n30, boolean, dh0):java.lang.Object");
    }

    public static final boolean v(ka1 ka1Var, yc ycVar) {
        int iOrdinal = ka1Var.L0().ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                ka1 ka1VarA = gg4.A(ka1Var);
                if (ka1VarA != null) {
                    return v(ka1VarA, ycVar) || w(ka1Var, ka1VarA, 1, ycVar);
                }
                k21.n("ActiveParent must have a focusedChild");
                return false;
            }
            if (iOrdinal != 2) {
                if (iOrdinal == 3) {
                    return ka1Var.I0().a ? ((Boolean) ycVar.k(ka1Var)).booleanValue() : F(ka1Var, ycVar);
                }
                p61.x();
                return false;
            }
        }
        return F(ka1Var, ycVar);
    }

    public static final boolean w(ka1 ka1Var, ka1 ka1Var2, int i2, yc ycVar) {
        if (L(ka1Var, ka1Var2, i2, ycVar)) {
            return true;
        }
        Boolean bool = (Boolean) ht4.C(ka1Var, i2, new lp2(((dh) ((q9) w80.S(ka1Var)).getFocusOwner()).f(), ka1Var, ka1Var2, i2, ycVar, 0));
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public static v63 x(km1 km1Var, v63 v63Var) {
        boolean z2 = v63Var.n;
        em1 em1Var = v63Var.o;
        InetAddress inetAddress = v63Var.p;
        boolean z3 = v63Var.q;
        String str = v63Var.r;
        boolean z4 = v63Var.s;
        boolean z5 = v63Var.t;
        boolean z6 = v63Var.f370u;
        int i2 = v63Var.v;
        boolean z7 = v63Var.w;
        Collection collection = v63Var.x;
        Collection collection2 = v63Var.y;
        int i3 = v63Var.z;
        int i4 = v63Var.A;
        int i5 = v63Var.B;
        boolean z8 = v63Var.C;
        em1 em1Var2 = em1Var;
        f1 f1Var = (f1) km1Var;
        int iE = f1Var.e(i5, "http.socket.timeout");
        boolean zD = f1Var.d("http.connection.stalecheck", z3);
        int iE2 = f1Var.e(i4, "http.connection.timeout");
        boolean zD2 = f1Var.d("http.protocol.expect-continue", v63Var.n);
        boolean zD3 = f1Var.d("http.protocol.handle-authentication", z7);
        boolean zD4 = f1Var.d("http.protocol.allow-circular-redirects", z6);
        long jLongValue = i3;
        Object objC = f1Var.c("http.conn-manager.timeout");
        if (objC != null) {
            jLongValue = ((Long) objC).longValue();
        }
        int i6 = (int) jLongValue;
        int iE3 = f1Var.e(i2, "http.protocol.max-redirects");
        boolean zD5 = f1Var.d("http.protocol.handle-redirects", z4);
        boolean z9 = !f1Var.d("http.protocol.reject-relative-redirect", !z5);
        em1 em1Var3 = (em1) f1Var.c("http.route.default-proxy");
        if (em1Var3 != null) {
            em1Var2 = em1Var3;
        }
        InetAddress inetAddress2 = (InetAddress) f1Var.c("http.route.local-address");
        InetAddress inetAddress3 = inetAddress2 != null ? inetAddress2 : inetAddress;
        Collection collection3 = (Collection) f1Var.c("http.auth.target-scheme-pref");
        Collection collection4 = collection3 != null ? collection3 : collection;
        Collection collection5 = (Collection) f1Var.c("http.auth.proxy-scheme-pref");
        Collection collection6 = collection5 != null ? collection5 : collection2;
        String str2 = (String) f1Var.c("http.protocol.cookie-policy");
        return new v63(zD2, em1Var2, inetAddress3, zD, str2 != null ? str2 : str, zD5, z9, zD4, iE3, zD3, collection4, collection6, i6, iE2, iE, z8);
    }

    public static final int y(int i2, int i3) {
        return (i2 >> i3) & 31;
    }

    public static final long z(long j2) {
        if (j2 < 0) {
            bx3 bx3Var = cy0.o;
            return cy0.q;
        }
        bx3 bx3Var2 = cy0.o;
        return cy0.p;
    }

    public int hashCode() {
        switch (this.a) {
            case 25:
                return toString().hashCode();
            default:
                return super.hashCode();
        }
    }

    public String toString() {
        switch (this.a) {
            case 25:
                String strC = y33.a(getClass()).c();
                strC.getClass();
                return strC;
            default:
                return super.toString();
        }
    }
}
