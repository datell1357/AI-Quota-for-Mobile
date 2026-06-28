package defpackage;

import android.R;
import android.graphics.BlendMode;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcelable;
import android.os.Trace;
import com.google.android.gms.common.api.Api;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class se0 {
    public static final z70 A;
    public static final float B;
    public static final f54 C;
    public static final l33 D;
    public static final String[] E;
    public static final String[] F;
    public static final int[] a = {R.attr.name, R.attr.tint, R.attr.height, R.attr.width, R.attr.alpha, R.attr.autoMirrored, R.attr.tintMode, R.attr.viewportWidth, R.attr.viewportHeight};
    public static final int[] b = {R.attr.name, R.attr.pivotX, R.attr.pivotY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.translateX, R.attr.translateY};
    public static final int[] c = {R.attr.name, R.attr.fillColor, R.attr.pathData, R.attr.strokeColor, R.attr.strokeWidth, R.attr.trimPathStart, R.attr.trimPathEnd, R.attr.trimPathOffset, R.attr.strokeLineCap, R.attr.strokeLineJoin, R.attr.strokeMiterLimit, R.attr.strokeAlpha, R.attr.fillAlpha, R.attr.fillType};
    public static final int[] d = {R.attr.name, R.attr.pathData};
    public static final ka0 e = new ka0(495876144, false, new sq(18));
    public static final ka0 f = new ka0(-183512176, false, new sq(19));
    public static final ka0 g = new ka0(-1934139295, false, new sq(20));
    public static final ka0 h = new ka0(-744110809, false, new lq(7));
    public static final ka0 i = new ka0(1544223277, false, new sq(21));
    public static final ka0 j = new ka0(-1674190610, false, new sq(22));
    public static final ka0 k = new ka0(-597637201, false, new sq(23));
    public static final ka0 l = new ka0(-1912396081, false, new lq(8));
    public static final ka0 m = new ka0(-1151758379, false, new sq(24));
    public static final ka0 n = new ka0(-720841578, false, new sq(25));
    public static final z70 o = z70.x;
    public static final z70 p = z70.t;
    public static final float q = 0.1f;
    public static final z70 r;
    public static final float s;
    public static final float t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final z70 f314u;
    public static final z70 v;
    public static final z70 w;
    public static final ll3 x;
    public static final z70 y;
    public static final z70 z;

    static {
        z70 z70Var = z70.f434u;
        r = z70Var;
        s = 0.38f;
        t = 1.0f;
        f314u = z70.q;
        v = z70.s;
        w = z70.z;
        x = ll3.p;
        y = z70.y;
        z = z70Var;
        A = z70Var;
        B = 80.0f;
        C = f54.q;
        D = new l33(0.0f, 0.0f, 10.0f, 10.0f);
        E = new String[]{"firebase_last_notification", "first_open_time", "first_visit_time", "last_deep_link_referrer", "user_id", "last_advertising_id_reset", "first_open_after_install", "lifetime_user_engagement", "session_user_engagement", "non_personalized_ads", "ga_session_number", "ga_session_id", "last_gclid", "session_number", "session_id"};
        F = new String[]{"_ln", "_fot", "_fvt", "_ldl", "_id", "_lair", "_fi", "_lte", "_se", "_npa", "_sno", "_sid", "_lgclid", "_sno", "_sid"};
    }

    public static final ArrayList B(Map map, pe1 pe1Var) {
        map.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            wh2 wh2Var = (wh2) entry.getValue();
            Boolean bool = wh2Var != null ? Boolean.FALSE : null;
            bool.getClass();
            if (!bool.booleanValue() && !wh2Var.b) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Set setKeySet = linkedHashMap.keySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setKeySet) {
            if (((Boolean) pe1Var.k((String) obj)).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final long C(zv2 zv2Var, boolean z2) {
        long jD = go2.d(zv2Var.c, zv2Var.g);
        if (z2 || !zv2Var.c()) {
            return jD;
        }
        return 0L;
    }

    public static final Object D(Object obj) {
        return obj instanceof c90 ? gg4.q(((c90) obj).a) : obj;
    }

    public static final mr1 E(InputStream inputStream) {
        inputStream.getClass();
        return new mr1(inputStream, new mz3());
    }

    public static final BlendMode F(int i2) {
        return i2 == 0 ? BlendMode.CLEAR : i2 == 1 ? BlendMode.SRC : i2 == 2 ? BlendMode.DST : i2 == 3 ? BlendMode.SRC_OVER : i2 == 4 ? BlendMode.DST_OVER : i2 == 5 ? BlendMode.SRC_IN : i2 == 6 ? BlendMode.DST_IN : i2 == 7 ? BlendMode.SRC_OUT : i2 == 8 ? BlendMode.DST_OUT : i2 == 9 ? BlendMode.SRC_ATOP : i2 == 10 ? BlendMode.DST_ATOP : i2 == 11 ? BlendMode.XOR : i2 == 12 ? BlendMode.PLUS : i2 == 13 ? BlendMode.MODULATE : i2 == 14 ? BlendMode.SCREEN : i2 == 15 ? BlendMode.OVERLAY : i2 == 16 ? BlendMode.DARKEN : i2 == 17 ? BlendMode.LIGHTEN : i2 == 18 ? BlendMode.COLOR_DODGE : i2 == 19 ? BlendMode.COLOR_BURN : i2 == 20 ? BlendMode.HARD_LIGHT : i2 == 21 ? BlendMode.SOFT_LIGHT : i2 == 22 ? BlendMode.DIFFERENCE : i2 == 23 ? BlendMode.EXCLUSION : i2 == 24 ? BlendMode.MULTIPLY : i2 == 25 ? BlendMode.HUE : i2 == 26 ? BlendMode.SATURATION : i2 == 27 ? BlendMode.COLOR : i2 == 28 ? BlendMode.LUMINOSITY : BlendMode.SRC_OVER;
    }

    public static final PorterDuff.Mode G(int i2) {
        return i2 == 0 ? PorterDuff.Mode.CLEAR : i2 == 1 ? PorterDuff.Mode.SRC : i2 == 2 ? PorterDuff.Mode.DST : i2 == 3 ? PorterDuff.Mode.SRC_OVER : i2 == 4 ? PorterDuff.Mode.DST_OVER : i2 == 5 ? PorterDuff.Mode.SRC_IN : i2 == 6 ? PorterDuff.Mode.DST_IN : i2 == 7 ? PorterDuff.Mode.SRC_OUT : i2 == 8 ? PorterDuff.Mode.DST_OUT : i2 == 9 ? PorterDuff.Mode.SRC_ATOP : i2 == 10 ? PorterDuff.Mode.DST_ATOP : i2 == 11 ? PorterDuff.Mode.XOR : i2 == 12 ? PorterDuff.Mode.ADD : i2 == 14 ? PorterDuff.Mode.SCREEN : i2 == 15 ? PorterDuff.Mode.OVERLAY : i2 == 16 ? PorterDuff.Mode.DARKEN : i2 == 17 ? PorterDuff.Mode.LIGHTEN : i2 == 13 ? PorterDuff.Mode.MULTIPLY : PorterDuff.Mode.SRC_OVER;
    }

    public static final long H(long j2) {
        return (((long) Float.floatToRawIntBits((int) (j2 & 4294967295L))) & 4294967295L) | (Float.floatToRawIntBits((int) (j2 >> 32)) << 32);
    }

    public static final void I(qf2 qf2Var) {
        qf2Var.getClass();
        Boolean boolValueOf = Boolean.TRUE;
        float[] fArr = qf2Var.a;
        int i2 = qf2Var.b;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            boolean z2 = true;
            if (i4 >= i2) {
                break;
            }
            float f2 = fArr[i4];
            if (!boolValueOf.booleanValue() || 0.0f > f2 || f2 > 1.0f) {
                z2 = false;
            }
            boolValueOf = Boolean.valueOf(z2);
            i4++;
        }
        if (!boolValueOf.booleanValue()) {
            k21.l("FloatMapping - Progress outside of range: ".concat(qf2.c(qf2Var, 31)));
            return;
        }
        Iterable iterableA0 = ix.a0(1, qf2Var.b);
        if (!(iterableA0 instanceof Collection) || !((Collection) iterableA0).isEmpty()) {
            Iterator it = iterableA0.iterator();
            while (((ls1) it).p) {
                int iNextInt = ((es1) it).nextInt();
                if (qf2Var.b(iNextInt) < qf2Var.b(iNextInt - 1) && (i3 = i3 + 1) < 0) {
                    throw new ArithmeticException("Count overflow has happened.");
                }
            }
        }
        if (i3 <= 1) {
            return;
        }
        k21.l("FloatMapping - Progress wraps more than once: ".concat(qf2.c(qf2Var, 31)));
    }

    public static ds0 a() {
        return new ds0(1.0f, 1.0f);
    }

    public static final long b(float f2, boolean z2, boolean z3) {
        return (((z2 ? 1L : 0L) | (z3 ? 2L : 0L)) & 4294967295L) | (((long) Float.floatToRawIntBits(f2)) << 32);
    }

    public static void c(xn3 xn3Var, List list, ec0 ec0Var) {
        if (list.isEmpty()) {
            return;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            int iC = xn3Var.c((vf1) list.get(i2));
            int iN = xn3Var.N(xn3Var.b, xn3Var.r(iC));
            Object obj = iN < xn3Var.g(xn3Var.b, xn3Var.r(iC + 1)) ? xn3Var.c[xn3Var.h(iN)] : rb0.a;
            c33 c33Var = obj instanceof c33 ? (c33) obj : null;
            if (c33Var != null) {
                c33Var.a = ec0Var;
            }
        }
    }

    public static final boolean d(zv2 zv2Var) {
        return !zv2Var.h && zv2Var.d;
    }

    public static final boolean e(zv2 zv2Var) {
        return (zv2Var.c() || !zv2Var.h || zv2Var.d) ? false : true;
    }

    public static final boolean f(zv2 zv2Var) {
        return zv2Var.h && !zv2Var.d;
    }

    public static void g(Object obj, String str) {
        if (obj != null) {
            return;
        }
        q73.r(str);
    }

    public static final void h(int i2, int i3) {
        if (i2 <= i3) {
            return;
        }
        k21.g("toIndex (", i2, ") is greater than size (", i3, ").");
    }

    public static final boolean i(String str, String str2) {
        str.getClass();
        if (str.equals(str2)) {
            return true;
        }
        if (str.length() != 0) {
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (i2 < str.length()) {
                    char cCharAt = str.charAt(i2);
                    int i5 = i4 + 1;
                    if (i4 == 0 && cCharAt != '(') {
                        break;
                    }
                    if (cCharAt == '(') {
                        i3++;
                    } else if (cCharAt == ')' && i3 - 1 == 0 && i4 != str.length() - 1) {
                        break;
                    }
                    i2++;
                    i4 = i5;
                } else if (i3 == 0) {
                    return nt1.g(zs3.Y0(str.substring(1, str.length() - 1)).toString(), str2);
                }
            }
        }
        return false;
    }

    public static final Object j(nw2 nw2Var, String str, fh0 fh0Var) {
        Object objA = nw2Var.a(str, new jd3(14), fh0Var);
        return objA == ri0.n ? objA : t64.a;
    }

    public static final long k(long j2, boolean z2, int i2, float f2) {
        int iH = ((z2 || i2 == 2 || i2 == 4 || i2 == 5) && mf0.d(j2)) ? mf0.h(j2) : Api.BaseClientBuilder.API_PRIORITY_OTHER;
        if (mf0.j(j2) != iH) {
            iH = ix.k(is0.p(f2), mf0.j(j2), iH);
        }
        return on4.t(0, iH, 0, mf0.g(j2));
    }

    public static final String l(Collection collection) {
        collection.getClass();
        return !collection.isEmpty() ? at3.n0(o70.n0(collection, ",\n", "\n", "\n", null, 56)).concat("},") : " }";
    }

    public static final tf2 m(jh3 jh3Var, pe1 pe1Var) {
        Trace.beginSection("getAllUncoveredSemanticsNodesToIntObjectMap");
        try {
            gh3 gh3VarA = jh3Var.a();
            xy1 xy1Var = gh3VarA.c;
            if (xy1Var.I() && xy1Var.H()) {
                l33 l33VarG = gh3VarA.g();
                tf2 tf2Var = new tf2(48);
                ra3 ra3Var = new ra3(1);
                ra3Var.k(ix.P(l33VarG));
                p(pe1Var, tf2Var, new ra3(1), ra3Var, gh3VarA, gh3VarA);
                return tf2Var;
            }
            tf2 tf2Var2 = is1.a;
            tf2Var2.getClass();
            return tf2Var2;
        } finally {
            Trace.endSection();
        }
    }

    public static final void n(pe1 pe1Var, tf2 tf2Var, ra3 ra3Var, ra3 ra3Var2, gh3 gh3Var, gh3 gh3Var2) {
        ra3 ra3Var3 = ra3Var;
        Region region = (Region) ra3Var3.o;
        ra3 ra3Var4 = ra3Var2;
        Region region2 = (Region) ra3Var4.o;
        xy1 xy1Var = gh3Var2.c;
        xy1 xy1Var2 = gh3Var2.c;
        if (!xy1Var.I() || !xy1Var2.H() || region2.isEmpty()) {
            if (gh3Var2.o()) {
                o(tf2Var, gh3Var, gh3Var2);
                return;
            }
            return;
        }
        l33 l33VarM = gh3Var2.m();
        if ((l33VarM.a >= l33VarM.c) | (l33VarM.b >= l33VarM.d)) {
            jr0 jr0VarF = gh3Var2.f();
            if (jr0VarF == null) {
                gr1 gr1Var = (gr1) xy1Var2.S.d;
                l33VarM = zf5.D(gr1Var).H(gr1Var, false);
            } else {
                md2 md2Var = ((md2) jr0VarF).n;
                Object objG = gh3Var2.d.n.g(ah3.b);
                if (objG == null) {
                    objG = null;
                }
                l33VarM = w80.t(md2Var, objG != null, false);
            }
        }
        ns1 ns1VarP = ix.P(l33VarM);
        ra3Var3.k(ns1VarP);
        if (region.op(region2, Region.Op.INTERSECT)) {
            int i2 = gh3Var2.f;
            if (i2 == gh3Var.f) {
                i2 = -1;
            }
            Rect bounds = region.getBounds();
            tf2Var.h(i2, new ih3(gh3Var2, new ns1(bounds.left, bounds.top, bounds.right, bounds.bottom)));
            List listJ = gh3.j(4, gh3Var2);
            int size = listJ.size() - 1;
            while (-1 < size) {
                if (!((Boolean) pe1Var.k(listJ.get(size))).booleanValue()) {
                    n(pe1Var, tf2Var, ra3Var3, ra3Var4, gh3Var, (gh3) listJ.get(size));
                }
                size--;
                ra3Var3 = ra3Var;
                ra3Var4 = ra3Var2;
            }
            if (x(gh3Var2)) {
                region2.op(ns1VarP.a, ns1VarP.b, ns1VarP.c, ns1VarP.d, Region.Op.DIFFERENCE);
            }
        }
    }

    public static final void o(tf2 tf2Var, gh3 gh3Var, gh3 gh3Var2) {
        xy1 xy1Var;
        gh3 gh3VarL = gh3Var2.l();
        l33 l33VarG = (gh3VarL == null || (xy1Var = gh3VarL.c) == null || !xy1Var.I()) ? D : gh3VarL.g();
        int i2 = gh3Var2.f;
        if (i2 == gh3Var.f) {
            i2 = -1;
        }
        tf2Var.h(i2, new ih3(gh3Var2, ix.P(l33VarG)));
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x015e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void p(defpackage.pe1 r17, defpackage.tf2 r18, defpackage.ra3 r19, defpackage.ra3 r20, defpackage.gh3 r21, defpackage.gh3 r22) {
        /*
            Method dump skipped, instruction units count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.se0.p(pe1, tf2, ra3, ra3, gh3, gh3):void");
    }

    public static e72 q() {
        eh ehVar = kv2.a;
        ehVar.getClass();
        LocaleList localeList = LocaleList.getDefault();
        synchronized (((pr3) ehVar.q)) {
            try {
                e72 e72Var = (e72) ehVar.p;
                if (e72Var != null && localeList == ((LocaleList) ehVar.o)) {
                    return e72Var;
                }
                int size = localeList.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i2 = 0; i2 < size; i2++) {
                    arrayList.add(new d72(localeList.get(i2)));
                }
                e72 e72Var2 = new e72(arrayList);
                ehVar.o = localeList;
                ehVar.p = e72Var2;
                return e72Var2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Set r() {
        try {
            Object objInvoke = Class.forName("android.text.EmojiConsistency").getMethod("getEmojiConsistencySet", null).invoke(null, null);
            if (objInvoke == null) {
                return Collections.EMPTY_SET;
            }
            Set set = (Set) objInvoke;
            Iterator it = set.iterator();
            while (it.hasNext()) {
                if (!(it.next() instanceof int[])) {
                    return Collections.EMPTY_SET;
                }
            }
            return set;
        } catch (Throwable unused) {
            return Collections.EMPTY_SET;
        }
    }

    public static Object s(String str, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 34) {
            return f3.b(str, bundle);
        }
        Parcelable parcelable = bundle.getParcelable(str);
        if (e6.class.isInstance(parcelable)) {
            return parcelable;
        }
        return null;
    }

    public static final int t(jb3 jb3Var) {
        jb3Var.getClass();
        pb3 pb3VarK0 = jb3Var.k0("SELECT changes()");
        try {
            pb3VarK0.c0();
            int i2 = (int) pb3VarK0.getLong(0);
            is0.r(pb3VarK0, null);
            return i2;
        } finally {
        }
    }

    public static final void u(hi0 hi0Var, Throwable th) {
        Throwable runtimeException;
        Iterator it = li0.a.iterator();
        while (it.hasNext()) {
            try {
                ((ki0) it.next()).L(hi0Var, th);
            } catch (Throwable th2) {
                if (th == th2) {
                    runtimeException = th;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                    on4.j(runtimeException, th);
                }
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, runtimeException);
            }
        }
        try {
            on4.j(th, new ht0(hi0Var));
        } catch (Throwable unused) {
        }
        Thread threadCurrentThread2 = Thread.currentThread();
        threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
    }

    public static boolean v(Comparator comparator, Collection collection) {
        Comparator comparator2;
        comparator.getClass();
        collection.getClass();
        if (collection instanceof SortedSet) {
            comparator2 = ((SortedSet) collection).comparator();
            if (comparator2 == null) {
                comparator2 = vh2.o;
            }
        } else {
            if (!(collection instanceof tp3)) {
                return false;
            }
            comparator2 = ((tp3) collection).comparator();
        }
        return comparator.equals(comparator2);
    }

    public static final boolean w(gh3 gh3Var) {
        mm2 mm2VarD = gh3Var.d();
        kg2 kg2Var = gh3Var.d.n;
        return (mm2VarD != null ? mm2VarD.W0() : false) || kg2Var.c(lh3.q) || kg2Var.c(lh3.p);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean x(defpackage.gh3 r14) {
        /*
            boolean r0 = w(r14)
            r1 = 0
            if (r0 != 0) goto L5b
            bh3 r14 = r14.d
            boolean r0 = r14.p
            if (r0 != 0) goto L59
            kg2 r14 = r14.n
            java.lang.Object[] r0 = r14.b
            java.lang.Object[] r2 = r14.c
            long[] r14 = r14.a
            int r3 = r14.length
            int r3 = r3 + (-2)
            if (r3 < 0) goto L5b
            r4 = r1
        L1b:
            r5 = r14[r4]
            long r7 = ~r5
            r9 = 7
            long r7 = r7 << r9
            long r7 = r7 & r5
            r9 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r7 = r7 & r9
            int r7 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r7 == 0) goto L54
            int r7 = r4 - r3
            int r7 = ~r7
            int r7 = r7 >>> 31
            r8 = 8
            int r7 = 8 - r7
            r9 = r1
        L35:
            if (r9 >= r7) goto L52
            r10 = 255(0xff, double:1.26E-321)
            long r10 = r10 & r5
            r12 = 128(0x80, double:6.32E-322)
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 >= 0) goto L4e
            int r10 = r4 << 3
            int r10 = r10 + r9
            r11 = r0[r10]
            r10 = r2[r10]
            oh3 r11 = (defpackage.oh3) r11
            boolean r10 = r11.c
            if (r10 == 0) goto L4e
            goto L59
        L4e:
            long r5 = r5 >> r8
            int r9 = r9 + 1
            goto L35
        L52:
            if (r7 != r8) goto L5b
        L54:
            if (r4 == r3) goto L5b
            int r4 = r4 + 1
            goto L1b
        L59:
            r14 = 1
            return r14
        L5b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.se0.x(gh3):boolean");
    }

    public static bi3 y(df1 df1Var) {
        bi3 bi3Var = new bi3();
        bi3Var.p = dm0.s(bi3Var, bi3Var, df1Var);
        return bi3Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final float z(defpackage.qf2 r8, defpackage.qf2 r9, float r10) {
        /*
            r8.getClass()
            r9.getClass()
            r0 = 0
            int r1 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            if (r1 > 0) goto L8e
            r1 = 1065353216(0x3f800000, float:1.0)
            int r2 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r2 > 0) goto L8e
            r2 = 0
            int r3 = r8.b
            ms1 r2 = defpackage.ix.a0(r2, r3)
            java.util.Iterator r2 = r2.iterator()
        L1c:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L88
            r3 = r2
            es1 r3 = (defpackage.es1) r3
            int r3 = r3.nextInt()
            float r4 = r8.b(r3)
            int r5 = r3 + 1
            int r6 = r8.b
            int r6 = r5 % r6
            float r6 = r8.b(r6)
            int r7 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r7 < 0) goto L44
            int r4 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r4 > 0) goto L1c
            int r4 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r4 > 0) goto L1c
            goto L4c
        L44:
            int r4 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1))
            if (r4 >= 0) goto L4c
            int r4 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r4 > 0) goto L1c
        L4c:
            int r0 = r8.b
            int r5 = r5 % r0
            float r0 = r8.b(r5)
            float r2 = r8.b(r3)
            float r0 = r0 - r2
            float r0 = defpackage.k94.d(r0, r1)
            float r2 = r9.b(r5)
            float r4 = r9.b(r3)
            float r2 = r2 - r4
            float r2 = defpackage.k94.d(r2, r1)
            r4 = 981668463(0x3a83126f, float:0.001)
            int r4 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r4 >= 0) goto L73
            r8 = 1056964608(0x3f000000, float:0.5)
            goto L7d
        L73:
            float r8 = r8.b(r3)
            float r10 = r10 - r8
            float r8 = defpackage.k94.d(r10, r1)
            float r8 = r8 / r0
        L7d:
            float r9 = r9.b(r3)
            float r2 = r2 * r8
            float r2 = r2 + r9
            float r8 = defpackage.k94.d(r2, r1)
            return r8
        L88:
            java.lang.String r8 = "Collection contains no element matching the predicate."
            defpackage.q73.l(r8)
            return r0
        L8e:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r9 = "Invalid progress: "
            r8.<init>(r9)
            r8.append(r10)
            java.lang.String r8 = r8.toString()
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r8 = r8.toString()
            r9.<init>(r8)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.se0.z(qf2, qf2, float):float");
    }

    public abstract boolean A(char c2);
}
