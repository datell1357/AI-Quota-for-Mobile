package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.util.Base64;
import android.view.DragEvent;
import android.view.View;
import android.widget.Toast;
import com.google.android.gms.common.api.Api;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.ServiceConfigurationError;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import u.sage.R;
import u.sage.worker.RollingWindowWorker;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class on4 {
    public static final StackTraceElement[] a = new StackTraceElement[0];
    public static final long b = Long.MIN_VALUE;
    public static final /* synthetic */ int c = 0;

    public static final Paint A(lb lbVar) {
        if (lbVar == null) {
            zq1.a("Extracting native reference is only supported from androidx.compose.ui.graphics.AndroidPaint instances but received " + y33.a(lbVar.getClass()).b());
        }
        return (Paint) lbVar.o;
    }

    public static final long B(wu4 wu4Var) {
        DragEvent dragEvent = (DragEvent) wu4Var.o;
        float x = dragEvent.getX();
        float y = dragEvent.getY();
        return (((long) Float.floatToRawIntBits(x)) << 32) | (((long) Float.floatToRawIntBits(y)) & 4294967295L);
    }

    public static final long C(double d) {
        return F((float) d, 4294967296L);
    }

    public static final long D(int i) {
        return F(i, 4294967296L);
    }

    public static final nd2 E(String str) {
        return new ky1(str);
    }

    public static final long F(float f, long j) {
        long jFloatToRawIntBits = j | (((long) Float.floatToRawIntBits(f)) & 4294967295L);
        dy3[] dy3VarArr = cy3.b;
        return jFloatToRawIntBits;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0118 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:195:? A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.gb1 G(android.content.res.XmlResourceParser r26, android.content.res.Resources r27) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.on4.G(android.content.res.XmlResourceParser, android.content.res.Resources):gb1");
    }

    public static qx2 H(String str, dd1 dd1Var, pe1 pe1Var, int i) {
        if ((i & 2) != 0) {
            dd1Var = null;
        }
        if ((i & 4) != 0) {
            pe1Var = new z82(20);
        }
        zp0 zp0Var = zu0.a;
        lp0 lp0Var = lp0.p;
        bu3 bu3VarF = k30.f();
        lp0Var.getClass();
        return new qx2(str, dd1Var, pe1Var, dm0.c(ca.B(lp0Var, bu3VarF)));
    }

    public static List I(Resources resources, int i) {
        if (i == 0) {
            return Collections.EMPTY_LIST;
        }
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList();
            if (typedArrayObtainTypedArray.getType(0) == 1) {
                for (int i2 = 0; i2 < typedArrayObtainTypedArray.length(); i2++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        String[] stringArray = resources.getStringArray(resourceId);
                        ArrayList arrayList2 = new ArrayList();
                        for (String str : stringArray) {
                            arrayList2.add(Base64.decode(str, 0));
                        }
                        arrayList.add(arrayList2);
                    }
                }
            } else {
                String[] stringArray2 = resources.getStringArray(i);
                ArrayList arrayList3 = new ArrayList();
                for (String str2 : stringArray2) {
                    arrayList3.add(Base64.decode(str2, 0));
                }
                arrayList.add(arrayList3);
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    public static final List J(pb3 pb3Var) {
        int iB = qj0.B(pb3Var, "id");
        int iB2 = qj0.B(pb3Var, "seq");
        int iB3 = qj0.B(pb3Var, "from");
        int iB4 = qj0.B(pb3Var, "to");
        a42 a42VarP = tv4.p();
        while (pb3Var.c0()) {
            a42VarP.add(new wb1((int) pb3Var.getLong(iB), (int) pb3Var.getLong(iB2), pb3Var.o(iB3), pb3Var.o(iB4)));
        }
        return o70.x0(tv4.l(a42VarP));
    }

    public static final ew3 K(jb3 jb3Var, String str, boolean z) {
        pb3 pb3VarK0 = jb3Var.k0("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int iB = qj0.B(pb3VarK0, "seqno");
            int iB2 = qj0.B(pb3VarK0, "cid");
            int iB3 = qj0.B(pb3VarK0, "name");
            int iB4 = qj0.B(pb3VarK0, "desc");
            if (iB != -1 && iB2 != -1 && iB3 != -1 && iB4 != -1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                while (pb3VarK0.c0()) {
                    if (((int) pb3VarK0.getLong(iB2)) >= 0) {
                        int i = (int) pb3VarK0.getLong(iB);
                        String strO = pb3VarK0.o(iB3);
                        String str2 = pb3VarK0.getLong(iB4) > 0 ? "DESC" : "ASC";
                        linkedHashMap.put(Integer.valueOf(i), strO);
                        linkedHashMap2.put(Integer.valueOf(i), str2);
                    }
                }
                List listY0 = o70.y0(linkedHashMap.entrySet(), new lh0(14));
                ArrayList arrayList = new ArrayList(p70.a0(listY0, 10));
                Iterator it = listY0.iterator();
                while (it.hasNext()) {
                    arrayList.add((String) ((Map.Entry) it.next()).getValue());
                }
                List listC0 = o70.C0(arrayList);
                List listY02 = o70.y0(linkedHashMap2.entrySet(), new lh0(15));
                ArrayList arrayList2 = new ArrayList(p70.a0(listY02, 10));
                Iterator it2 = listY02.iterator();
                while (it2.hasNext()) {
                    arrayList2.add((String) ((Map.Entry) it2.next()).getValue());
                }
                ew3 ew3Var = new ew3(str, z, listC0, o70.C0(arrayList2));
                is0.r(pb3VarK0, null);
                return ew3Var;
            }
            is0.r(pb3VarK0, null);
            return null;
        } finally {
        }
    }

    public static final long L(l33 l33Var) {
        float f = l33Var.c - l33Var.a;
        return (((long) Float.floatToRawIntBits(l33Var.d - l33Var.b)) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    public static void M(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    public static pa3 N(int i, bi0 bi0Var) {
        bi0Var.getClass();
        float[] fArr = new float[i * 4];
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            float f = k94.b / i;
            long jE = k94.e(1.0f, 2.0f * f * i3);
            fArr[i2] = ix.x(jE) + 0.0f;
            fArr[i2 + 1] = ix.y(jE) + 0.0f;
            long jE2 = k94.e(0.8f, f * ((i3 * 2) + 1));
            int i4 = i2 + 3;
            fArr[i2 + 2] = ix.x(jE2) + 0.0f;
            i2 += 4;
            fArr[i4] = ix.y(jE2) + 0.0f;
        }
        return c75.f(fArr, bi0Var, null, 0.0f, 0.0f);
    }

    public static final String O(int i, ag1 ag1Var) {
        return ((Resources) ag1Var.j(ea.c)).getString(i);
    }

    public static final String P(int i, Object[] objArr, ag1 ag1Var) {
        return ((Resources) ag1Var.j(ea.c)).getString(i, Arrays.copyOf(objArr, objArr.length));
    }

    public static final double Q(long j) {
        return ((j >>> 11) * 2048.0d) + (j & 2047);
    }

    public static final String R(int i, long j) {
        if (j >= 0) {
            qj0.z(i);
            String string = Long.toString(j, i);
            string.getClass();
            return string;
        }
        long j2 = i;
        long j3 = ((j >>> 1) / j2) << 1;
        long j4 = j - (j3 * j2);
        if (j4 >= j2) {
            j4 -= j2;
            j3++;
        }
        qj0.z(i);
        String string2 = Long.toString(j3, i);
        string2.getClass();
        qj0.z(i);
        String string3 = Long.toString(j4, i);
        string3.getClass();
        return string2.concat(string3);
    }

    public static kn4 S() {
        ClassLoader classLoader = on4.class.getClassLoader();
        if (kn4.class.equals(kn4.class)) {
            try {
                try {
                    if (Class.forName("com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader", true, classLoader).getConstructor(null).newInstance(null) == null) {
                        throw null;
                    }
                    throw new ClassCastException();
                } catch (ReflectiveOperationException e) {
                    throw new IllegalStateException(e);
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        try {
            Iterator it = Arrays.asList(new on4[0]).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    if (it.next() == null) {
                        throw null;
                    }
                    throw new ClassCastException();
                } catch (ServiceConfigurationError e2) {
                    Logger.getLogger(jn4.class.getName()).logp(Level.SEVERE, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", "Unable to load ".concat(kn4.class.getSimpleName()), (Throwable) e2);
                }
            }
            if (arrayList.size() == 1) {
                return (kn4) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (kn4) kn4.class.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (ReflectiveOperationException e3) {
                throw new IllegalStateException(e3);
            }
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }

    public static final void a(String str, String str2, so1 so1Var, ne1 ne1Var, ag1 ag1Var, int i) {
        ag1 ag1Var2 = ag1Var;
        ag1Var2.X(1878299864);
        int i2 = i | (ag1Var2.f(so1Var) ? 256 : 128) | (ag1Var2.h(ne1Var) ? 2048 : 1024);
        if (ag1Var2.N(i2 & 1, (i2 & 1171) != 1170)) {
            nd2 nd2VarL = is0.L(tv4.n(on3.a, ne1Var), 16.0f, 12.0f);
            cb3 cb3VarA = bb3.a(th.a, mj1.y, ag1Var2, 48);
            int iHashCode = Long.hashCode(ag1Var2.T);
            hu2 hu2VarL = ag1Var2.l();
            nd2 nd2VarH = is0.H(ag1Var2, nd2VarL);
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            ag1Var2.Z();
            if (ag1Var2.S) {
                ag1Var2.k(ic0Var);
            } else {
                ag1Var2.j0();
            }
            fd fdVar = kb0.f;
            ht4.D(fdVar, ag1Var2, cb3VarA);
            fd fdVar2 = kb0.e;
            ht4.D(fdVar2, ag1Var2, hu2VarL);
            Integer numValueOf = Integer.valueOf(iHashCode);
            fd fdVar3 = kb0.g;
            ht4.D(fdVar3, ag1Var2, numValueOf);
            l9 l9Var = kb0.h;
            ht4.y(ag1Var2, l9Var);
            fd fdVar4 = kb0.d;
            ht4.D(fdVar4, ag1Var2, nd2VarH);
            long j = is0.y(ag1Var2).s;
            kd2 kd2Var = kd2.b;
            qn1.a(so1Var, null, on3.c(kd2Var, 24.0f), j, ag1Var2, ((i2 >> 6) & 14) | 432, 0);
            mt1.f(ag1Var2, on3.f(16.0f));
            nz1 nz1Var = new nz1(1.0f, true);
            k80 k80VarA = i80.a(th.c, mj1.z, ag1Var2, 0);
            int iHashCode2 = Long.hashCode(ag1Var2.T);
            hu2 hu2VarL2 = ag1Var2.l();
            nd2 nd2VarH2 = is0.H(ag1Var2, nz1Var);
            ag1Var2.Z();
            if (ag1Var2.S) {
                ag1Var2.k(ic0Var);
            } else {
                ag1Var2.j0();
            }
            ht4.D(fdVar, ag1Var2, k80VarA);
            ht4.D(fdVar2, ag1Var2, hu2VarL2);
            di0.C(iHashCode2, ag1Var2, fdVar3, ag1Var2, l9Var);
            ht4.D(fdVar4, ag1Var2, nd2VarH2);
            lx3.b(str, null, is0.y(ag1Var2).q, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, is0.C(ag1Var2).j, ag1Var, 6, 0, 131066);
            lx3.b(str2, null, is0.y(ag1Var).s, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, is0.C(ag1Var).k, ag1Var, 6, 0, 131066);
            ag1Var2 = ag1Var;
            ag1Var2.p(true);
            mt1.f(ag1Var2, on3.f(16.0f));
            so1 so1VarB = dm0.O;
            if (so1VarB == null) {
                ro1 ro1Var = new ro1("AutoMirrored.Filled.ArrowForward", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, true, 96);
                int i3 = ea4.a;
                sp3 sp3Var = new sp3(t70.b);
                ct2 ct2Var = new ct2();
                ct2Var.h(12.0f, 4.0f);
                ct2Var.g(-1.41f, 1.41f);
                ct2Var.f(16.17f, 11.0f);
                ct2Var.d(4.0f);
                ct2Var.m(2.0f);
                ct2Var.e(12.17f);
                ct2Var.g(-5.58f, 5.59f);
                ct2Var.f(12.0f, 20.0f);
                ct2Var.g(8.0f, -8.0f);
                ct2Var.a();
                ro1.a(ro1Var, ct2Var.n, sp3Var);
                so1VarB = ro1Var.b();
                dm0.O = so1VarB;
            }
            qn1.a(so1VarB, null, on3.c(kd2Var, 20.0f), is0.y(ag1Var2).s, ag1Var2, 432, 0);
            ag1Var2.p(true);
        } else {
            ag1Var2.Q();
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new g4(str, str2, so1Var, ne1Var, i, 2);
        }
    }

    public static final void b(ne1 ne1Var, final ne1 ne1Var2, final ne1 ne1Var3, ag1 ag1Var, int i) {
        ne1Var.getClass();
        ag1Var.X(1373004614);
        int i2 = 2;
        int i3 = i | (ag1Var.h(ne1Var) ? 4 : 2) | (ag1Var.h(ne1Var2) ? 32 : 16) | (ag1Var.h(ne1Var3) ? 256 : 128);
        if (ag1Var.N(i3 & 1, (i3 & 147) != 146)) {
            final lf3 lf3VarO = w80.O(ag1Var);
            final Context context = (Context) ag1Var.j(ea.b);
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            if (objK == bx3Var) {
                objK = new us0(context);
                ag1Var.g0(objK);
            }
            final us0 us0Var = (us0) objK;
            Object objK2 = ag1Var.K();
            if (objK2 == bx3Var) {
                objK2 = zf5.x(ag1Var);
                ag1Var.g0(objK2);
            }
            final qi0 qi0Var = (qi0) objK2;
            b23 b23Var = us0Var.b;
            rx2 rx2Var = us0.e;
            Boolean bool = Boolean.FALSE;
            final pg2 pg2VarG = ca.g(b23Var, bool, null, ag1Var, 48, 2);
            final pg2 pg2VarG2 = ca.g(us0Var.c, Boolean.valueOf(us0.g), null, ag1Var, 48, 2);
            final pg2 pg2VarG3 = ca.g(us0Var.d, bool, null, ag1Var, 48, 2);
            n44.H(null, qj0.U(1851201802, new o4(i2, ne1Var), ag1Var), null, null, null, 0, 0L, 0L, null, qj0.U(957427349, new ff1() { // from class: at0
                @Override // defpackage.ff1
                public final Object d(Object obj, Object obj2, Object obj3) {
                    final int i4;
                    final int i5;
                    zr2 zr2Var = (zr2) obj;
                    ag1 ag1Var2 = (ag1) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    zr2Var.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= ag1Var2.f(zr2Var) ? 4 : 2;
                    }
                    if (ag1Var2.N(iIntValue & 1, (iIntValue & 19) != 18)) {
                        nd2 nd2VarT = w80.T(is0.J(on3.b, zr2Var), lf3VarO, true);
                        k80 k80VarA = i80.a(th.c, mj1.z, ag1Var2, 0);
                        int iHashCode = Long.hashCode(ag1Var2.T);
                        hu2 hu2VarL = ag1Var2.l();
                        nd2 nd2VarH = is0.H(ag1Var2, nd2VarT);
                        lb0.c.getClass();
                        ic0 ic0Var = kb0.b;
                        ag1Var2.Z();
                        if (ag1Var2.S) {
                            ag1Var2.k(ic0Var);
                        } else {
                            ag1Var2.j0();
                        }
                        ht4.D(kb0.f, ag1Var2, k80VarA);
                        ht4.D(kb0.e, ag1Var2, hu2VarL);
                        ht4.D(kb0.g, ag1Var2, Integer.valueOf(iHashCode));
                        ht4.y(ag1Var2, kb0.h);
                        ht4.D(kb0.d, ag1Var2, nd2VarH);
                        ay3 ay3Var = is0.C(ag1Var2).m;
                        long j = is0.y(ag1Var2).a;
                        kd2 kd2Var = kd2.b;
                        lx3.b("Debug Options", is0.L(kd2Var, 16.0f, 8.0f), j, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ay3Var, ag1Var2, 54, 0, 131064);
                        so1 so1VarB = tv4.e;
                        if (so1VarB == null) {
                            ro1 ro1Var = new ro1("Outlined.Visibility", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                            int i6 = ea4.a;
                            sp3 sp3Var = new sp3(t70.b);
                            ct2 ct2Var = new ct2();
                            ct2Var.h(12.0f, 6.0f);
                            ct2Var.c(3.79f, 0.0f, 7.17f, 2.13f, 8.82f, 5.5f);
                            ct2Var.b(19.17f, 14.87f, 15.79f, 17.0f, 12.0f, 17.0f);
                            ct2Var.j(-7.17f, -2.13f, -8.82f, -5.5f);
                            ct2Var.b(4.83f, 8.13f, 8.21f, 6.0f, 12.0f, 6.0f);
                            rt2 rt2Var = new rt2(0.0f, -2.0f);
                            ArrayList arrayList = ct2Var.n;
                            arrayList.add(rt2Var);
                            ct2Var.b(7.0f, 4.0f, 2.73f, 7.11f, 1.0f, 11.5f);
                            ct2Var.b(2.73f, 15.89f, 7.0f, 19.0f, 12.0f, 19.0f);
                            ct2Var.j(9.27f, -3.11f, 11.0f, -7.5f);
                            ct2Var.b(21.27f, 7.11f, 17.0f, 4.0f, 12.0f, 4.0f);
                            ct2Var.a();
                            ct2Var.h(12.0f, 9.0f);
                            ct2Var.c(1.38f, 0.0f, 2.5f, 1.12f, 2.5f, 2.5f);
                            ct2Var.i(13.38f, 14.0f, 12.0f, 14.0f);
                            ct2Var.j(-2.5f, -1.12f, -2.5f, -2.5f);
                            ct2Var.i(10.62f, 9.0f, 12.0f, 9.0f);
                            arrayList.add(new rt2(0.0f, -2.0f));
                            ct2Var.c(-2.48f, 0.0f, -4.5f, 2.02f, -4.5f, 4.5f);
                            ct2Var.i(9.52f, 16.0f, 12.0f, 16.0f);
                            ct2Var.j(4.5f, -2.02f, 4.5f, -4.5f);
                            ct2Var.i(14.48f, 7.0f, 12.0f, 7.0f);
                            ct2Var.a();
                            ro1.a(ro1Var, arrayList, sp3Var);
                            so1VarB = ro1Var.b();
                            tv4.e = so1VarB;
                        }
                        so1 so1Var = so1VarB;
                        boolean zBooleanValue = ((Boolean) pg2VarG.getValue()).booleanValue();
                        final qi0 qi0Var2 = qi0Var;
                        boolean zH = ag1Var2.h(qi0Var2);
                        final us0 us0Var2 = us0Var;
                        boolean zH2 = zH | ag1Var2.h(us0Var2);
                        Object objK3 = ag1Var2.K();
                        bx3 bx3Var2 = rb0.a;
                        if (zH2 || objK3 == bx3Var2) {
                            i4 = 0;
                            objK3 = new pe1() { // from class: ct0
                                @Override // defpackage.pe1
                                public final Object k(Object obj4) {
                                    int i7 = i4;
                                    t64 t64Var = t64.a;
                                    dh0 dh0Var = null;
                                    us0 us0Var3 = us0Var2;
                                    qi0 qi0Var3 = qi0Var2;
                                    int i8 = 0;
                                    boolean zBooleanValue2 = ((Boolean) obj4).booleanValue();
                                    switch (i7) {
                                        case 0:
                                            ez3.a.getClass();
                                            ra3.c(new Object[0]);
                                            ca.y(qi0Var3, null, null, new dt0(us0Var3, zBooleanValue2, dh0Var, i8), 3);
                                            break;
                                        default:
                                            ez3.a.getClass();
                                            ra3.c(new Object[0]);
                                            ca.y(qi0Var3, null, null, new dt0(us0Var3, zBooleanValue2, dh0Var, 1), 3);
                                            break;
                                    }
                                    return t64Var;
                                }
                            };
                            ag1Var2.g0(objK3);
                        } else {
                            i4 = 0;
                        }
                        on4.c("Show WebView", "Display background WebViews in Usage screen", so1Var, zBooleanValue, (pe1) objK3, ag1Var2, 54);
                        so1 so1VarV = w80.v();
                        boolean zBooleanValue2 = ((Boolean) pg2VarG3.getValue()).booleanValue();
                        boolean zH3 = ag1Var2.h(qi0Var2) | ag1Var2.h(us0Var2);
                        Object objK4 = ag1Var2.K();
                        if (zH3 || objK4 == bx3Var2) {
                            i5 = 1;
                            objK4 = new pe1() { // from class: ct0
                                @Override // defpackage.pe1
                                public final Object k(Object obj4) {
                                    int i7 = i5;
                                    t64 t64Var = t64.a;
                                    dh0 dh0Var = null;
                                    us0 us0Var3 = us0Var2;
                                    qi0 qi0Var3 = qi0Var2;
                                    int i8 = 0;
                                    boolean zBooleanValue22 = ((Boolean) obj4).booleanValue();
                                    switch (i7) {
                                        case 0:
                                            ez3.a.getClass();
                                            ra3.c(new Object[0]);
                                            ca.y(qi0Var3, null, null, new dt0(us0Var3, zBooleanValue22, dh0Var, i8), 3);
                                            break;
                                        default:
                                            ez3.a.getClass();
                                            ra3.c(new Object[0]);
                                            ca.y(qi0Var3, null, null, new dt0(us0Var3, zBooleanValue22, dh0Var, 1), 3);
                                            break;
                                    }
                                    return t64Var;
                                }
                            };
                            ag1Var2.g0(objK4);
                        } else {
                            i5 = 1;
                        }
                        on4.c("Simulate Logged Out (Copilot)", "Force handleLoggedOutState() when entitlement fetch fails", so1VarV, zBooleanValue2, (pe1) objK4, ag1Var2, 54);
                        tv4.e(is0.M(kd2Var, 0.0f, 8.0f, i5), 0.0f, 0L, ag1Var2, 6, 6);
                        lx3.b("Analytics", is0.L(kd2Var, 16.0f, 8.0f), is0.y(ag1Var2).a, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, is0.C(ag1Var2).m, ag1Var2, 54, 0, 131064);
                        so1 so1VarU = w80.u();
                        boolean zBooleanValue3 = ((Boolean) pg2VarG2.getValue()).booleanValue();
                        boolean zH4 = ag1Var2.h(qi0Var2) | ag1Var2.h(us0Var2);
                        Context context2 = context;
                        boolean zH5 = zH4 | ag1Var2.h(context2);
                        Object objK5 = ag1Var2.K();
                        if (zH5 || objK5 == bx3Var2) {
                            objK5 = new md(qi0Var2, context2, us0Var2, 2);
                            ag1Var2.g0(objK5);
                        }
                        on4.c("Firebase Analytics", "Send usage events to Google Analytics", so1VarU, zBooleanValue3, (pe1) objK5, ag1Var2, 54);
                        on4.a("Analytics Debugger", "View and debug analytics events", w80.u(), ne1Var2, ag1Var2, 54);
                        on4.a("Diagnostic Logs", "View persistent RollingWindowWorker logs", w80.v(), ne1Var3, ag1Var2, 54);
                        tv4.e(is0.M(kd2Var, 0.0f, 8.0f, 1), 0.0f, 0L, ag1Var2, 6, 6);
                        lx3.b("Rolling Window Testing", is0.L(kd2Var, 16.0f, 8.0f), is0.y(ag1Var2).a, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, is0.C(ag1Var2).m, ag1Var2, 54, 0, 131064);
                        on4.f(context2, ag1Var2, 0);
                        tv4.e(is0.M(kd2Var, 0.0f, 8.0f, 1), 0.0f, 0L, ag1Var2, 6, 6);
                        lx3.b("WebView Freeze Testing", is0.L(kd2Var, 16.0f, 8.0f), is0.y(ag1Var2).a, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, is0.C(ag1Var2).m, ag1Var2, 54, 0, 131064);
                        on4.h(context2, ag1Var2, 0);
                        tv4.e(is0.M(kd2Var, 0.0f, 8.0f, 1), 0.0f, 0L, ag1Var2, 6, 6);
                        lx3.b("These settings are for debugging purposes only.", is0.L(kd2Var, 16.0f, 8.0f), is0.y(ag1Var2).s, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, is0.C(ag1Var2).l, ag1Var2, 54, 0, 131064);
                        mt1.f(ag1Var2, on3.b(kd2Var, 16.0f));
                        ag1Var2.p(true);
                    } else {
                        ag1Var2.Q();
                    }
                    return t64.a;
                }
            }, ag1Var), ag1Var, 805306416, 509);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new bt0(ne1Var, ne1Var2, ne1Var3, i, 0);
        }
    }

    public static final void c(String str, String str2, so1 so1Var, boolean z, pe1 pe1Var, ag1 ag1Var, int i) {
        ag1 ag1Var2 = ag1Var;
        ag1Var2.X(-915209150);
        int i2 = i | (ag1Var2.f(so1Var) ? 256 : 128) | (ag1Var2.g(z) ? 2048 : 1024) | (ag1Var2.h(pe1Var) ? 16384 : 8192);
        int i3 = 0;
        if (ag1Var2.N(i2 & 1, (i2 & 9363) != 9362)) {
            u51 u51Var = on3.a;
            boolean z2 = ((57344 & i2) == 16384) | ((i2 & 7168) == 2048);
            Object objK = ag1Var2.K();
            if (z2 || objK == rb0.a) {
                objK = new ys0(pe1Var, z, i3);
                ag1Var2.g0(objK);
            }
            nd2 nd2VarL = is0.L(tv4.n(u51Var, (ne1) objK), 16.0f, 12.0f);
            cb3 cb3VarA = bb3.a(th.a, mj1.y, ag1Var2, 48);
            int iHashCode = Long.hashCode(ag1Var2.T);
            hu2 hu2VarL = ag1Var2.l();
            nd2 nd2VarH = is0.H(ag1Var2, nd2VarL);
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            ag1Var2.Z();
            if (ag1Var2.S) {
                ag1Var2.k(ic0Var);
            } else {
                ag1Var2.j0();
            }
            fd fdVar = kb0.f;
            ht4.D(fdVar, ag1Var2, cb3VarA);
            fd fdVar2 = kb0.e;
            ht4.D(fdVar2, ag1Var2, hu2VarL);
            Integer numValueOf = Integer.valueOf(iHashCode);
            fd fdVar3 = kb0.g;
            ht4.D(fdVar3, ag1Var2, numValueOf);
            l9 l9Var = kb0.h;
            ht4.y(ag1Var2, l9Var);
            fd fdVar4 = kb0.d;
            ht4.D(fdVar4, ag1Var2, nd2VarH);
            ag1Var2.W(1362706234);
            is3 is3Var = wa2.a;
            qn1.a(so1Var, null, on3.c(kd2.b, 24.0f), ((ua2) ag1Var2.j(is3Var)).a.s, ag1Var2, ((i2 >> 6) & 14) | 432, 0);
            mt1.f(ag1Var2, on3.f(16.0f));
            ag1Var2.p(false);
            nz1 nz1Var = new nz1(1.0f, true);
            k80 k80VarA = i80.a(th.c, mj1.z, ag1Var2, 0);
            int iHashCode2 = Long.hashCode(ag1Var2.T);
            hu2 hu2VarL2 = ag1Var2.l();
            nd2 nd2VarH2 = is0.H(ag1Var2, nz1Var);
            ag1Var2.Z();
            if (ag1Var2.S) {
                ag1Var2.k(ic0Var);
            } else {
                ag1Var2.j0();
            }
            ht4.D(fdVar, ag1Var2, k80VarA);
            ht4.D(fdVar2, ag1Var2, hu2VarL2);
            di0.C(iHashCode2, ag1Var2, fdVar3, ag1Var2, l9Var);
            ht4.D(fdVar4, ag1Var2, nd2VarH2);
            lx3.b(str, null, ((ua2) ag1Var2.j(is3Var)).a.q, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var2.j(is3Var)).b.j, ag1Var, 6, 0, 131066);
            lx3.b(str2, null, ((ua2) ag1Var.j(is3Var)).a.s, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var.j(is3Var)).b.k, ag1Var, 6, 0, 131066);
            ag1Var2 = ag1Var;
            ag1Var2.p(true);
            mt1.f(ag1Var2, on3.f(16.0f));
            jv3.a(z, pe1Var, null, false, zf5.u(((ua2) ag1Var2.j(is3Var)).a.F, ag1Var2), ag1Var2, (i2 >> 9) & 126);
            ag1Var2.p(true);
        } else {
            ag1Var2.Q();
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new zs0(str, str2, so1Var, z, pe1Var, i);
        }
    }

    public static g51 d(bt2 bt2Var, r51 r51Var, String str, k23 k23Var, int i) {
        if ((i & 4) != 0) {
            str = null;
        }
        if ((i & 8) != 0) {
            k23Var = null;
        }
        return new g51(bt2Var, r51Var, str, k23Var);
    }

    public static final lb e() {
        return new lb(new Paint(7));
    }

    public static final void f(Context context, ag1 ag1Var, int i) {
        int i2;
        Context context2 = context;
        ag1 ag1Var2 = ag1Var;
        ag1Var2.X(620156192);
        int i3 = i | (ag1Var2.h(context2) ? 4 : 2);
        if (ag1Var2.N(i3 & 1, (i3 & 3) != 2)) {
            kd2 kd2Var = kd2.b;
            nd2 nd2VarM = is0.M(kd2Var, 16.0f, 0.0f, 2);
            k80 k80VarA = i80.a(th.c, mj1.z, ag1Var2, 0);
            int iHashCode = Long.hashCode(ag1Var2.T);
            hu2 hu2VarL = ag1Var2.l();
            nd2 nd2VarH = is0.H(ag1Var2, nd2VarM);
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            ag1Var2.Z();
            if (ag1Var2.S) {
                ag1Var2.k(ic0Var);
            } else {
                ag1Var2.j0();
            }
            fd fdVar = kb0.f;
            ht4.D(fdVar, ag1Var2, k80VarA);
            fd fdVar2 = kb0.e;
            ht4.D(fdVar2, ag1Var2, hu2VarL);
            Integer numValueOf = Integer.valueOf(iHashCode);
            fd fdVar3 = kb0.g;
            ht4.D(fdVar3, ag1Var2, numValueOf);
            l9 l9Var = kb0.h;
            ht4.y(ag1Var2, l9Var);
            fd fdVar4 = kb0.d;
            ht4.D(fdVar4, ag1Var2, nd2VarH);
            is3 is3Var = wa2.a;
            lx3.b("Schedule Test Trigger", null, ((ua2) ag1Var2.j(is3Var)).a.q, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var2.j(is3Var)).b.j, ag1Var, 6, 0, 131066);
            lx3.b("Simulates the alarm receiver firing to start the automation service. (Forces execution)", is0.O(kd2Var, 0.0f, 0.0f, 8.0f, 7), ((ua2) ag1Var.j(is3Var)).a.s, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var.j(is3Var)).b.k, ag1Var, 54, 0, 131064);
            ag1Var2 = ag1Var;
            u51 u51Var = on3.a;
            cb3 cb3VarA = bb3.a(new rh(12.0f, new k21(2)), mj1.x, ag1Var2, 6);
            int iHashCode2 = Long.hashCode(ag1Var2.T);
            hu2 hu2VarL2 = ag1Var2.l();
            nd2 nd2VarH2 = is0.H(ag1Var2, u51Var);
            ag1Var2.Z();
            if (ag1Var2.S) {
                ag1Var2.k(ic0Var);
            } else {
                ag1Var2.j0();
            }
            ht4.D(fdVar, ag1Var2, cb3VarA);
            ht4.D(fdVar2, ag1Var2, hu2VarL2);
            di0.C(iHashCode2, ag1Var2, fdVar3, ag1Var2, l9Var);
            ht4.D(fdVar4, ag1Var2, nd2VarH2);
            context2 = context;
            boolean zH = ag1Var2.h(context2);
            Object objK = ag1Var2.K();
            bx3 bx3Var = rb0.a;
            if (zH || objK == bx3Var) {
                i2 = 0;
                objK = new ws0(context2, i2);
                ag1Var2.g0(objK);
            } else {
                i2 = 0;
            }
            int i4 = 1;
            dm0.f((ne1) objK, new nz1(1.0f, true), false, null, null, null, null, w80.e, ag1Var2, 805306368);
            boolean zH2 = ag1Var2.h(context2);
            Object objK2 = ag1Var2.K();
            if (zH2 || objK2 == bx3Var) {
                objK2 = new ws0(context2, i4);
                ag1Var2.g0(objK2);
            }
            dm0.f((ne1) objK2, new nz1(1.0f, true), false, null, null, null, null, w80.f, ag1Var2, 805306368);
            ag1Var2.p(true);
            ag1Var2.p(true);
        } else {
            i2 = 0;
            ag1Var2.Q();
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new xs0(context2, i, i2);
        }
    }

    public static final void g(long j, Context context) {
        long jCurrentTimeMillis = (1000 * j) + System.currentTimeMillis();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("rolling_window_trigger_timestamp", Long.valueOf(jCurrentTimeMillis));
        linkedHashMap.put("force_rolling_window", Boolean.TRUE);
        zl0 zl0Var = new zl0(linkedHashMap);
        bi4.L(zl0Var);
        np2 np2VarB = new np2(RollingWindowWorker.class, 0).b(j, TimeUnit.SECONDS);
        np2VarB.c.e = zl0Var;
        op2 op2Var = (op2) np2VarB.a();
        context.getClass();
        eg4.c(context).a(op2Var);
        Toast.makeText(context, di0.x(new StringBuilder("Work scheduled in "), j, "s (Forced)"), 0).show();
        ra3 ra3Var = ez3.a;
        new Date(jCurrentTimeMillis).toString();
        ra3Var.getClass();
        ra3.c(new Object[0]);
    }

    public static final void h(Context context, ag1 ag1Var, int i) {
        int i2;
        Context context2 = context;
        ag1 ag1Var2 = ag1Var;
        ag1Var2.X(-831756517);
        int i3 = i | (ag1Var2.h(context2) ? 4 : 2);
        if (ag1Var2.N(i3 & 1, (i3 & 3) != 2)) {
            kd2 kd2Var = kd2.b;
            nd2 nd2VarM = is0.M(kd2Var, 16.0f, 0.0f, 2);
            k80 k80VarA = i80.a(th.c, mj1.z, ag1Var2, 0);
            int iHashCode = Long.hashCode(ag1Var2.T);
            hu2 hu2VarL = ag1Var2.l();
            nd2 nd2VarH = is0.H(ag1Var2, nd2VarM);
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            ag1Var2.Z();
            if (ag1Var2.S) {
                ag1Var2.k(ic0Var);
            } else {
                ag1Var2.j0();
            }
            fd fdVar = kb0.f;
            ht4.D(fdVar, ag1Var2, k80VarA);
            fd fdVar2 = kb0.e;
            ht4.D(fdVar2, ag1Var2, hu2VarL);
            Integer numValueOf = Integer.valueOf(iHashCode);
            fd fdVar3 = kb0.g;
            ht4.D(fdVar3, ag1Var2, numValueOf);
            l9 l9Var = kb0.h;
            ht4.y(ag1Var2, l9Var);
            fd fdVar4 = kb0.d;
            ht4.D(fdVar4, ag1Var2, nd2VarH);
            is3 is3Var = wa2.a;
            lx3.b("Simulate WebView Freeze", null, ((ua2) ag1Var2.j(is3Var)).a.q, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var2.j(is3Var)).b.j, ag1Var, 6, 0, 131066);
            lx3.b("Pauses WebView and timers to simulate OS throttling. Next refresh will wake it.", is0.O(kd2Var, 0.0f, 0.0f, 8.0f, 7), ((ua2) ag1Var.j(is3Var)).a.s, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var.j(is3Var)).b.k, ag1Var, 54, 0, 131064);
            ag1Var2 = ag1Var;
            u51 u51Var = on3.a;
            int i4 = 2;
            cb3 cb3VarA = bb3.a(new rh(12.0f, new k21(i4)), mj1.x, ag1Var2, 6);
            int iHashCode2 = Long.hashCode(ag1Var2.T);
            hu2 hu2VarL2 = ag1Var2.l();
            nd2 nd2VarH2 = is0.H(ag1Var2, u51Var);
            ag1Var2.Z();
            if (ag1Var2.S) {
                ag1Var2.k(ic0Var);
            } else {
                ag1Var2.j0();
            }
            ht4.D(fdVar, ag1Var2, cb3VarA);
            ht4.D(fdVar2, ag1Var2, hu2VarL2);
            di0.C(iHashCode2, ag1Var2, fdVar3, ag1Var2, l9Var);
            ht4.D(fdVar4, ag1Var2, nd2VarH2);
            context2 = context;
            boolean zH = ag1Var2.h(context2);
            Object objK = ag1Var2.K();
            bx3 bx3Var = rb0.a;
            if (zH || objK == bx3Var) {
                objK = new ws0(context2, i4);
                ag1Var2.g0(objK);
            }
            i2 = 1;
            dm0.f((ne1) objK, new nz1(1.0f, true), false, null, null, null, null, w80.g, ag1Var2, 805306368);
            boolean zH2 = ag1Var2.h(context2);
            Object objK2 = ag1Var2.K();
            if (zH2 || objK2 == bx3Var) {
                objK2 = new ws0(context2, 3);
                ag1Var2.g0(objK2);
            }
            dm0.f((ne1) objK2, new nz1(1.0f, true), false, null, null, null, null, w80.h, ag1Var2, 805306368);
            ag1Var2.p(true);
            ag1Var2.p(true);
        } else {
            i2 = 1;
            ag1Var2.Q();
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new xs0(context2, i, i2);
        }
    }

    public static final void i(Context context, Class cls) {
        Intent intent = new Intent(context, (Class<?>) cls);
        intent.setAction("u.sage.ACTION_SIMULATE_FREEZE");
        context.startService(intent);
        Toast.makeText(context, "Freeze sent to ".concat(cls.getSimpleName()), 0).show();
        ra3 ra3Var = ez3.a;
        "DeveloperSettingsScreen: Simulate freeze sent to ".concat(cls.getSimpleName());
        ra3Var.getClass();
        ra3.c(new Object[0]);
    }

    public static void j(Throwable th, Throwable th2) {
        th.getClass();
        th2.getClass();
        if (th != th2) {
            Integer num = gu1.a;
            if (num == null || num.intValue() >= 19) {
                th.addSuppressed(th2);
                return;
            }
            Method method = jv2.a;
            if (method != null) {
                method.invoke(th, th2);
            }
        }
    }

    public static nd2 k() {
        return new ox();
    }

    public static final void l(vb4 vb4Var, uc3 uc3Var, h22 h22Var) {
        AutoCloseable autoCloseable;
        uc3Var.getClass();
        h22Var.getClass();
        wb4 wb4Var = vb4Var.a;
        if (wb4Var != null) {
            synchronized (wb4Var.a) {
                autoCloseable = (AutoCloseable) wb4Var.b.get("androidx.lifecycle.savedstate.vm.tag");
            }
        } else {
            autoCloseable = null;
        }
        nc3 nc3Var = (nc3) autoCloseable;
        if (nc3Var == null || nc3Var.p) {
            return;
        }
        nc3Var.b(h22Var, uc3Var);
        g22 g22Var = ((r22) h22Var).d;
        if (g22Var == g22.o || g22Var.compareTo(g22.q) >= 0) {
            uc3Var.d();
        } else {
            h22Var.a(new qp0(h22Var, uc3Var));
        }
    }

    public static void m(int i, int i2, int i3) {
        if (i < 0 || i2 > i3) {
            k21.k(xw1.v("startIndex: ", i, ", endIndex: ", i2, ", size: "), i3);
        } else {
            if (i <= i2) {
                return;
            }
            k21.f(di0.p(i, i2, "startIndex: ", " > endIndex: "));
        }
    }

    public static void n(int i, int i2, int i3) {
        if (i < 0 || i2 > i3) {
            k21.k(xw1.v("fromIndex: ", i, ", toIndex: ", i2, ", size: "), i3);
        } else {
            if (i <= i2) {
                return;
            }
            k21.f(di0.p(i, i2, "fromIndex: ", " > toIndex: "));
        }
    }

    public static pa3 o(int i) {
        int i2 = (i & 1) != 0 ? 8 : 10;
        float f = i2;
        float fCos = 1.0f / ((float) Math.cos(k94.b / f));
        bi0 bi0Var = new bi0(2, 1.0f);
        float[] fArr = new float[i2 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            long jK = ix.K(k94.e(fCos, (k94.b / f) * 2.0f * i4), v71.a(0.0f, 0.0f));
            int i5 = i3 + 1;
            fArr[i3] = ix.x(jK);
            i3 += 2;
            fArr[i5] = ix.y(jK);
        }
        return c75.f(fArr, bi0Var, null, 0.0f, 0.0f);
    }

    public static d84 p() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = ((151200000 + jCurrentTimeMillis) / 3600000) * 3600000;
        long j2 = ((1814400000 + jCurrentTimeMillis) / 3600000) * 3600000;
        return new d84(tv4.F(new p84("Current session", 25.0d, Long.valueOf((-10800001) + jCurrentTimeMillis), Long.valueOf(7199999 + jCurrentTimeMillis)), new p84("Weekly limits", 50.0d, Long.valueOf(j - 604800000), Long.valueOf(j)), new p84("Monthly limits", 75.0d, Long.valueOf(j2 - 2592000000L), Long.valueOf(j2))), jCurrentTimeMillis);
    }

    public static final File q(Context context, String str) {
        return new File(context.getApplicationContext().getFilesDir(), "datastore/".concat(str));
    }

    public static boolean r(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return true;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        boolean z = true;
        for (File file2 : fileArrListFiles) {
            z = r(file2) && z;
        }
        return z;
    }

    public static long s(int i, int i2, int i3, int i4) {
        int i5 = 262142;
        int iMin = Math.min(i3, 262142);
        int iMin2 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int iMin3 = i4 == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.min(i4, 262142);
        int i6 = iMin3 == Integer.MAX_VALUE ? iMin : iMin3;
        if (i6 >= 8191) {
            if (i6 < 32767) {
                i5 = 65534;
            } else if (i6 < 65535) {
                i5 = 32766;
            } else {
                if (i6 >= 262143) {
                    nf0.j(i6);
                    p61.q();
                    return 0L;
                }
                i5 = 8190;
            }
        }
        if (i2 != Integer.MAX_VALUE) {
            iMin2 = Math.min(i5, i2);
        }
        return nf0.a(Math.min(i5, i), iMin2, iMin, iMin3);
    }

    public static long t(int i, int i2, int i3, int i4) {
        int i5 = 262142;
        int iMin = Math.min(i, 262142);
        int iMin2 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int iMin3 = i2 == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.min(i2, 262142);
        int i6 = iMin3 == Integer.MAX_VALUE ? iMin : iMin3;
        if (i6 >= 8191) {
            if (i6 < 32767) {
                i5 = 65534;
            } else if (i6 < 65535) {
                i5 = 32766;
            } else {
                if (i6 >= 262143) {
                    nf0.j(i6);
                    p61.q();
                    return 0L;
                }
                i5 = 8190;
            }
        }
        if (i4 != Integer.MAX_VALUE) {
            iMin2 = Math.min(i5, i4);
        }
        return nf0.a(iMin, iMin3, Math.min(i5, i3), iMin2);
    }

    public static final p22 u(View view) {
        view.getClass();
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_lifecycle_owner);
            p22 p22Var = tag instanceof p22 ? (p22) tag : null;
            if (p22Var != null) {
                return p22Var;
            }
            Object objQ = fl4.q(view);
            view = objQ instanceof View ? (View) objQ : null;
        }
        return null;
    }

    public static pb2 v(String str) {
        str.getClass();
        qd1 qd1VarA = pb2.b.a(0, str);
        if (qd1VarA == null) {
            throw new IllegalArgumentException("No subtype found for: \"" + str + '\"');
        }
        String str2 = (String) ((qa2) qd1VarA.y()).get(1);
        Locale locale = Locale.ROOT;
        String lowerCase = str2.toLowerCase(locale);
        lowerCase.getClass();
        String lowerCase2 = ((String) ((qa2) qd1VarA.y()).get(2)).toLowerCase(locale);
        lowerCase2.getClass();
        ArrayList arrayList = new ArrayList();
        int i = qd1VarA.z().o;
        while (true) {
            int i2 = i + 1;
            if (i2 >= str.length()) {
                return new pb2(str, lowerCase, lowerCase2, (String[]) arrayList.toArray(new String[0]));
            }
            qd1 qd1VarA2 = pb2.c.a(i2, str);
            if (qd1VarA2 == null) {
                p61.n("Parameter is not formatted correctly: \"", str.substring(i2), "\" for: \"", str, 34);
                return null;
            }
            ra2 ra2Var = (ra2) qd1VarA2.q;
            pa2 pa2VarD = ra2Var.d(1);
            String str3 = pa2VarD != null ? pa2VarD.a : null;
            if (str3 == null) {
                i = qd1VarA2.z().o;
            } else {
                pa2 pa2VarD2 = ra2Var.d(2);
                String strSubstring = pa2VarD2 != null ? pa2VarD2.a : null;
                if (strSubstring == null) {
                    pa2 pa2VarD3 = ra2Var.d(3);
                    pa2VarD3.getClass();
                    strSubstring = pa2VarD3.a;
                } else if (strSubstring.length() > 0 && qj0.F(strSubstring.charAt(0), '\'', false) && strSubstring.length() > 0 && qj0.F(strSubstring.charAt(strSubstring.length() - 1), '\'', false) && strSubstring.length() > 2) {
                    strSubstring = strSubstring.substring(1, strSubstring.length() - 1);
                }
                arrayList.add(str3);
                arrayList.add(strSubstring);
                i = qd1VarA2.z().o;
            }
        }
    }

    public static e20 w(c20 c20Var) {
        b20 b20Var = new b20();
        b20Var.c = new j73();
        e20 e20Var = new e20(b20Var);
        b20Var.b = e20Var;
        b20Var.a = c20Var.getClass();
        try {
            Object objD = c20Var.d(b20Var);
            if (objD == null) {
                return e20Var;
            }
            b20Var.a = objD;
            return e20Var;
        } catch (Exception e) {
            e20Var.o.k(e);
            return e20Var;
        }
    }

    public static final Class x(i50 i50Var) {
        i50Var.getClass();
        Class clsA = i50Var.a();
        clsA.getClass();
        return clsA;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Class y(i50 i50Var) {
        i50Var.getClass();
        Class clsA = i50Var.a();
        if (clsA.isPrimitive()) {
            String name = clsA.getName();
            switch (name.hashCode()) {
                case -1325958191:
                    if (name.equals("double")) {
                        return Double.class;
                    }
                    break;
                case 104431:
                    if (name.equals("int")) {
                        return Integer.class;
                    }
                    break;
                case 3039496:
                    if (name.equals("byte")) {
                        return Byte.class;
                    }
                    break;
                case 3052374:
                    if (name.equals("char")) {
                        return Character.class;
                    }
                    break;
                case 3327612:
                    if (name.equals("long")) {
                        return Long.class;
                    }
                    break;
                case 3625364:
                    if (name.equals("void")) {
                        return Void.class;
                    }
                    break;
                case 64711720:
                    if (name.equals("boolean")) {
                        return Boolean.class;
                    }
                    break;
                case 97526364:
                    if (name.equals("float")) {
                        return Float.class;
                    }
                    break;
                case 109413500:
                    if (name.equals("short")) {
                        return Short.class;
                    }
                    break;
            }
        }
        return clsA;
    }

    public static final Object z(ya2 ya2Var) {
        Object objI = ya2Var.i();
        ly1 ly1Var = objI instanceof ly1 ? (ly1) objI : null;
        if (ly1Var != null) {
            return ly1Var.B;
        }
        return null;
    }
}
