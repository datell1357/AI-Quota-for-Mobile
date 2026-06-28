package defpackage;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Typeface;
import android.os.Build;
import android.view.View;
import android.view.ViewParent;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class fl4 {
    public static final ek1 n = new ek1(0, null);
    public static final ek1 o = new ek1(1, null);
    public static final lh0 p = new lh0(9);
    public static final cd4 q = new cd4(0.31006f, 0.31616f);
    public static final cd4 r = new cd4(0.34567f, 0.3585f);
    public static final cd4 s = new cd4(0.32168f, 0.33767f);
    public static final cd4 t = new cd4(0.31271f, 0.32902f);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final float[] f100u = {0.964212f, 1.0f, 0.825188f};
    public static final StackTraceElement[] v = new StackTraceElement[0];
    public static so1 w;

    public static final nd2 A(nd2 nd2Var, boolean z, vf2 vf2Var, boolean z2, q93 q93Var, pe1 pe1Var) {
        return nd2Var.c(new uz3(z, vf2Var, z2, q93Var, pe1Var));
    }

    public static final String B(byte b) {
        return b == 1 ? "quotation mark '\"'" : b == 2 ? "string escape sequence '\\'" : b == 4 ? "comma ','" : b == 5 ? "colon ':'" : b == 6 ? "start of the object '{'" : b == 7 ? "end of the object '}'" : b == 8 ? "start of the array '['" : b == 9 ? "end of the array ']'" : b == 10 ? "end of the input" : b == 127 ? "invalid token" : "valid token";
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(final java.lang.String r17, final defpackage.nd2 r18, final defpackage.ay3 r19, final int r20, final boolean r21, final int r22, final int r23, defpackage.ag1 r24, final int r25) {
        /*
            Method dump skipped, instruction units count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fl4.a(java.lang.String, nd2, ay3, int, boolean, int, int, ag1, int):void");
    }

    public static final void b(ka0 ka0Var, ag1 ag1Var, int i) {
        ag1Var.X(-709502251);
        if (ag1Var.N(i & 1, (i & 3) != 2)) {
            is3 is3Var = kc3.a;
            ic3 ic3Var = (ic3) ag1Var.j(is3Var);
            gc3 gc3VarE = qn0.E(ag1Var);
            Object[] objArr = {ic3Var};
            int i2 = 12;
            xh1 xh1Var = new xh1(new ei0(7), new m(i2, ic3Var, gc3VarE));
            boolean zH = ag1Var.h(ic3Var) | ag1Var.h(gc3VarE);
            Object objK = ag1Var.K();
            if (zH || objK == rb0.a) {
                objK = new h4(18, ic3Var, gc3VarE);
                ag1Var.g0(objK);
            }
            r12 r12Var = (r12) n44.J0(objArr, xh1Var, (ne1) objK, ag1Var, 0);
            gg4.a(is3Var.a(r12Var), qj0.U(-412824043, new l4(i2, ka0Var, r12Var), ag1Var), ag1Var, 56);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new t7(ka0Var, i, 5);
        }
    }

    public static final void c(boolean z, df1 df1Var, ag1 ag1Var, int i) {
        int i2;
        ag1Var.X(-642000585);
        int i3 = 2;
        if ((i & 6) == 0) {
            i2 = (ag1Var.g(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.h(df1Var) ? 32 : 16;
        }
        if (ag1Var.N(i2 & 1, (i2 & 19) != 18)) {
            Object objA = (dk2) ag1Var.j(x62.a);
            if (objA == null) {
                ag1Var.W(1512740606);
                objA = y62.a(ag1Var);
            } else {
                ag1Var.W(1512737723);
            }
            ag1Var.p(false);
            if (objA == null) {
                k21.n("No NavigationEventDispatcherOwner was provided via LocalNavigationEventDispatcherOwner and no OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner. Please provide one of the two.");
                return;
            }
            boolean zF = ag1Var.f(objA);
            Object objK = ag1Var.K();
            Object obj = rb0.a;
            if (zF || objK == obj) {
                dk2 dk2Var = objA instanceof dk2 ? (dk2) objA : null;
                ck2 navigationEventDispatcher = dk2Var != null ? dk2Var.getNavigationEventDispatcher() : null;
                vo2 vo2Var = objA instanceof vo2 ? (vo2) objA : null;
                objK = new vp(navigationEventDispatcher, vo2Var != null ? vo2Var.getOnBackPressedDispatcher() : null);
                ag1Var.g0(objK);
            }
            Object obj2 = (vp) objK;
            Object objK2 = ag1Var.K();
            if (objK2 == obj) {
                objK2 = zf5.x(ag1Var);
                ag1Var.g0(objK2);
            }
            qi0 qi0Var = (qi0) objK2;
            long j = ag1Var.T;
            boolean zF2 = ag1Var.f(obj2) | ag1Var.e(j);
            Object objK3 = ag1Var.K();
            if (zF2 || objK3 == obj) {
                objK3 = new cb0(qi0Var, new lx2(j, objA));
                ag1Var.g0(objK3);
            }
            cb0 cb0Var = (cb0) objK3;
            ag1Var.W(-348514256);
            boolean zH = ag1Var.h(cb0Var) | ag1Var.h(df1Var);
            Object objK4 = ag1Var.K();
            if (zH || objK4 == obj) {
                objK4 = new h4(24, cb0Var, df1Var);
                ag1Var.g0(objK4);
            }
            zf5.g((ne1) objK4, ag1Var);
            int i4 = i2;
            Boolean boolValueOf = Boolean.valueOf(z);
            int i5 = i4 & 14;
            boolean zH2 = ag1Var.h(cb0Var) | (i5 == 4);
            Object objK5 = ag1Var.K();
            if (zH2 || objK5 == obj) {
                objK5 = new xp(cb0Var, z, i3);
                ag1Var.g0(objK5);
            }
            kt4.g(boolValueOf, cb0Var, null, (pe1) objK5, ag1Var, i5);
            boolean zH3 = ag1Var.h(obj2) | ag1Var.h(cb0Var);
            Object objK6 = ag1Var.K();
            if (zH3 || objK6 == obj) {
                objK6 = new m(21, obj2, cb0Var);
                ag1Var.g0(objK6);
            }
            zf5.b(obj2, cb0Var, (pe1) objK6, ag1Var);
            ag1Var.p(false);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new yp(z, df1Var, i);
        }
    }

    public static final boolean d(gw0 gw0Var, long j) {
        if (!gw0Var.n.A) {
            return false;
        }
        gr1 gr1Var = (gr1) w80.R(gw0Var).S.d;
        if (!gr1Var.h0.A) {
            return false;
        }
        long J = gr1Var.J(0L);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (J >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (J & 4294967295L));
        long j2 = gw0Var.D;
        float f = ((int) (j2 >> 32)) + fIntBitsToFloat;
        float f2 = ((int) (j2 & 4294967295L)) + fIntBitsToFloat2;
        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (j >> 32));
        if (fIntBitsToFloat > fIntBitsToFloat3 || fIntBitsToFloat3 > f) {
            return false;
        }
        float fIntBitsToFloat4 = Float.intBitsToFloat((int) (j & 4294967295L));
        return fIntBitsToFloat2 <= fIntBitsToFloat4 && fIntBitsToFloat4 <= f2;
    }

    public static final ExecutorService e(boolean z) {
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new nd0(z));
        executorServiceNewFixedThreadPool.getClass();
        return executorServiceNewFixedThreadPool;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0081 -> B:25:0x0064). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0084 -> B:25:0x0064). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object f(java.util.List r7, defpackage.pm0 r8, defpackage.fh0 r9) throws java.lang.Throwable {
        /*
            boolean r0 = r9 instanceof defpackage.hm0
            if (r0 == 0) goto L13
            r0 = r9
            hm0 r0 = (defpackage.hm0) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            hm0 r0 = new hm0
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.s
            int r1 = r0.t
            r2 = 0
            r3 = 2
            r4 = 1
            ri0 r5 = defpackage.ri0.n
            if (r1 == 0) goto L41
            if (r1 == r4) goto L39
            if (r1 != r3) goto L33
            java.util.Iterator r7 = r0.r
            java.io.Serializable r8 = r0.q
            w33 r8 = (defpackage.w33) r8
            defpackage.gg4.T(r9)     // Catch: java.lang.Throwable -> L31
            goto L64
        L31:
            r9 = move-exception
            goto L7d
        L33:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r7)
            return r2
        L39:
            java.io.Serializable r7 = r0.q
            java.util.List r7 = (java.util.List) r7
            defpackage.gg4.T(r9)
            goto L5b
        L41:
            defpackage.gg4.T(r9)
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            rd r1 = new rd
            r6 = 3
            r1.<init>(r7, r9, r2, r6)
            r0.q = r9
            r0.t = r4
            java.lang.Object r7 = r8.a(r1, r0)
            if (r7 != r5) goto L5a
            goto L92
        L5a:
            r7 = r9
        L5b:
            w33 r8 = new w33
            r8.<init>()
            java.util.Iterator r7 = r7.iterator()
        L64:
            boolean r9 = r7.hasNext()
            if (r9 == 0) goto L8a
            java.lang.Object r9 = r7.next()
            pe1 r9 = (defpackage.pe1) r9
            r0.q = r8     // Catch: java.lang.Throwable -> L31
            r0.r = r7     // Catch: java.lang.Throwable -> L31
            r0.t = r3     // Catch: java.lang.Throwable -> L31
            java.lang.Object r9 = r9.k(r0)     // Catch: java.lang.Throwable -> L31
            if (r9 != r5) goto L64
            goto L92
        L7d:
            java.lang.Object r1 = r8.n
            if (r1 != 0) goto L84
            r8.n = r9
            goto L64
        L84:
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            defpackage.on4.j(r1, r9)
            goto L64
        L8a:
            java.lang.Object r7 = r8.n
            java.lang.Throwable r7 = (java.lang.Throwable) r7
            if (r7 != 0) goto L93
            t64 r5 = defpackage.t64.a
        L92:
            return r5
        L93:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fl4.f(java.util.List, pm0, fh0):java.lang.Object");
    }

    public static final vl2 g(w73 w73Var) {
        fz fzVarA0;
        int i = w73Var.q;
        long j = w73Var.y;
        long j2 = w73Var.z;
        kj1 kj1Var = w73Var.s;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = kj1Var.iterator();
        while (true) {
            g1 g1Var = (g1) it;
            if (!g1Var.hasNext()) {
                break;
            }
            js2 js2Var = (js2) g1Var.next();
            String str = (String) js2Var.n;
            String str2 = (String) js2Var.o;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            Object arrayList = linkedHashMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(lowerCase, arrayList);
            }
            ((List) arrayList).add(str2);
        }
        pl2 pl2Var = new pl2(oa2.e0(linkedHashMap));
        y73 y73Var = w73Var.t;
        return new vl2(i, j, j2, pl2Var, (y73Var == null || (fzVarA0 = y73Var.a0()) == null) ? null : new dq3(fzVarA0), w73Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final defpackage.k63 h(defpackage.sl2 r5, defpackage.fh0 r6) {
        /*
            Method dump skipped, instruction units count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fl4.h(sl2, fh0):k63");
    }

    public static final byte i(char c) {
        if (c < '~') {
            return f40.b[c];
        }
        return (byte) 0;
    }

    public static final void j(Closeable closeable, Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                on4.j(th, th2);
            }
        }
    }

    public static ra1 k(Context context, int i) {
        Typeface typefaceCreateFromAsset;
        context.getClass();
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                d51.s();
                typefaceCreateFromAsset = d51.y(context.getAssets()).setFontVariationSettings("'wght' " + i).build();
            } else {
                typefaceCreateFromAsset = Typeface.createFromAsset(context.getAssets(), "fonts/anthropic_sans.ttf");
            }
            typefaceCreateFromAsset.getClass();
            return new e52(new dh1(typefaceCreateFromAsset));
        } catch (Exception unused) {
            ez3.a.getClass();
            ra3.g(new Object[0]);
            return ra1.b;
        }
    }

    public static ra1 l(Context context, int i) {
        Typeface typefaceCreateFromAsset;
        context.getClass();
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                d51.s();
                typefaceCreateFromAsset = d51.e(context.getAssets()).setFontVariationSettings("'wght' " + i).build();
            } else {
                typefaceCreateFromAsset = Typeface.createFromAsset(context.getAssets(), "fonts/anthropic_serif.ttf");
            }
            typefaceCreateFromAsset.getClass();
            return new e52(new dh1(typefaceCreateFromAsset));
        } catch (Exception unused) {
            ez3.a.getClass();
            ra3.g(new Object[0]);
            return ra1.c;
        }
    }

    public static rj2 p(y70 y70Var) {
        rj2 rj2Var = y70Var.d0;
        if (rj2Var != null) {
            return rj2Var;
        }
        long jC = a80.c(y70Var, se0.v);
        long jC2 = a80.c(y70Var, se0.y);
        long jC3 = a80.c(y70Var, se0.w);
        z70 z70Var = se0.z;
        long jC4 = a80.c(y70Var, z70Var);
        z70 z70Var2 = se0.A;
        rj2 rj2Var2 = new rj2(jC, jC2, jC3, jC4, a80.c(y70Var, z70Var2), t70.b(0.38f, a80.c(y70Var, z70Var)), t70.b(0.38f, a80.c(y70Var, z70Var2)));
        y70Var.d0 = rj2Var2;
        return rj2Var2;
    }

    public static final ViewParent q(View view) {
        view.getClass();
        ViewParent parent = view.getParent();
        if (parent != null) {
            return parent;
        }
        Object tag = view.getTag(R.id.view_tree_disjoint_parent);
        if (tag instanceof ViewParent) {
            return (ViewParent) tag;
        }
        return null;
    }

    public static final so1 r() {
        so1 so1Var = w;
        if (so1Var != null) {
            return so1Var;
        }
        ro1 ro1Var = new ro1("Outlined.Schedule", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i = ea4.a;
        sp3 sp3Var = new sp3(t70.b);
        ct2 ct2Var = new ct2();
        ct2Var.h(11.99f, 2.0f);
        ct2Var.b(6.47f, 2.0f, 2.0f, 6.48f, 2.0f, 12.0f);
        ct2Var.j(4.47f, 10.0f, 9.99f, 10.0f);
        ct2Var.b(17.52f, 22.0f, 22.0f, 17.52f, 22.0f, 12.0f);
        ct2Var.i(17.52f, 2.0f, 11.99f, 2.0f);
        ct2Var.a();
        ct2Var.h(12.0f, 20.0f);
        ct2Var.c(-4.42f, 0.0f, -8.0f, -3.58f, -8.0f, -8.0f);
        ct2Var.j(3.58f, -8.0f, 8.0f, -8.0f);
        ct2Var.j(8.0f, 3.58f, 8.0f, 8.0f);
        ct2Var.j(-3.58f, 8.0f, -8.0f, 8.0f);
        ct2Var.a();
        ct2Var.h(12.5f, 7.0f);
        ct2Var.f(11.0f, 7.0f);
        ct2Var.m(6.0f);
        ct2Var.g(5.25f, 3.15f);
        ct2Var.g(0.75f, -1.23f);
        ct2Var.g(-4.5f, -2.67f);
        ct2Var.a();
        ro1.a(ro1Var, ct2Var.n, sp3Var);
        so1 so1VarB = ro1Var.b();
        w = so1VarB;
        return so1VarB;
    }

    public static ib2 s(ld ldVar, pa3 pa3Var) {
        List listE;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List list = pa3Var.a;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            w41 w41Var = (w41) list.get(i);
            List list2 = w41Var.a;
            int size2 = list2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                if ((w41Var instanceof u41) && i2 == list2.size() / 2) {
                    arrayList2.add(new js2(w41Var, Integer.valueOf(arrayList.size())));
                }
                arrayList.add(list2.get(i2));
            }
        }
        Float fValueOf = Float.valueOf(0.0f);
        int iA0 = p70.a0(arrayList, 9);
        if (iA0 == 0) {
            listE = tv4.E(fValueOf);
        } else {
            ArrayList arrayList3 = new ArrayList(iA0 + 1);
            arrayList3.add(fValueOf);
            int size3 = arrayList.size();
            int i3 = 0;
            while (i3 < size3) {
                Object obj = arrayList.get(i3);
                i3++;
                float fFloatValue = fValueOf.floatValue();
                float fC = ldVar.c((cl0) obj);
                if (fC < 0.0f) {
                    k21.f("Measured cubic is expected to be greater or equal to zero");
                    return null;
                }
                fValueOf = Float.valueOf(fFloatValue + fC);
                arrayList3.add(fValueOf);
            }
            listE = arrayList3;
        }
        float fFloatValue2 = ((Number) o70.o0(listE)).floatValue();
        qf2 qf2Var = new qf2(listE.size());
        int size4 = listE.size();
        for (int i4 = 0; i4 < size4; i4++) {
            qf2Var.a(((Number) listE.get(i4)).floatValue() / fFloatValue2);
        }
        a42 a42VarP = tv4.p();
        int size5 = arrayList2.size();
        for (int i5 = 0; i5 < size5; i5++) {
            int iIntValue = ((Number) ((js2) arrayList2.get(i5)).o).intValue();
            a42VarP.add(new sz2((qf2Var.b(iIntValue + 1) + qf2Var.b(iIntValue)) / 2.0f, (w41) ((js2) arrayList2.get(i5)).n));
        }
        return new ib2(ldVar, tv4.l(a42VarP), arrayList, qf2Var);
    }

    public static String t(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            k21.f("Invalid input received");
            return null;
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0113  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final defpackage.ay3 u(defpackage.ay3 r27, defpackage.hy1 r28) {
        /*
            Method dump skipped, instruction units count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fl4.u(ay3, hy1):ay3");
    }

    public static final void v(Matrix matrix, float[] fArr) {
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float f4 = fArr[3];
        float f5 = fArr[4];
        float f6 = fArr[5];
        float f7 = fArr[6];
        float f8 = fArr[7];
        float f9 = fArr[8];
        float f10 = fArr[12];
        float f11 = fArr[13];
        float f12 = fArr[15];
        fArr[0] = f;
        fArr[1] = f5;
        fArr[2] = f10;
        fArr[3] = f2;
        fArr[4] = f6;
        fArr[5] = f11;
        fArr[6] = f4;
        fArr[7] = f8;
        fArr[8] = f12;
        matrix.setValues(fArr);
        fArr[0] = f;
        fArr[1] = f2;
        fArr[2] = f3;
        fArr[3] = f4;
        fArr[4] = f5;
        fArr[5] = f6;
        fArr[6] = f7;
        fArr[7] = f8;
        fArr[8] = f9;
    }

    public static final void w(Matrix matrix, float[] fArr) {
        matrix.getValues(fArr);
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float f4 = fArr[3];
        float f5 = fArr[4];
        float f6 = fArr[5];
        float f7 = fArr[6];
        float f8 = fArr[7];
        float f9 = fArr[8];
        fArr[0] = f;
        fArr[1] = f4;
        fArr[2] = 0.0f;
        fArr[3] = f7;
        fArr[4] = f2;
        fArr[5] = f5;
        fArr[6] = 0.0f;
        fArr[7] = f8;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 1.0f;
        fArr[11] = 0.0f;
        fArr[12] = f3;
        fArr[13] = f6;
        fArr[14] = 0.0f;
        fArr[15] = f9;
    }

    public static final String x(Object obj) {
        return (obj.getClass().isAnonymousClass() ? obj.getClass().getName() : obj.getClass().getSimpleName()) + "@" + String.format("%07x", Arrays.copyOf(new Object[]{Integer.valueOf(System.identityHashCode(obj))}, 1));
    }

    public static final w73 y(w73 w73Var) {
        w73Var.getClass();
        v73 v73VarB = w73Var.b();
        y73 y73Var = w73Var.t;
        v73VarB.g = new c74(y73Var.j(), y73Var.b());
        return v73VarB.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static sb z(xd2 xd2Var, float f, sb sbVar) {
        boolean z;
        xd2Var.getClass();
        a42 a42VarP = tv4.p();
        ArrayList arrayList = xd2Var.a;
        int size = arrayList.size();
        cl0 cl0Var = null;
        int i = 0;
        cl0 cl0Var2 = null;
        while (i < size) {
            float[] fArr = new float[8];
            for (int i2 = 0; i2 < 8; i2++) {
                fArr[i2] = k94.c(((cl0) ((js2) arrayList.get(i)).n).a[i2], ((cl0) ((js2) arrayList.get(i)).o).a[i2], f);
            }
            cl0 cl0Var3 = new cl0(fArr);
            if (cl0Var2 == null) {
                cl0Var2 = cl0Var3;
            }
            if (cl0Var != null) {
                a42VarP.add(cl0Var);
            }
            i++;
            cl0Var = cl0Var3;
        }
        if (cl0Var != null && cl0Var2 != null) {
            float[] fArr2 = cl0Var.a;
            float f2 = fArr2[0];
            float f3 = fArr2[1];
            float f4 = fArr2[2];
            float f5 = fArr2[3];
            float f6 = fArr2[4];
            float f7 = fArr2[5];
            float[] fArr3 = cl0Var2.a;
            a42VarP.add(is0.a(f2, f3, f4, f5, f6, f7, fArr3[0], fArr3[1]));
        }
        a42 a42VarL = tv4.l(a42VarP);
        Path path = sbVar.a;
        Path path2 = sbVar.a;
        path.rewind();
        int iA = a42VarL.a();
        boolean z2 = true;
        int i3 = 0;
        while (i3 < iA) {
            cl0 cl0Var4 = (cl0) a42VarL.get(i3);
            if (z2) {
                float[] fArr4 = cl0Var4.a;
                path2.moveTo(fArr4[0], fArr4[1]);
                z = false;
            } else {
                z = z2;
            }
            float[] fArr5 = cl0Var4.a;
            path2.cubicTo(fArr5[2], fArr5[3], fArr5[4], fArr5[5], cl0Var4.a(), cl0Var4.b());
            i3++;
            z2 = z;
        }
        path2.close();
        return sbVar;
    }

    public abstract boolean m(Object obj, Object obj2);

    public boolean n(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return m(obj, obj2);
    }

    public abstract l33 o();
}
