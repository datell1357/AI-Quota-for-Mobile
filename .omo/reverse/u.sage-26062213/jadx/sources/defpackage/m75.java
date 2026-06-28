package defpackage;

import android.app.Application;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m75 extends j05 {
    public ty4 c;
    public pc4 d;
    public final CopyOnWriteArraySet e;
    public boolean f;
    public final AtomicReference g;
    public final Object h;
    public boolean i;
    public int j;
    public i65 k;
    public i65 l;
    public PriorityQueue m;
    public y55 n;
    public final AtomicLong o;
    public long p;
    public final e65 q;
    public boolean r;
    public i65 s;
    public i75 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public i65 f204u;
    public final ra3 v;

    public m75(r45 r45Var) {
        super(r45Var);
        this.e = new CopyOnWriteArraySet();
        this.h = new Object();
        this.i = false;
        this.j = 1;
        this.r = true;
        this.v = new ra3(20, this);
        this.g = new AtomicReference();
        this.n = y55.c;
        this.p = -1L;
        this.o = new AtomicLong(0L);
        this.q = new e65(r45Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x006c, code lost:
    
        if (r3 > 500) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a3, code lost:
    
        if (r5 > 500) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A(java.lang.String r20, java.lang.String r21, android.os.Bundle r22, boolean r23, boolean r24, long r25, long r27) {
        /*
            Method dump skipped, instruction units count: 513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m75.A(java.lang.String, java.lang.String, android.os.Bundle, boolean, boolean, long, long):void");
    }

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
        	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    public final void B() {
        /*
            Method dump skipped, instruction units count: 1360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m75.B():void");
    }

    public final void C(String str, String str2, Bundle bundle) {
        v();
        r45 r45Var = (r45) this.a;
        D(r45Var.k.currentTimeMillis(), r45Var.d.G(null, e05.e1) ? r45Var.k.elapsedRealtime() : 0L, bundle, str, str2);
    }

    public final void D(long j, long j2, Bundle bundle, String str, String str2) {
        v();
        boolean z = true;
        if (this.d != null && !ac5.Y(str2)) {
            z = false;
        }
        E(str, str2, j, j2, bundle, true, z, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0137  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E(java.lang.String r27, java.lang.String r28, long r29, long r31, android.os.Bundle r33, boolean r34, boolean r35, boolean r36) {
        /*
            Method dump skipped, instruction units count: 1273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m75.E(java.lang.String, java.lang.String, long, long, android.os.Bundle, boolean, boolean, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void F(java.lang.String r12, java.lang.String r13, java.lang.Object r14, boolean r15, long r16) {
        /*
            Method dump skipped, instruction units count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m75.F(java.lang.String, java.lang.String, java.lang.Object, boolean, long):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void G(long r14, java.lang.Object r16, java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m75.G(long, java.lang.Object, java.lang.String, java.lang.String):void");
    }

    public final void H() {
        v();
        w();
        r45 r45Var = (r45) this.a;
        if (r45Var.h()) {
            ds4 ds4Var = r45Var.d;
            ((r45) ds4Var.a).getClass();
            Boolean boolI = ds4Var.I("google_analytics_deferred_deep_link_enabled");
            if (boolI != null && boolI.booleanValue()) {
                a25 a25Var = r45Var.f;
                r45.l(a25Var);
                a25Var.m.a("Deferred Deep Link feature enabled.");
                j45 j45Var = r45Var.g;
                r45.l(j45Var);
                j45Var.E(new h65(this, 2));
            }
            o95 o95VarO = r45Var.o();
            o95VarO.v();
            o95VarO.w();
            vc5 vc5VarL = o95VarO.L(true);
            o95VarO.H();
            r45 r45Var2 = (r45) o95VarO.a;
            r45Var2.d.G(null, e05.W0);
            r45Var2.n().C(3, new byte[0]);
            o95VarO.J(new q85(o95VarO, vc5VarL, 1));
            this.r = false;
            f35 f35Var = r45Var.e;
            r45.j(f35Var);
            f35Var.v();
            String string = f35Var.z().getString("previous_os_version", null);
            ((r45) f35Var.a).p().x();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor editorEdit = f35Var.z().edit();
                editorEdit.putString("previous_os_version", str);
                editorEdit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            r45Var.p().x();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            C("auto", "_ou", bundle);
        }
    }

    public final void I(Bundle bundle, long j) {
        r45 r45Var = (r45) this.a;
        Preconditions.checkNotNull(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.i.a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        Preconditions.checkNotNull(bundle2);
        il4.d(bundle2, "app_id", String.class, null);
        il4.d(bundle2, "origin", String.class, null);
        il4.d(bundle2, "name", String.class, null);
        il4.d(bundle2, "value", Object.class, null);
        il4.d(bundle2, "trigger_event_name", String.class, null);
        il4.d(bundle2, "trigger_timeout", Long.class, 0L);
        il4.d(bundle2, "timed_out_event_name", String.class, null);
        il4.d(bundle2, "timed_out_event_params", Bundle.class, null);
        il4.d(bundle2, "triggered_event_name", String.class, null);
        il4.d(bundle2, "triggered_event_params", Bundle.class, null);
        il4.d(bundle2, "time_to_live", Long.class, 0L);
        il4.d(bundle2, "expired_event_name", String.class, null);
        il4.d(bundle2, "expired_event_params", Bundle.class, null);
        Preconditions.checkNotEmpty(bundle2.getString("name"));
        Preconditions.checkNotEmpty(bundle2.getString("origin"));
        Preconditions.checkNotNull(bundle2.get("value"));
        bundle2.putLong("creation_timestamp", j);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        ac5 ac5Var = r45Var.i;
        p15 p15Var = r45Var.j;
        a25 a25Var2 = r45Var.f;
        r45.j(ac5Var);
        if (ac5Var.D0(string) != 0) {
            r45.l(a25Var2);
            a25Var2.f.b(p15Var.c(string), "Invalid conditional user property name");
            return;
        }
        r45.j(ac5Var);
        if (ac5Var.K(obj, string) != 0) {
            r45.l(a25Var2);
            a25Var2.f.c(p15Var.c(string), obj, "Invalid conditional user property value");
            return;
        }
        Object objL = ac5Var.L(obj, string);
        if (objL == null) {
            r45.l(a25Var2);
            a25Var2.f.c(p15Var.c(string), obj, "Unable to normalize conditional user property value");
            return;
        }
        il4.b(bundle2, objL);
        long j2 = bundle2.getLong("trigger_timeout");
        if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name")) && (j2 > 15552000000L || j2 < 1)) {
            r45.l(a25Var2);
            a25Var2.f.c(p15Var.c(string), Long.valueOf(j2), "Invalid conditional user property timeout");
            return;
        }
        long j3 = bundle2.getLong("time_to_live");
        if (j3 > 15552000000L || j3 < 1) {
            r45.l(a25Var2);
            a25Var2.f.c(p15Var.c(string), Long.valueOf(j3), "Invalid conditional user property time to live");
        } else {
            j45 j45Var = r45Var.g;
            r45.l(j45Var);
            j45Var.E(new v65(this, bundle2, 0));
        }
    }

    public final void J(String str, String str2, Bundle bundle) {
        r45 r45Var = (r45) this.a;
        long jCurrentTimeMillis = r45Var.k.currentTimeMillis();
        Preconditions.checkNotEmpty(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong("creation_timestamp", jCurrentTimeMillis);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        j45 j45Var = r45Var.g;
        r45.l(j45Var);
        j45Var.E(new v65(this, bundle2, 1));
    }

    public final String K() {
        r45 r45Var = (r45) this.a;
        try {
            return vm4.b(r45Var.a, r45Var.p);
        } catch (IllegalStateException e) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.b(e, "getGoogleAppId failed with exception");
            return null;
        }
    }

    public final void L(y55 y55Var, long j, boolean z) {
        int i = y55Var.b;
        v();
        w();
        r45 r45Var = (r45) this.a;
        f35 f35Var = r45Var.e;
        a25 a25Var = r45Var.f;
        r45.j(f35Var);
        y55 y55VarC = f35Var.C();
        if (j <= this.p && y55.l(y55VarC.b, i)) {
            r45.l(a25Var);
            a25Var.l.b(y55Var, "Dropped out-of-date consent setting, proposed settings");
            return;
        }
        f35 f35Var2 = r45Var.e;
        r45.j(f35Var2);
        f35Var2.v();
        if (!y55.l(i, f35Var2.z().getInt("consent_source", 100))) {
            r45.l(a25Var);
            a25Var.l.b(Integer.valueOf(i), "Lower precedence consent source ignored, proposed source");
            return;
        }
        SharedPreferences.Editor editorEdit = f35Var2.z().edit();
        editorEdit.putString("consent_settings", y55Var.g());
        editorEdit.putInt("consent_source", i);
        editorEdit.apply();
        r45.l(a25Var);
        a25Var.n.b(y55Var, "Setting storage consent(FE)");
        this.p = j;
        if (r45Var.o().F()) {
            o95 o95VarO = r45Var.o();
            o95VarO.v();
            o95VarO.w();
            o95VarO.J(new h95(o95VarO, 2));
        } else {
            o95 o95VarO2 = r45Var.o();
            o95VarO2.v();
            o95VarO2.w();
            if (o95VarO2.E()) {
                o95VarO2.J(new q85(o95VarO2, o95VarO2.L(false)));
            }
        }
        if (z) {
            r45Var.o().z(new AtomicReference());
        }
    }

    public final void M(Boolean bool, boolean z) {
        v();
        w();
        r45 r45Var = (r45) this.a;
        a25 a25Var = r45Var.f;
        r45.l(a25Var);
        a25Var.m.b(bool, "Setting app measurement enabled (FE)");
        f35 f35Var = r45Var.e;
        r45.j(f35Var);
        f35Var.v();
        SharedPreferences.Editor editorEdit = f35Var.z().edit();
        if (bool != null) {
            editorEdit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            editorEdit.remove("measurement_enabled");
        }
        editorEdit.apply();
        if (z) {
            f35Var.v();
            SharedPreferences.Editor editorEdit2 = f35Var.z().edit();
            if (bool != null) {
                editorEdit2.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                editorEdit2.remove("measurement_enabled_from_api");
            }
            editorEdit2.apply();
        }
        j45 j45Var = r45Var.g;
        r45.l(j45Var);
        j45Var.v();
        if (r45Var.z || !(bool == null || bool.booleanValue())) {
            N();
        }
    }

    public final void N() {
        v();
        r45 r45Var = (r45) this.a;
        f35 f35Var = r45Var.e;
        a25 a25Var = r45Var.f;
        Clock clock = r45Var.k;
        r45.j(f35Var);
        String strH = f35Var.m.h();
        int i = 1;
        if (strH != null) {
            if ("unset".equals(strH)) {
                G(clock.currentTimeMillis(), null, "app", "_npa");
            } else {
                G(clock.currentTimeMillis(), Long.valueOf(true != "true".equals(strH) ? 0L : 1L), "app", "_npa");
            }
        }
        if (!r45Var.a() || !this.r) {
            r45.l(a25Var);
            a25Var.m.a("Updating Scion state (FE)");
            o95 o95VarO = r45Var.o();
            o95VarO.v();
            o95VarO.w();
            o95VarO.J(new q85(o95VarO, o95VarO.L(true), 3));
            return;
        }
        r45.l(a25Var);
        a25Var.m.a("Recording app launch after enabling measurement for the first time (FE)");
        H();
        ia5 ia5Var = r45Var.h;
        r45.k(ia5Var);
        ia5Var.e.a();
        j45 j45Var = r45Var.g;
        r45.l(j45Var);
        j45Var.E(new h65(this, i));
    }

    public final void O() {
        r45 r45Var = (r45) this.a;
        if (!(r45Var.a.getApplicationContext() instanceof Application) || this.c == null) {
            return;
        }
        ((Application) r45Var.a.getApplicationContext()).unregisterActivityLifecycleCallbacks(this.c);
    }

    public final void P(Bundle bundle, int i, long j) {
        Boolean bool;
        String string;
        u55 u55Var;
        r45 r45Var = (r45) this.a;
        w();
        y55 y55Var = y55.c;
        x55[] x55VarArr = v55.STORAGE.n;
        int length = x55VarArr.length;
        int i2 = 0;
        while (true) {
            bool = null;
            if (i2 >= length) {
                string = null;
                break;
            }
            String str = x55VarArr[i2].n;
            if (bundle.containsKey(str) && (string = bundle.getString(str)) != null) {
                if ((string.equals("granted") ? Boolean.TRUE : string.equals("denied") ? Boolean.FALSE : null) == null) {
                    break;
                }
            }
            i2++;
        }
        if (string != null) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.k.b(string, "Ignoring invalid consent setting");
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.k.a("Valid consent values are 'granted', 'denied'");
        }
        j45 j45Var = r45Var.g;
        r45.l(j45Var);
        boolean zB = j45Var.B();
        y55 y55VarB = y55.b(i, bundle);
        Iterator it = y55VarB.a.values().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            u55Var = u55.UNINITIALIZED;
            if (!zHasNext) {
                break;
            } else if (((u55) it.next()) != u55Var) {
                R(y55VarB, zB);
                break;
            }
        }
        rt4 rt4VarC = rt4.c(i, bundle);
        Iterator it2 = rt4VarC.e.values().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            } else if (((u55) it2.next()) != u55Var) {
                Q(rt4VarC, zB);
                break;
            }
        }
        if (bundle != null) {
            int iOrdinal = y55.d(bundle.getString("ad_personalization")).ordinal();
            if (iOrdinal == 2) {
                bool = Boolean.FALSE;
            } else if (iOrdinal == 3) {
                bool = Boolean.TRUE;
            }
        }
        if (bool != null) {
            String str2 = i == -30 ? "tcf" : "app";
            if (zB) {
                G(j, bool.toString(), str2, "allow_personalized_ads");
            } else {
                F(str2, "allow_personalized_ads", bool.toString(), false, j);
            }
        }
    }

    public final void Q(rt4 rt4Var, boolean z) {
        rf1 rf1Var = new rf1(25, (Object) this, (Object) rt4Var, false);
        if (z) {
            v();
            rf1Var.run();
        } else {
            j45 j45Var = ((r45) this.a).g;
            r45.l(j45Var);
            j45Var.E(rf1Var);
        }
    }

    public final void R(y55 y55Var, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        y55 y55Var2;
        w();
        int i = y55Var.b;
        if (i != -10) {
            u55 u55Var = (u55) y55Var.a.get(x55.AD_STORAGE);
            if (u55Var == null) {
                u55Var = u55.UNINITIALIZED;
            }
            u55 u55Var2 = u55.UNINITIALIZED;
            if (u55Var == u55Var2) {
                u55 u55Var3 = (u55) y55Var.a.get(x55.ANALYTICS_STORAGE);
                if (u55Var3 == null) {
                    u55Var3 = u55Var2;
                }
                if (u55Var3 == u55Var2) {
                    a25 a25Var = ((r45) this.a).f;
                    r45.l(a25Var);
                    a25Var.k.a("Ignoring empty consent settings");
                    return;
                }
            }
        }
        synchronized (this.h) {
            try {
                z2 = false;
                if (y55.l(i, this.n.b)) {
                    y55 y55Var3 = this.n;
                    EnumMap enumMap = y55Var.a;
                    x55[] x55VarArr = (x55[]) enumMap.keySet().toArray(new x55[0]);
                    int length = x55VarArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            z3 = false;
                            break;
                        }
                        x55 x55Var = x55VarArr[i2];
                        u55 u55Var4 = (u55) enumMap.get(x55Var);
                        u55 u55Var5 = (u55) y55Var3.a.get(x55Var);
                        u55 u55Var6 = u55.DENIED;
                        if (u55Var4 == u55Var6 && u55Var5 != u55Var6) {
                            z3 = true;
                            break;
                        }
                        i2++;
                    }
                    x55 x55Var2 = x55.ANALYTICS_STORAGE;
                    if (y55Var.i(x55Var2) && !this.n.i(x55Var2)) {
                        z2 = true;
                    }
                    y55Var = y55Var.k(this.n);
                    this.n = y55Var;
                    z4 = z2;
                    z2 = true;
                } else {
                    z3 = false;
                    z4 = false;
                }
                y55Var2 = y55Var;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z2) {
            a25 a25Var2 = ((r45) this.a).f;
            r45.l(a25Var2);
            a25Var2.l.b(y55Var2, "Ignoring lower-priority consent settings, proposed settings");
            return;
        }
        long andIncrement = this.o.getAndIncrement();
        if (z3) {
            this.g.set(null);
            z65 z65Var = new z65(this, y55Var2, andIncrement, z4, 0);
            if (z) {
                v();
                z65Var.run();
                return;
            } else {
                j45 j45Var = ((r45) this.a).g;
                r45.l(j45Var);
                j45Var.G(z65Var);
                return;
            }
        }
        z65 z65Var2 = new z65(this, y55Var2, andIncrement, z4, 1);
        if (z) {
            v();
            z65Var2.run();
        } else if (i == 30 || i == -10) {
            j45 j45Var2 = ((r45) this.a).g;
            r45.l(j45Var2);
            j45Var2.G(z65Var2);
        } else {
            j45 j45Var3 = ((r45) this.a).g;
            r45.l(j45Var3);
            j45Var3.E(z65Var2);
        }
    }

    public final void S() {
        er4.a();
        r45 r45Var = (r45) this.a;
        ds4 ds4Var = r45Var.d;
        j45 j45Var = r45Var.g;
        a25 a25Var = r45Var.f;
        if (ds4Var.G(null, e05.P0)) {
            r45.l(j45Var);
            if (j45Var.B()) {
                r45.l(a25Var);
                a25Var.f.a("Cannot get trigger URIs from analytics worker thread");
                return;
            }
            if (pr3.l()) {
                r45.l(a25Var);
                a25Var.f.a("Cannot get trigger URIs from main thread");
                return;
            }
            w();
            r45.l(a25Var);
            a25Var.n.a("Getting trigger URIs (FE)");
            AtomicReference atomicReference = new AtomicReference();
            r45.l(j45Var);
            j45Var.F(atomicReference, 10000L, "get trigger URIs", new u65(this, atomicReference, 5, false));
            List list = (List) atomicReference.get();
            if (list == null) {
                r45.l(a25Var);
                a25Var.h.a("Timed out waiting for get trigger URIs");
            } else {
                r45.l(j45Var);
                j45Var.E(new rf1(27, this, list));
            }
        }
    }

    public final PriorityQueue T() {
        if (this.m == null) {
            this.m = new PriorityQueue(Comparator.comparing(f75.a, lh0.f184u));
        }
        return this.m;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void U() {
        oa5 oa5Var;
        v();
        if (T().isEmpty() || this.i || (oa5Var = (oa5) T().poll()) == null) {
            return;
        }
        r45 r45Var = (r45) this.a;
        ac5 ac5Var = r45Var.i;
        r45.j(ac5Var);
        lb2 lb2VarQ = ac5Var.Q();
        if (lb2VarQ != null) {
            this.i = true;
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            x15 x15Var = a25Var.n;
            String str = oa5Var.n;
            x15Var.b(str, "Registering trigger URI");
            ListenableFuture listenableFutureE = lb2VarQ.e(Uri.parse(str));
            boolean z = false;
            Object[] objArr = 0;
            if (listenableFutureE != null) {
                listenableFutureE.a(new rf1((int) (objArr == true ? 1 : 0), (Object) listenableFutureE, (Object) new pc4(15, this, oa5Var, z)), new c73(3, this));
            } else {
                this.i = false;
                T().add(oa5Var);
            }
        }
    }

    public final void V(y55 y55Var) {
        v();
        boolean z = (y55Var.i(x55.ANALYTICS_STORAGE) && y55Var.i(x55.AD_STORAGE)) || ((r45) this.a).o().E();
        r45 r45Var = (r45) this.a;
        j45 j45Var = r45Var.g;
        r45.l(j45Var);
        j45Var.v();
        if (z != r45Var.z) {
            j45 j45Var2 = r45Var.g;
            r45.l(j45Var2);
            j45Var2.v();
            r45Var.z = z;
            f35 f35Var = ((r45) this.a).e;
            r45.j(f35Var);
            f35Var.v();
            Boolean boolValueOf = f35Var.z().contains("measurement_enabled_from_api") ? Boolean.valueOf(f35Var.z().getBoolean("measurement_enabled_from_api", true)) : null;
            if (!z || boolValueOf == null || boolValueOf.booleanValue()) {
                M(Boolean.valueOf(z), false);
            }
        }
    }

    @Override // defpackage.j05
    public final boolean y() {
        return false;
    }

    public final void z(String str, String str2, Bundle bundle) {
        r45 r45Var = (r45) this.a;
        A(str, str2, bundle, true, true, r45Var.k.currentTimeMillis(), r45Var.d.G(null, e05.e1) ? r45Var.k.elapsedRealtime() : 0L);
    }
}
