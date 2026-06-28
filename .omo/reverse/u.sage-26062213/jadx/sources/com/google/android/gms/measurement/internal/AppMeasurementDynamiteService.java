package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.a25;
import defpackage.ac5;
import defpackage.bu4;
import defpackage.bx4;
import defpackage.c65;
import defpackage.di;
import defpackage.e05;
import defpackage.e30;
import defpackage.ec5;
import defpackage.f85;
import defpackage.fw4;
import defpackage.g15;
import defpackage.g25;
import defpackage.hx4;
import defpackage.ix4;
import defpackage.j45;
import defpackage.jx4;
import defpackage.k21;
import defpackage.kn1;
import defpackage.m45;
import defpackage.m65;
import defpackage.m75;
import defpackage.mw4;
import defpackage.pc4;
import defpackage.pr3;
import defpackage.q65;
import defpackage.qw4;
import defpackage.r45;
import defpackage.r65;
import defpackage.r75;
import defpackage.rf1;
import defpackage.tw4;
import defpackage.ty4;
import defpackage.u65;
import defpackage.u75;
import defpackage.ua5;
import defpackage.ui3;
import defpackage.v65;
import defpackage.w75;
import defpackage.x15;
import defpackage.yn2;
import defpackage.za5;
import defpackage.zt4;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class AppMeasurementDynamiteService extends fw4 {
    public r45 c;
    public final di d;

    public AppMeasurementDynamiteService() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        this.c = null;
        this.d = new di(0);
    }

    public final void F() {
        if (this.c != null) {
            return;
        }
        k21.n("Attempting to perform action before initialize.");
    }

    public final void G(String str, mw4 mw4Var) {
        F();
        ac5 ac5Var = this.c.i;
        r45.j(ac5Var);
        ac5Var.h0(str, mw4Var);
    }

    @Override // defpackage.hw4
    public void beginAdUnitExposure(String str, long j) {
        F();
        bx4 bx4Var = this.c.n;
        r45.i(bx4Var);
        bx4Var.w(j, str);
    }

    @Override // defpackage.hw4
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        m75Var.J(str, str2, bundle);
    }

    @Override // defpackage.hw4
    public void clearMeasurementEnabled(long j) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        m75Var.w();
        j45 j45Var = ((r45) m75Var.a).g;
        r45.l(j45Var);
        j45Var.E(new rf1(24, (Object) m75Var, (Object) null, false));
    }

    @Override // defpackage.hw4
    public void endAdUnitExposure(String str, long j) {
        F();
        bx4 bx4Var = this.c.n;
        r45.i(bx4Var);
        bx4Var.x(j, str);
    }

    @Override // defpackage.hw4
    public void generateEventId(mw4 mw4Var) {
        F();
        ac5 ac5Var = this.c.i;
        r45.j(ac5Var);
        long jS0 = ac5Var.s0();
        F();
        ac5 ac5Var2 = this.c.i;
        r45.j(ac5Var2);
        ac5Var2.i0(mw4Var, jS0);
    }

    @Override // defpackage.hw4
    public void getAppInstanceId(mw4 mw4Var) {
        F();
        j45 j45Var = this.c.g;
        r45.l(j45Var);
        j45Var.E(new m45(this, mw4Var, 0));
    }

    @Override // defpackage.hw4
    public void getCachedAppInstanceId(mw4 mw4Var) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        G((String) m75Var.g.get(), mw4Var);
    }

    @Override // defpackage.hw4
    public void getConditionalUserProperties(String str, String str2, mw4 mw4Var) {
        F();
        j45 j45Var = this.c.g;
        r45.l(j45Var);
        j45Var.E(new e30(this, mw4Var, str, str2, 8));
    }

    @Override // defpackage.hw4
    public void getCurrentScreenClass(mw4 mw4Var) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        f85 f85Var = ((r45) m75Var.a).l;
        r45.k(f85Var);
        w75 w75Var = f85Var.c;
        G(w75Var != null ? w75Var.b : null, mw4Var);
    }

    @Override // defpackage.hw4
    public void getCurrentScreenName(mw4 mw4Var) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        f85 f85Var = ((r45) m75Var.a).l;
        r45.k(f85Var);
        w75 w75Var = f85Var.c;
        G(w75Var != null ? w75Var.a : null, mw4Var);
    }

    @Override // defpackage.hw4
    public void getGmpAppId(mw4 mw4Var) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        G(m75Var.K(), mw4Var);
    }

    @Override // defpackage.hw4
    public void getMaxUserProperties(String str, mw4 mw4Var) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        Preconditions.checkNotEmpty(str);
        ((r45) m75Var.a).getClass();
        F();
        ac5 ac5Var = this.c.i;
        r45.j(ac5Var);
        ac5Var.j0(mw4Var, 25);
    }

    @Override // defpackage.hw4
    public void getSessionId(mw4 mw4Var) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        j45 j45Var = ((r45) m75Var.a).g;
        r45.l(j45Var);
        j45Var.E(new rf1(m75Var, mw4Var));
    }

    @Override // defpackage.hw4
    public void getTestFlag(mw4 mw4Var, int i) {
        F();
        if (i == 0) {
            ac5 ac5Var = this.c.i;
            r45.j(ac5Var);
            m75 m75Var = this.c.m;
            r45.k(m75Var);
            AtomicReference atomicReference = new AtomicReference();
            j45 j45Var = ((r45) m75Var.a).g;
            r45.l(j45Var);
            ac5Var.h0((String) j45Var.F(atomicReference, 15000L, "String test flag value", new u65(m75Var, atomicReference, 1)), mw4Var);
            return;
        }
        if (i == 1) {
            ac5 ac5Var2 = this.c.i;
            r45.j(ac5Var2);
            m75 m75Var2 = this.c.m;
            r45.k(m75Var2);
            AtomicReference atomicReference2 = new AtomicReference();
            j45 j45Var2 = ((r45) m75Var2.a).g;
            r45.l(j45Var2);
            ac5Var2.i0(mw4Var, ((Long) j45Var2.F(atomicReference2, 15000L, "long test flag value", new u65(m75Var2, atomicReference2, 2))).longValue());
            return;
        }
        if (i == 2) {
            ac5 ac5Var3 = this.c.i;
            r45.j(ac5Var3);
            m75 m75Var3 = this.c.m;
            r45.k(m75Var3);
            AtomicReference atomicReference3 = new AtomicReference();
            j45 j45Var3 = ((r45) m75Var3.a).g;
            r45.l(j45Var3);
            double dDoubleValue = ((Double) j45Var3.F(atomicReference3, 15000L, "double test flag value", new u65(m75Var3, atomicReference3, 4))).doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", dDoubleValue);
            try {
                mw4Var.i(bundle);
                return;
            } catch (RemoteException e) {
                a25 a25Var = ((r45) ac5Var3.a).f;
                r45.l(a25Var);
                a25Var.i.b(e, "Error returning double value to wrapper");
                return;
            }
        }
        if (i == 3) {
            ac5 ac5Var4 = this.c.i;
            r45.j(ac5Var4);
            m75 m75Var4 = this.c.m;
            r45.k(m75Var4);
            AtomicReference atomicReference4 = new AtomicReference();
            j45 j45Var4 = ((r45) m75Var4.a).g;
            r45.l(j45Var4);
            ac5Var4.j0(mw4Var, ((Integer) j45Var4.F(atomicReference4, 15000L, "int test flag value", new u65(m75Var4, atomicReference4, 3))).intValue());
            return;
        }
        if (i != 4) {
            return;
        }
        ac5 ac5Var5 = this.c.i;
        r45.j(ac5Var5);
        m75 m75Var5 = this.c.m;
        r45.k(m75Var5);
        AtomicReference atomicReference5 = new AtomicReference();
        j45 j45Var5 = ((r45) m75Var5.a).g;
        r45.l(j45Var5);
        ac5Var5.l0(mw4Var, ((Boolean) j45Var5.F(atomicReference5, 15000L, "boolean test flag value", new u65(m75Var5, atomicReference5, 0))).booleanValue());
    }

    @Override // defpackage.hw4
    public void getUserProperties(String str, String str2, boolean z, mw4 mw4Var) {
        F();
        j45 j45Var = this.c.g;
        r45.l(j45Var);
        j45Var.E(new q65(this, mw4Var, str, str2, z));
    }

    @Override // defpackage.hw4
    public void initForTests(Map map) {
        F();
    }

    @Override // defpackage.hw4
    public void initialize(kn1 kn1Var, ix4 ix4Var, long j) {
        r45 r45Var = this.c;
        if (r45Var == null) {
            this.c = r45.r((Context) Preconditions.checkNotNull((Context) yn2.F(kn1Var)), ix4Var, Long.valueOf(j), null);
            return;
        }
        a25 a25Var = r45Var.f;
        r45.l(a25Var);
        a25Var.i.a("Attempting to initialize multiple times");
    }

    @Override // defpackage.hw4
    public void initializeWithElapsedTime(kn1 kn1Var, ix4 ix4Var, long j, long j2) {
        r45 r45Var = this.c;
        if (r45Var == null) {
            this.c = r45.r((Context) Preconditions.checkNotNull((Context) yn2.F(kn1Var)), ix4Var, Long.valueOf(j), Long.valueOf(j2));
            return;
        }
        a25 a25Var = r45Var.f;
        r45.l(a25Var);
        a25Var.i.a("Attempting to initialize multiple times");
    }

    @Override // defpackage.hw4
    public void isDataCollectionEnabled(mw4 mw4Var) {
        F();
        j45 j45Var = this.c.g;
        r45.l(j45Var);
        j45Var.E(new m45(this, mw4Var, 1));
    }

    @Override // defpackage.hw4
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        m75Var.A(str, str2, bundle, z, z2, j, 0L);
    }

    @Override // defpackage.hw4
    public void logEventAndBundle(String str, String str2, Bundle bundle, mw4 mw4Var, long j) {
        F();
        Preconditions.checkNotEmpty(str2);
        String str3 = true != this.c.d.G(null, e05.f1) ? "app" : "auto";
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", str3);
        bu4 bu4Var = new bu4(str2, new zt4(bundle), str3, j, 0L);
        j45 j45Var = this.c.g;
        r45.l(j45Var);
        j45Var.E(new e30(this, mw4Var, bu4Var, str, 3));
    }

    @Override // defpackage.hw4
    public void logEventWithElapsedTime(String str, String str2, Bundle bundle, boolean z, boolean z2, long j, long j2) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        m75Var.A(str, str2, bundle, z, z2, j, j2);
    }

    @Override // defpackage.hw4
    public void logHealthData(int i, String str, kn1 kn1Var, kn1 kn1Var2, kn1 kn1Var3) {
        F();
        Object objF = kn1Var == null ? null : yn2.F(kn1Var);
        Object objF2 = kn1Var2 == null ? null : yn2.F(kn1Var2);
        Object objF3 = kn1Var3 != null ? yn2.F(kn1Var3) : null;
        a25 a25Var = this.c.f;
        r45.l(a25Var);
        a25Var.E(i, true, false, str, objF, objF2, objF3);
    }

    @Override // defpackage.hw4
    public void onActivityCreated(kn1 kn1Var, Bundle bundle, long j) {
        F();
        onActivityCreatedByScionActivityInfo(jx4.Y((Activity) Preconditions.checkNotNull((Activity) yn2.F(kn1Var))), bundle, j);
    }

    @Override // defpackage.hw4
    public void onActivityCreatedByScionActivityInfo(jx4 jx4Var, Bundle bundle, long j) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        ty4 ty4Var = m75Var.c;
        if (ty4Var != null) {
            m75 m75Var2 = this.c.m;
            r45.k(m75Var2);
            m75Var2.O();
            ty4Var.c(jx4Var, bundle);
        }
    }

    @Override // defpackage.hw4
    public void onActivityDestroyed(kn1 kn1Var, long j) {
        F();
        onActivityDestroyedByScionActivityInfo(jx4.Y((Activity) Preconditions.checkNotNull((Activity) yn2.F(kn1Var))), j);
    }

    @Override // defpackage.hw4
    public void onActivityDestroyedByScionActivityInfo(jx4 jx4Var, long j) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        ty4 ty4Var = m75Var.c;
        if (ty4Var != null) {
            m75 m75Var2 = this.c.m;
            r45.k(m75Var2);
            m75Var2.O();
            ty4Var.d(jx4Var);
        }
    }

    @Override // defpackage.hw4
    public void onActivityPaused(kn1 kn1Var, long j) {
        F();
        onActivityPausedByScionActivityInfo(jx4.Y((Activity) Preconditions.checkNotNull((Activity) yn2.F(kn1Var))), j);
    }

    @Override // defpackage.hw4
    public void onActivityPausedByScionActivityInfo(jx4 jx4Var, long j) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        ty4 ty4Var = m75Var.c;
        if (ty4Var != null) {
            m75 m75Var2 = this.c.m;
            r45.k(m75Var2);
            m75Var2.O();
            ty4Var.e(jx4Var);
        }
    }

    @Override // defpackage.hw4
    public void onActivityResumed(kn1 kn1Var, long j) {
        F();
        onActivityResumedByScionActivityInfo(jx4.Y((Activity) Preconditions.checkNotNull((Activity) yn2.F(kn1Var))), j);
    }

    @Override // defpackage.hw4
    public void onActivityResumedByScionActivityInfo(jx4 jx4Var, long j) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        ty4 ty4Var = m75Var.c;
        if (ty4Var != null) {
            m75 m75Var2 = this.c.m;
            r45.k(m75Var2);
            m75Var2.O();
            ty4Var.f(jx4Var);
        }
    }

    @Override // defpackage.hw4
    public void onActivitySaveInstanceState(kn1 kn1Var, mw4 mw4Var, long j) {
        F();
        onActivitySaveInstanceStateByScionActivityInfo(jx4.Y((Activity) Preconditions.checkNotNull((Activity) yn2.F(kn1Var))), mw4Var, j);
    }

    @Override // defpackage.hw4
    public void onActivitySaveInstanceStateByScionActivityInfo(jx4 jx4Var, mw4 mw4Var, long j) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        ty4 ty4Var = m75Var.c;
        Bundle bundle = new Bundle();
        if (ty4Var != null) {
            m75 m75Var2 = this.c.m;
            r45.k(m75Var2);
            m75Var2.O();
            ty4Var.g(jx4Var, bundle);
        }
        try {
            mw4Var.i(bundle);
        } catch (RemoteException e) {
            a25 a25Var = this.c.f;
            r45.l(a25Var);
            a25Var.i.b(e, "Error returning bundle value to wrapper");
        }
    }

    @Override // defpackage.hw4
    public void onActivityStarted(kn1 kn1Var, long j) {
        F();
        onActivityStartedByScionActivityInfo(jx4.Y((Activity) Preconditions.checkNotNull((Activity) yn2.F(kn1Var))), j);
    }

    @Override // defpackage.hw4
    public void onActivityStartedByScionActivityInfo(jx4 jx4Var, long j) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        if (m75Var.c != null) {
            m75 m75Var2 = this.c.m;
            r45.k(m75Var2);
            m75Var2.O();
        }
    }

    @Override // defpackage.hw4
    public void onActivityStopped(kn1 kn1Var, long j) {
        F();
        onActivityStoppedByScionActivityInfo(jx4.Y((Activity) Preconditions.checkNotNull((Activity) yn2.F(kn1Var))), j);
    }

    @Override // defpackage.hw4
    public void onActivityStoppedByScionActivityInfo(jx4 jx4Var, long j) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        if (m75Var.c != null) {
            m75 m75Var2 = this.c.m;
            r45.k(m75Var2);
            m75Var2.O();
        }
    }

    @Override // defpackage.hw4
    public void performAction(Bundle bundle, mw4 mw4Var, long j) {
        F();
        mw4Var.i(null);
    }

    @Override // defpackage.hw4
    public void registerOnMeasurementEventListener(tw4 tw4Var) {
        Object ec5Var;
        F();
        di diVar = this.d;
        synchronized (diVar) {
            try {
                ec5Var = (c65) diVar.get(Integer.valueOf(tw4Var.a()));
                if (ec5Var == null) {
                    ec5Var = new ec5(this, tw4Var);
                    diVar.put(Integer.valueOf(tw4Var.a()), ec5Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        m75Var.w();
        Preconditions.checkNotNull(ec5Var);
        if (m75Var.e.add(ec5Var)) {
            return;
        }
        a25 a25Var = ((r45) m75Var.a).f;
        r45.l(a25Var);
        a25Var.i.a("OnEventListener already registered");
    }

    @Override // defpackage.hw4
    @Deprecated
    public void resetAnalyticsData(long j) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        m75Var.g.set(null);
        j45 j45Var = ((r45) m75Var.a).g;
        r45.l(j45Var);
        j45Var.E(new r65(m75Var, j, 1));
    }

    @Override // defpackage.hw4
    public void resetAnalyticsDataWithElapsedTime(long j, long j2) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        m75Var.g.set(null);
        j45 j45Var = ((r45) m75Var.a).g;
        r45.l(j45Var);
        j45Var.E(new r65(m75Var, j, 1));
    }

    @Override // defpackage.hw4
    public void retrieveAndUploadBatches(qw4 qw4Var) {
        u75 u75Var;
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        m75Var.w();
        r45 r45Var = (r45) m75Var.a;
        j45 j45Var = r45Var.g;
        r45.l(j45Var);
        if (j45Var.B()) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.a("Cannot retrieve and upload batches from analytics worker thread");
            return;
        }
        j45 j45Var2 = r45Var.g;
        r45.l(j45Var2);
        if (Thread.currentThread() == j45Var2.d) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.f.a("Cannot retrieve and upload batches from analytics network thread");
            return;
        }
        boolean zL = pr3.l();
        a25 a25Var3 = r45Var.f;
        if (zL) {
            r45.l(a25Var3);
            a25Var3.f.a("Cannot retrieve and upload batches from main thread");
            return;
        }
        r45.l(a25Var3);
        a25Var3.n.a("[sgtm] Started client-side batch upload work.");
        boolean z = false;
        boolean z2 = false;
        int size = 0;
        int i = 0;
        while (!z2) {
            a25 a25Var4 = r45Var.f;
            r45.l(a25Var4);
            a25Var4.n.a("[sgtm] Getting upload batches from service (FE)");
            AtomicReference atomicReference = new AtomicReference();
            j45 j45Var3 = r45Var.g;
            r45.l(j45Var3);
            j45Var3.F(atomicReference, 10000L, "[sgtm] Getting upload batches", new u65(m75Var, atomicReference, 6, z));
            za5 za5Var = (za5) atomicReference.get();
            if (za5Var == null) {
                break;
            }
            List list = za5Var.n;
            if (list.isEmpty()) {
                break;
            }
            a25 a25Var5 = r45Var.f;
            r45.l(a25Var5);
            a25Var5.n.b(Integer.valueOf(list.size()), "[sgtm] Retrieved upload batches. count");
            size += list.size();
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z2 = false;
                    break;
                }
                ua5 ua5Var = (ua5) it.next();
                try {
                    URL url = new URI(ua5Var.p).toURL();
                    AtomicReference atomicReference2 = new AtomicReference();
                    g15 g15VarQ = ((r45) m75Var.a).q();
                    g15VarQ.w();
                    Preconditions.checkNotNull(g15VarQ.g);
                    String str = g15VarQ.g;
                    r45 r45Var2 = (r45) m75Var.a;
                    a25 a25Var6 = r45Var2.f;
                    r45.l(a25Var6);
                    x15 x15Var = a25Var6.n;
                    Long lValueOf = Long.valueOf(ua5Var.n);
                    x15Var.d("[sgtm] Uploading data from app. row_id, url, uncompressed size", lValueOf, ua5Var.p, Integer.valueOf(ua5Var.o.length));
                    if (!TextUtils.isEmpty(ua5Var.t)) {
                        a25 a25Var7 = r45Var2.f;
                        r45.l(a25Var7);
                        a25Var7.n.c(lValueOf, ua5Var.t, "[sgtm] Uploading data from app. row_id");
                    }
                    HashMap map = new HashMap();
                    Bundle bundle = ua5Var.q;
                    for (String str2 : bundle.keySet()) {
                        String string = bundle.getString(str2);
                        if (!TextUtils.isEmpty(string)) {
                            map.put(str2, string);
                        }
                    }
                    r75 r75Var = r45Var2.o;
                    r45.l(r75Var);
                    byte[] bArr = ua5Var.o;
                    ui3 ui3Var = new ui3(m75Var, atomicReference2, ua5Var, 12);
                    r75Var.x();
                    Preconditions.checkNotNull(url);
                    Preconditions.checkNotNull(bArr);
                    Preconditions.checkNotNull(ui3Var);
                    j45 j45Var4 = ((r45) r75Var.a).g;
                    r45.l(j45Var4);
                    j45Var4.H(new g25(r75Var, str, url, bArr, map, ui3Var));
                    try {
                        ac5 ac5Var = r45Var2.i;
                        r45.j(ac5Var);
                        r45 r45Var3 = (r45) ac5Var.a;
                        long jCurrentTimeMillis = r45Var3.k.currentTimeMillis() + 60000;
                        synchronized (atomicReference2) {
                            for (long jCurrentTimeMillis2 = 60000; atomicReference2.get() == null && jCurrentTimeMillis2 > 0; jCurrentTimeMillis2 = jCurrentTimeMillis - r45Var3.k.currentTimeMillis()) {
                                try {
                                    atomicReference2.wait(jCurrentTimeMillis2);
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                    } catch (InterruptedException unused) {
                        a25 a25Var8 = ((r45) m75Var.a).f;
                        r45.l(a25Var8);
                        a25Var8.i.a("[sgtm] Interrupted waiting for uploading batch");
                    }
                    u75Var = atomicReference2.get() == null ? u75.o : (u75) atomicReference2.get();
                } catch (MalformedURLException | URISyntaxException e) {
                    a25 a25Var9 = ((r45) m75Var.a).f;
                    r45.l(a25Var9);
                    a25Var9.f.d("[sgtm] Bad upload url for row_id", ua5Var.p, Long.valueOf(ua5Var.n), e);
                    u75Var = u75.q;
                }
                if (u75Var != u75.p) {
                    if (u75Var == u75.r) {
                        z2 = true;
                        break;
                    }
                } else {
                    i++;
                }
            }
            z = false;
        }
        a25 a25Var10 = r45Var.f;
        r45.l(a25Var10);
        a25Var10.n.c(Integer.valueOf(size), Integer.valueOf(i), "[sgtm] Completed client-side batch upload work. total, success");
        try {
            qw4Var.zze();
        } catch (RemoteException e2) {
            a25 a25Var11 = ((r45) Preconditions.checkNotNull(this.c)).f;
            r45.l(a25Var11);
            a25Var11.i.b(e2, "Failed to call IDynamiteUploadBatchesCallback");
        }
    }

    @Override // defpackage.hw4
    public void setConditionalUserProperty(Bundle bundle, long j) {
        F();
        r45 r45Var = this.c;
        if (bundle == null) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.a("Conditional user property must not be null");
        } else {
            m75 m75Var = r45Var.m;
            r45.k(m75Var);
            m75Var.I(bundle, j);
        }
    }

    @Override // defpackage.hw4
    public void setConsentThirdParty(Bundle bundle, long j) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        m75Var.P(bundle, -20, j);
    }

    @Override // defpackage.hw4
    public void setCurrentScreen(kn1 kn1Var, String str, String str2, long j) {
        F();
        setCurrentScreenByScionActivityInfo(jx4.Y((Activity) Preconditions.checkNotNull((Activity) yn2.F(kn1Var))), str, str2, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0087, code lost:
    
        if (r2 > 500) goto L27;
     */
    @Override // defpackage.hw4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setCurrentScreenByScionActivityInfo(defpackage.jx4 r5, java.lang.String r6, java.lang.String r7, long r8) {
        /*
            Method dump skipped, instruction units count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService.setCurrentScreenByScionActivityInfo(jx4, java.lang.String, java.lang.String, long):void");
    }

    @Override // defpackage.hw4
    public void setDataCollectionEnabled(boolean z) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        m75Var.w();
        j45 j45Var = ((r45) m75Var.a).g;
        r45.l(j45Var);
        j45Var.E(new m65(m75Var, z));
    }

    @Override // defpackage.hw4
    public void setDefaultEventParameters(Bundle bundle) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        j45 j45Var = ((r45) m75Var.a).g;
        r45.l(j45Var);
        j45Var.E(new v65(m75Var, bundle2, 2));
    }

    @Override // defpackage.hw4
    public void setEventInterceptor(tw4 tw4Var) {
        F();
        pc4 pc4Var = new pc4(22, this, tw4Var, z);
        j45 j45Var = this.c.g;
        r45.l(j45Var);
        boolean zB = j45Var.B();
        r45 r45Var = this.c;
        if (!zB) {
            j45 j45Var2 = r45Var.g;
            r45.l(j45Var2);
            j45Var2.E(new rf1(26, this, pc4Var, z));
            return;
        }
        m75 m75Var = r45Var.m;
        r45.k(m75Var);
        m75Var.v();
        m75Var.w();
        pc4 pc4Var2 = m75Var.d;
        if (pc4Var != pc4Var2) {
            Preconditions.checkState(pc4Var2 == null, "EventInterceptor already set.");
        }
        m75Var.d = pc4Var;
    }

    @Override // defpackage.hw4
    public void setInstanceIdProvider(hx4 hx4Var) {
        F();
    }

    @Override // defpackage.hw4
    public void setMeasurementEnabled(boolean z, long j) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        Boolean boolValueOf = Boolean.valueOf(z);
        m75Var.w();
        j45 j45Var = ((r45) m75Var.a).g;
        r45.l(j45Var);
        j45Var.E(new rf1(24, (Object) m75Var, (Object) boolValueOf, false));
    }

    @Override // defpackage.hw4
    public void setMinimumSessionDuration(long j) {
        F();
    }

    @Override // defpackage.hw4
    public void setSessionTimeoutDuration(long j) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        j45 j45Var = ((r45) m75Var.a).g;
        r45.l(j45Var);
        j45Var.E(new r65(m75Var, j, 0));
    }

    @Override // defpackage.hw4
    public void setSgtmDebugInfo(Intent intent) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        r45 r45Var = (r45) m75Var.a;
        Uri data = intent.getData();
        if (data == null) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.l.a("Activity intent has no data. Preview Mode was not enabled.");
            return;
        }
        String queryParameter = data.getQueryParameter("sgtm_debug_enable");
        if (queryParameter == null || !queryParameter.equals("1")) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.l.a("[sgtm] Preview Mode was not enabled.");
            r45Var.d.c = null;
            return;
        }
        String queryParameter2 = data.getQueryParameter("sgtm_preview_key");
        if (TextUtils.isEmpty(queryParameter2)) {
            return;
        }
        a25 a25Var3 = r45Var.f;
        r45.l(a25Var3);
        a25Var3.l.b(queryParameter2, "[sgtm] Preview Mode was enabled. Using the sgtmPreviewKey: ");
        r45Var.d.c = queryParameter2;
    }

    @Override // defpackage.hw4
    public void setUserId(String str, long j) {
        F();
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        r45 r45Var = (r45) m75Var.a;
        if (str != null && TextUtils.isEmpty(str)) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.i.a("User ID must be non-empty or null");
        } else {
            j45 j45Var = r45Var.g;
            r45.l(j45Var);
            j45Var.E(new rf1(28, m75Var, str));
            m75Var.F(null, "_id", str, true, j);
        }
    }

    @Override // defpackage.hw4
    public void setUserProperty(String str, String str2, kn1 kn1Var, boolean z, long j) {
        F();
        Object objF = yn2.F(kn1Var);
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        m75Var.F(str, str2, objF, z, j);
    }

    @Override // defpackage.hw4
    public void unregisterOnMeasurementEventListener(tw4 tw4Var) {
        Object ec5Var;
        F();
        di diVar = this.d;
        synchronized (diVar) {
            ec5Var = (c65) diVar.remove(Integer.valueOf(tw4Var.a()));
        }
        if (ec5Var == null) {
            ec5Var = new ec5(this, tw4Var);
        }
        m75 m75Var = this.c.m;
        r45.k(m75Var);
        m75Var.w();
        Preconditions.checkNotNull(ec5Var);
        if (m75Var.e.remove(ec5Var)) {
            return;
        }
        a25 a25Var = ((r45) m75Var.a).f;
        r45.l(a25Var);
        a25Var.i.a("OnEventListener had not been registered");
    }

    @Override // defpackage.hw4
    public void setConsent(Bundle bundle, long j) {
    }
}
