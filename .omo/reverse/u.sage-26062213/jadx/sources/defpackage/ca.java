package defpackage;

import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import com.google.android.gms.common.api.Api;
import com.google.api.client.googleapis.media.MediaHttpDownloader;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.ServiceConfigurationError;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ca {
    public static final dh0[] a = new dh0[0];
    public static final ka0 b = new ka0(2006367931, false, new sq(11));
    public static final ka0 c = new ka0(-436939347, false, new sq(12));
    public static final ka0 d = new ka0(1083545174, false, new sq(13));
    public static final g31 e = new g31(0);
    public static final Object f = new Object();
    public static final String[] g = {"ad_activeview", "ad_click", "ad_exposure", "ad_query", "ad_reward", "adunit_exposure", "app_clear_data", "app_exception", "app_remove", "app_store_refund", "app_store_subscription_cancel", "app_store_subscription_convert", "app_store_subscription_renew", "app_upgrade", "app_update", "ga_campaign", "error", "first_open", "first_visit", "in_app_purchase", "notification_dismiss", "notification_foreground", "notification_open", "notification_receive", "os_update", "session_start", "session_start_with_rollout", "user_engagement", "ad_impression", "screen_view", "ga_extra_parameter", "app_background", "firebase_campaign"};
    public static final String[] h = {"ad_impression"};
    public static final String[] i = {"ad_impression", "in_app_purchase"};
    public static final String[] j = {"ad_impression"};
    public static final String[] k = {"ad_impression", "in_app_purchase"};
    public static final String[] l = {"_aa", "_ac", "_xa", "_aq", "_ar", "_xu", "_cd", "_ae", "_ui", "app_store_refund", "app_store_subscription_cancel", "app_store_subscription_convert", "app_store_subscription_renew", "_ug", "_au", "_cmp", "_err", "_f", "_v", "_iap", "_nd", "_nf", "_no", "_nr", "_ou", "_s", "_ssr", "_e", "_ai", "_vs", "_ep", "_ab", "_cmp"};
    public static final String[] m = {"purchase", "refund", "add_payment_info", "add_shipping_info", "add_to_cart", "add_to_wishlist", "begin_checkout", "remove_from_cart", "select_item", "select_promotion", "view_cart", "view_item", "view_item_list", "view_promotion", "ecommerce_purchase", "purchase_refund", "set_checkout_option", "checkout_progress", "select_content", "view_search_results"};

    public static ws2 A(Object obj) {
        return new ws2(obj, w13.S);
    }

    public static hi0 B(fi0 fi0Var, hi0 hi0Var) {
        hi0Var.getClass();
        return hi0Var == d01.n ? fi0Var : (hi0) hi0Var.R(new ei0(0), fi0Var);
    }

    public static final long C(long j2, long j3) {
        return (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 >> 32)) + ((int) (j3 >> 32)))) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 & 4294967295L)) + ((int) (j3 & 4294967295L)))) & 4294967295L);
    }

    public static final void D(float[] fArr, float[] fArr2) {
        float fN = n(fArr2, 0, fArr, 0);
        float fN2 = n(fArr2, 0, fArr, 1);
        float fN3 = n(fArr2, 0, fArr, 2);
        float fN4 = n(fArr2, 0, fArr, 3);
        float fN5 = n(fArr2, 1, fArr, 0);
        float fN6 = n(fArr2, 1, fArr, 1);
        float fN7 = n(fArr2, 1, fArr, 2);
        float fN8 = n(fArr2, 1, fArr, 3);
        float fN9 = n(fArr2, 2, fArr, 0);
        float fN10 = n(fArr2, 2, fArr, 1);
        float fN11 = n(fArr2, 2, fArr, 2);
        float fN12 = n(fArr2, 2, fArr, 3);
        float fN13 = n(fArr2, 3, fArr, 0);
        float fN14 = n(fArr2, 3, fArr, 1);
        float fN15 = n(fArr2, 3, fArr, 2);
        float fN16 = n(fArr2, 3, fArr, 3);
        fArr[0] = fN;
        fArr[1] = fN2;
        fArr[2] = fN3;
        fArr[3] = fN4;
        fArr[4] = fN5;
        fArr[5] = fN6;
        fArr[6] = fN7;
        fArr[7] = fN8;
        fArr[8] = fN9;
        fArr[9] = fN10;
        fArr[10] = fN11;
        fArr[11] = fN12;
        fArr[12] = fN13;
        fArr[13] = fN14;
        fArr[14] = fN15;
        fArr[15] = fN16;
    }

    public static final pg2 E(Object obj, ag1 ag1Var) {
        Object objK = ag1Var.K();
        if (objK == rb0.a) {
            objK = A(obj);
            ag1Var.g0(objK);
        }
        pg2 pg2Var = (pg2) objK;
        pg2Var.setValue(obj);
        return pg2Var;
    }

    public static final View F(jr0 jr0Var) {
        if (!((md2) jr0Var).n.A) {
            ar1.b("Cannot get View because the Modifier node is not currently attached.");
        }
        return (View) az1.a(w80.R(jr0Var));
    }

    public static final long G(long j2) {
        int iRound = Math.round(Float.intBitsToFloat((int) (j2 >> 32)));
        return (((long) Math.round(Float.intBitsToFloat((int) (j2 & 4294967295L)))) & 4294967295L) | (((long) iRound) << 32);
    }

    public static final Object H(hi0 hi0Var, df1 df1Var) throws Throwable {
        l21 l21VarA;
        hi0 hi0VarS;
        long jU0;
        Thread threadCurrentThread = Thread.currentThread();
        gi0 gi0Var = w13.s;
        ji0 ji0Var = (ji0) hi0Var.K(gi0Var);
        d01 d01Var = d01.n;
        if (ji0Var == null) {
            l21VarA = my3.a();
            hi0VarS = ix.s(d01Var, hi0Var.F(l21VarA), true);
            zp0 zp0Var = zu0.a;
            if (hi0VarS != zp0Var && hi0VarS.K(gi0Var) == null) {
                hi0VarS = hi0VarS.F(zp0Var);
            }
        } else {
            l21VarA = (l21) my3.a.get();
            hi0VarS = ix.s(d01Var, hi0Var, true);
            zp0 zp0Var2 = zu0.a;
            if (hi0VarS != zp0Var2 && hi0VarS.K(gi0Var) == null) {
                hi0VarS = hi0VarS.F(zp0Var2);
            }
        }
        sw swVar = new sw(hi0VarS, threadCurrentThread, l21VarA);
        swVar.s0(ti0.n, swVar, df1Var);
        l21 l21Var = swVar.t;
        if (l21Var != null) {
            int i2 = l21.s;
            l21Var.t0(false);
        }
        while (true) {
            if (l21Var != null) {
                try {
                    jU0 = l21Var.u0();
                } catch (Throwable th) {
                    if (l21Var != null) {
                        int i3 = l21.s;
                        l21Var.r0(false);
                    }
                    throw th;
                }
            } else {
                jU0 = Long.MAX_VALUE;
            }
            if (!(swVar.M() instanceof rp1)) {
                break;
            }
            LockSupport.parkNanos(swVar, jU0);
            if (Thread.interrupted()) {
                swVar.t(new InterruptedException());
            }
        }
        if (l21Var != null) {
            int i4 = l21.s;
            l21Var.r0(false);
        }
        Object objA = cv1.a(swVar.M());
        c90 c90Var = objA instanceof c90 ? (c90) objA : null;
        if (c90Var == null) {
            return objA;
        }
        throw c90Var.a;
    }

    public static final Object J(df1 df1Var) {
        Thread.interrupted();
        return H(d01.n, new p4(df1Var, null, 9));
    }

    public static void K(EditorInfo editorInfo, CharSequence charSequence, int i2, int i3) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT", charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD", i2);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END", i3);
    }

    public static void L(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            g04.a(view, charSequence);
            return;
        }
        i04 i04Var = i04.x;
        if (i04Var != null && i04Var.n == view) {
            i04.b(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new i04(view, charSequence);
            return;
        }
        i04 i04Var2 = i04.y;
        if (i04Var2 != null && i04Var2.n == view) {
            i04Var2.a();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    public static final long M(long j2, long j3, long j4, String str) {
        String property;
        int i2 = bw3.a;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            return j2;
        }
        Long lA0 = gt3.A0(property);
        if (lA0 == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + property + '\'').toString());
        }
        long jLongValue = lA0.longValue();
        if (j3 <= jLongValue && jLongValue <= j4) {
            return jLongValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j3 + ".." + j4 + ", but is '" + jLongValue + '\'').toString());
    }

    public static int N(int i2, String str, int i3) {
        return (int) M(i2, 1L, (i3 & 8) != 0 ? Api.BaseClientBuilder.API_PRIORITY_OTHER : 2097150, str);
    }

    public static final Object O(hi0 hi0Var, df1 df1Var, dh0 dh0Var) throws Throwable {
        hi0 hi0VarE = dh0Var.e();
        hi0 hi0VarF = !((Boolean) hi0Var.R(new ei0(1), Boolean.FALSE)).booleanValue() ? hi0VarE.F(hi0Var) : ix.s(hi0VarE, hi0Var, false);
        n44.k0(hi0VarF);
        if (hi0VarF == hi0VarE) {
            me3 me3Var = new me3(dh0Var, hi0VarF);
            return gg4.S(me3Var, true, me3Var, df1Var);
        }
        w13 w13Var = w13.s;
        if (nt1.g(hi0VarF.K(w13Var), hi0VarE.K(w13Var))) {
            o64 o64Var = new o64(dh0Var, hi0VarF);
            hi0 hi0Var2 = o64Var.r;
            Object objC = iy3.c(hi0Var2, null);
            try {
                return gg4.S(o64Var, true, o64Var, df1Var);
            } finally {
                iy3.a(hi0Var2, objC);
            }
        }
        uu0 uu0Var = new uu0(dh0Var, hi0VarF);
        try {
            tu0.a(dm0.A(dm0.s(uu0Var, uu0Var, df1Var)), t64.a);
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = uu0.t;
            do {
                int i2 = atomicIntegerFieldUpdater.get(uu0Var);
                if (i2 != 0) {
                    if (i2 != 2) {
                        k21.n("Already suspended");
                        return null;
                    }
                    Object objA = cv1.a(uu0Var.M());
                    if (objA instanceof c90) {
                        throw ((c90) objA).a;
                    }
                    return objA;
                }
            } while (!atomicIntegerFieldUpdater.compareAndSet(uu0Var, 0, 1));
            return ri0.n;
        } catch (Throwable th) {
            th = th;
            if (th instanceof ru0) {
                th = ((ru0) th).n;
            }
            uu0Var.g(gg4.q(th));
            throw th;
        }
    }

    public static final Object P(hi0 hi0Var, Object obj, Object obj2, df1 df1Var, dh0 dh0Var) {
        Object objF;
        Object objC = iy3.c(hi0Var, obj2);
        try {
            fr3 fr3Var = new fr3(dh0Var, hi0Var);
            if (df1Var == null) {
                objF = dm0.O(df1Var, obj, fr3Var);
            } else {
                n44.R(2, df1Var);
                objF = df1Var.f(obj, fr3Var);
            }
            iy3.a(hi0Var, objC);
            if (objF == ri0.n) {
                dh0Var.getClass();
            }
            return objF;
        } catch (Throwable th) {
            iy3.a(hi0Var, objC);
            throw th;
        }
    }

    public static final void a(final ne1 ne1Var, final ka0 ka0Var, nd2 nd2Var, final df1 df1Var, final df1 df1Var2, final df1 df1Var3, jl3 jl3Var, long j2, long j3, long j4, long j5, vt0 vt0Var, ag1 ag1Var, final int i2) {
        int i3;
        ka0 ka0Var2;
        df1 df1Var4;
        final nd2 nd2Var2;
        final jl3 jl3Var2;
        final long j6;
        final long j7;
        final long j8;
        final long j9;
        final vt0 vt0Var2;
        int i4;
        nd2 nd2Var3;
        jl3 jl3Var3;
        long j10;
        vt0 vt0Var3;
        long j11;
        long j12;
        long j13;
        ag1Var.X(94478519);
        if ((i2 & 6) == 0) {
            i3 = (ag1Var.h(ne1Var) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            ka0Var2 = ka0Var;
            i3 |= ag1Var.h(ka0Var2) ? 32 : 16;
        } else {
            ka0Var2 = ka0Var;
        }
        int i5 = i3 | 3456;
        if ((i2 & 24576) == 0) {
            df1Var4 = df1Var;
            i5 |= ag1Var.h(df1Var4) ? 16384 : 8192;
        } else {
            df1Var4 = df1Var;
        }
        if ((196608 & i2) == 0) {
            i5 |= ag1Var.h(df1Var2) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i5 |= ag1Var.h(df1Var3) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i5 |= 4194304;
        }
        if ((100663296 & i2) == 0) {
            i5 |= MediaHttpDownloader.MAXIMUM_CHUNK_SIZE;
        }
        if ((805306368 & i2) == 0) {
            i5 |= 268435456;
        }
        if (ag1Var.N(i5 & 1, (306783379 & i5) != 306783378)) {
            ag1Var.S();
            if ((i2 & 1) == 0 || ag1Var.x()) {
                ds2 ds2Var = m7.a;
                jl3 jl3VarA = ol3.a(ht4.g, ag1Var);
                long jD = a80.d(ht4.f, ag1Var);
                long jD2 = a80.d(ht4.l, ag1Var);
                i4 = i5 & (-2143289345);
                long jD3 = a80.d(ht4.h, ag1Var);
                long jD4 = a80.d(ht4.j, ag1Var);
                vt0 vt0Var4 = new vt0();
                nd2Var3 = kd2.b;
                jl3Var3 = jl3VarA;
                j10 = jD;
                vt0Var3 = vt0Var4;
                j11 = jD2;
                j12 = jD3;
                j13 = jD4;
            } else {
                ag1Var.Q();
                i4 = i5 & (-2143289345);
                nd2Var3 = nd2Var;
                jl3Var3 = jl3Var;
                j10 = j2;
                j11 = j3;
                j12 = j4;
                j13 = j5;
                vt0Var3 = vt0Var;
            }
            ag1Var.q();
            nd2 nd2Var4 = nd2Var3;
            x7.c(ne1Var, ka0Var2, nd2Var4, df1Var4, df1Var2, df1Var3, jl3Var3, j10, j11, j12, j13, vt0Var3, ag1Var, i4 & 2147483646, 3456);
            nd2Var2 = nd2Var4;
            vt0Var2 = vt0Var3;
            j9 = j13;
            j8 = j12;
            j7 = j11;
            j6 = j10;
            jl3Var2 = jl3Var3;
        } else {
            ag1Var.Q();
            nd2Var2 = nd2Var;
            jl3Var2 = jl3Var;
            j6 = j2;
            j7 = j3;
            j8 = j4;
            j9 = j5;
            vt0Var2 = vt0Var;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1() { // from class: t8
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iF0 = qj0.f0(i2 | 1);
                    ca.a(ne1Var, ka0Var, nd2Var2, df1Var, df1Var2, df1Var3, jl3Var2, j6, j7, j8, j9, vt0Var2, (ag1) obj, iF0);
                    return t64.a;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0063 A[LOOP:0: B:4:0x000d->B:35:0x0063, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0066 A[EDGE_INSN: B:43:0x0066->B:36:0x0066 BREAK  A[LOOP:0: B:4:0x000d->B:35:0x0063], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final defpackage.gh3 b(defpackage.xy1 r8, boolean r9) {
        /*
            bo r0 = r8.S
            java.lang.Object r0 = r0.g
            md2 r0 = (defpackage.md2) r0
            int r1 = r0.q
            r1 = r1 & 8
            r2 = 0
            if (r1 == 0) goto L66
        Ld:
            if (r0 == 0) goto L66
            int r1 = r0.p
            r1 = r1 & 8
            if (r1 == 0) goto L5d
            r1 = r0
            r3 = r2
        L17:
            if (r1 == 0) goto L5d
            boolean r4 = r1 instanceof defpackage.eh3
            if (r4 == 0) goto L1f
            r2 = r1
            goto L66
        L1f:
            int r4 = r1.p
            r4 = r4 & 8
            if (r4 == 0) goto L58
            boolean r4 = r1 instanceof defpackage.kr0
            if (r4 == 0) goto L58
            r4 = r1
            kr0 r4 = (defpackage.kr0) r4
            md2 r4 = r4.C
            r5 = 0
        L2f:
            r6 = 1
            if (r4 == 0) goto L55
            int r7 = r4.p
            r7 = r7 & 8
            if (r7 == 0) goto L52
            int r5 = r5 + 1
            if (r5 != r6) goto L3e
            r1 = r4
            goto L52
        L3e:
            if (r3 != 0) goto L49
            ug2 r3 = new ug2
            r6 = 16
            md2[] r6 = new defpackage.md2[r6]
            r3.<init>(r6)
        L49:
            if (r1 == 0) goto L4f
            r3.c(r1)
            r1 = r2
        L4f:
            r3.c(r4)
        L52:
            md2 r4 = r4.s
            goto L2f
        L55:
            if (r5 != r6) goto L58
            goto L17
        L58:
            md2 r1 = defpackage.w80.g(r3)
            goto L17
        L5d:
            int r1 = r0.q
            r1 = r1 & 8
            if (r1 == 0) goto L66
            md2 r0 = r0.s
            goto Ld
        L66:
            r2.getClass()
            eh3 r2 = (defpackage.eh3) r2
            md2 r2 = (defpackage.md2) r2
            md2 r0 = r2.n
            bh3 r1 = r8.x()
            if (r1 != 0) goto L7a
            bh3 r1 = new bh3
            r1.<init>()
        L7a:
            gh3 r2 = new gh3
            r2.<init>(r0, r9, r8, r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ca.b(xy1, boolean):gh3");
    }

    public static final boolean c(View view, View view2) {
        if (view2.equals(view)) {
            return false;
        }
        for (ViewParent parent = view2.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == view) {
                return true;
            }
        }
        return false;
    }

    public static final void d(float[] fArr, float f2, float f3, float[] fArr2) {
        xa2.d(fArr2);
        xa2.g(fArr2, f2, f3);
        D(fArr, fArr2);
    }

    public static zq0 e(qi0 qi0Var, hi0 hi0Var, df1 df1Var, int i2) {
        if ((i2 & 1) != 0) {
            hi0Var = d01.n;
        }
        zq0 zq0Var = new zq0(ix.F(qi0Var, hi0Var), true);
        zq0Var.s0(ti0.n, zq0Var, df1Var);
        return zq0Var;
    }

    public static final Object f(ListenableFuture listenableFuture, bv3 bv3Var) throws Throwable {
        try {
            if (listenableFuture.isDone()) {
                return b2.g(listenableFuture);
            }
            o20 o20Var = new o20(1, dm0.A(bv3Var));
            listenableFuture.a(new tz3(listenableFuture, o20Var, 1), hu0.n);
            o20Var.z(new c8(17, listenableFuture));
            return o20Var.v();
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause != null) {
                throw cause;
            }
            ux1 ux1Var = new ux1();
            nt1.R(ux1Var, nt1.class.getName());
            throw ux1Var;
        }
    }

    public static final pg2 g(a81 a81Var, Object obj, hi0 hi0Var, ag1 ag1Var, int i2, int i3) {
        int i4 = 2;
        if ((i3 & 2) != 0) {
            hi0Var = d01.n;
        }
        boolean zH = ag1Var.h(hi0Var) | ag1Var.h(a81Var);
        Object objK = ag1Var.K();
        dh0 dh0Var = null;
        Object obj2 = rb0.a;
        if (zH || objK == obj2) {
            objK = new p(hi0Var, a81Var, dh0Var, 27);
            ag1Var.g0(objK);
        }
        df1 df1Var = (df1) objK;
        Object objK2 = ag1Var.K();
        if (objK2 == obj2) {
            objK2 = A(obj);
            ag1Var.g0(objK2);
        }
        pg2 pg2Var = (pg2) objK2;
        boolean zH2 = ag1Var.h(df1Var);
        Object objK3 = ag1Var.K();
        if (zH2 || objK3 == obj2) {
            objK3 = new dp3(df1Var, pg2Var, dh0Var, i4);
            ag1Var.g0(objK3);
        }
        zf5.d(a81Var, hi0Var, (df1) objK3, ag1Var);
        return pg2Var;
    }

    public static final pg2 h(ur3 ur3Var, ag1 ag1Var) {
        return g(ur3Var, ur3Var.getValue(), d01.n, ag1Var, 0, 0);
    }

    public static int i(Comparable comparable, Comparable comparable2) {
        if (comparable == comparable2) {
            return 0;
        }
        if (comparable == null) {
            return -1;
        }
        if (comparable2 == null) {
            return 1;
        }
        return comparable.compareTo(comparable2);
    }

    public static Object j(Class cls, Class cls2) {
        try {
            return cls.asSubclass(cls2).getConstructor(null).newInstance(null);
        } catch (Exception e2) {
            throw new ServiceConfigurationError("Provider " + cls.getName() + " could not be instantiated.", e2);
        }
    }

    public static void k(File file) throws IOException {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile == null) {
            return;
        }
        parentFile.mkdirs();
        if (parentFile.isDirectory()) {
            return;
        }
        q73.q(file, "Unable to create parent directories of ");
    }

    public static final ug2 l() {
        ui3 ui3Var = cp3.b;
        ug2 ug2Var = (ug2) ui3Var.c();
        if (ug2Var != null) {
            return ug2Var;
        }
        ug2 ug2Var2 = new ug2(new zf1[0]);
        ui3Var.k(ug2Var2);
        return ug2Var2;
    }

    public static final os0 m(ne1 ne1Var) {
        ui3 ui3Var = cp3.a;
        return new os0(ne1Var, null);
    }

    public static final float n(float[] fArr, int i2, float[] fArr2, int i3) {
        int i4 = i2 * 4;
        return (fArr[i4 + 3] * fArr2[12 + i3]) + (fArr[i4 + 2] * fArr2[8 + i3]) + (fArr[i4 + 1] * fArr2[4 + i3]) + (fArr[i4] * fArr2[i3]);
    }

    public static boolean o(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static final int p(int i2, List list) {
        int i3;
        int i4 = ((ms2) o70.o0(list)).c;
        if (i2 > ((ms2) o70.o0(list)).c) {
            br1.a("Index " + i2 + " should be less or equal than last line's end " + i4);
        }
        int i5 = 1;
        int size = list.size() - 1;
        int i6 = 0;
        while (true) {
            if (i6 > size) {
                i3 = -(i6 + 1);
                break;
            }
            i3 = (i6 + size) >>> 1;
            ms2 ms2Var = (ms2) list.get(i3);
            byte b2 = ms2Var.b > i2 ? (byte) 1 : ms2Var.c <= i2 ? (byte) -1 : (byte) 0;
            if (b2 >= 0) {
                if (b2 <= 0) {
                    break;
                }
                size = i3 - 1;
            } else {
                i6 = i3 + 1;
            }
        }
        if (i3 >= 0 && i3 < list.size()) {
            return i3;
        }
        int size2 = list.size();
        String strA = n42.a(list, null, new z82(i5), 31);
        StringBuilder sbV = xw1.v("Found paragraph index ", i3, " should be in range [0, ", size2, ").\nDebug info: index=");
        sbV.append(i2);
        sbV.append(", paragraphs=[");
        sbV.append(strA);
        sbV.append("]");
        br1.a(sbV.toString());
        return i3;
    }

    public static final int q(int i2, List list) {
        int size = list.size() - 1;
        int i3 = 0;
        while (i3 <= size) {
            int i4 = (i3 + size) >>> 1;
            ms2 ms2Var = (ms2) list.get(i4);
            byte b2 = ms2Var.d > i2 ? (byte) 1 : ms2Var.e <= i2 ? (byte) -1 : (byte) 0;
            if (b2 < 0) {
                i3 = i4 + 1;
            } else {
                if (b2 <= 0) {
                    return i4;
                }
                size = i4 - 1;
            }
        }
        return -(i3 + 1);
    }

    public static fi0 r(fi0 fi0Var, gi0 gi0Var) {
        gi0Var.getClass();
        if (nt1.g(fi0Var.getKey(), gi0Var)) {
            return fi0Var;
        }
        return null;
    }

    public static aj1 s(SSLSession sSLSession) throws IOException {
        Object objI;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            k21.n("cipherSuite == null");
            return null;
        }
        if (cipherSuite.equals("TLS_NULL_WITH_NULL_NULL") || cipherSuite.equals("SSL_NULL_WITH_NULL_NULL")) {
            p61.k("cipherSuite == ".concat(cipherSuite));
            return null;
        }
        d50 d50VarP = d50.b.p(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            k21.n("tlsVersion == null");
            return null;
        }
        if ("NONE".equals(protocol)) {
            p61.k("tlsVersion == NONE");
            return null;
        }
        sz3.o.getClass();
        sz3 sz3VarH = pr3.h(protocol);
        try {
            objI = hi4.i(sSLSession.getPeerCertificates());
        } catch (SSLPeerUnverifiedException unused) {
            objI = g01.n;
        }
        return new aj1(sz3VarH, d50VarP, hi4.i(sSLSession.getLocalCertificates()), new cc(11, objI));
    }

    public static final int t(gi3 gi3Var, gi3[] gi3VarArr) {
        gi3VarArr.getClass();
        int iHashCode = (gi3Var.b().hashCode() * 31) + Arrays.hashCode(gi3VarArr);
        g1 g1Var = new g1(gi3Var);
        int iHashCode2 = 1;
        int i2 = 1;
        while (true) {
            int iHashCode3 = 0;
            if (!g1Var.hasNext()) {
                break;
            }
            int i3 = i2 * 31;
            String strB = ((gi3) g1Var.next()).b();
            if (strB != null) {
                iHashCode3 = strB.hashCode();
            }
            i2 = i3 + iHashCode3;
        }
        g1 g1Var2 = new g1(gi3Var);
        while (g1Var2.hasNext()) {
            int i4 = iHashCode2 * 31;
            dm0 dm0VarC = ((gi3) g1Var2.next()).c();
            iHashCode2 = i4 + (dm0VarC != null ? dm0VarC.hashCode() : 0);
        }
        return (((iHashCode * 31) + i2) * 31) + iHashCode2;
    }

    public static final void u(oy1 oy1Var) {
        w80.R(oy1Var).E();
    }

    public static boolean v(byte b2) {
        return b2 > -65;
    }

    public static final g1 w(Object[] objArr) {
        return new g1(1, objArr);
    }

    public static final ir3 x(qi0 qi0Var, hi0 hi0Var, ti0 ti0Var, df1 df1Var) {
        hi0 hi0VarF = ix.F(qi0Var, hi0Var);
        ti0Var.getClass();
        ir3 t12Var = ti0Var == ti0.o ? new t12(hi0VarF, df1Var) : new ir3(hi0VarF, true);
        t12Var.s0(ti0Var, t12Var, df1Var);
        return t12Var;
    }

    public static /* synthetic */ ir3 y(qi0 qi0Var, hi0 hi0Var, ti0 ti0Var, df1 df1Var, int i2) {
        if ((i2 & 1) != 0) {
            hi0Var = d01.n;
        }
        if ((i2 & 2) != 0) {
            ti0Var = ti0.n;
        }
        return x(qi0Var, hi0Var, ti0Var, df1Var);
    }

    public static hi0 z(fi0 fi0Var, gi0 gi0Var) {
        gi0Var.getClass();
        return nt1.g(fi0Var.getKey(), gi0Var) ? d01.n : fi0Var;
    }
}
