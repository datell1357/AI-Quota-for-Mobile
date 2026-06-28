package defpackage;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uy4 {
    public static volatile uy4 i;
    public final Clock a = DefaultClock.getInstance();
    public final ExecutorService b;
    public final AppMeasurementSdk c;
    public final ArrayList d;
    public int e;
    public boolean f;
    public volatile hw4 g;
    public volatile long h;

    public uy4(Context context, Bundle bundle) {
        qq0 qq0Var = new qq0(this);
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), qq0Var);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.b = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.c = new AppMeasurementSdk(this);
        this.d = new ArrayList();
        int i2 = 0;
        try {
            if (vm4.b(context, y35.a(context)) != null) {
                try {
                    Class.forName("com.google.firebase.analytics.FirebaseAnalytics", false, uy4.class.getClassLoader());
                } catch (ClassNotFoundException unused) {
                    this.f = true;
                    Log.w("FA", "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Add Google Analytics for Firebase to resume data collection.");
                    return;
                }
            }
        } catch (IllegalStateException unused2) {
        }
        c(new lx4(this, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w("FA", "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new ty4(i2, this));
        }
    }

    public static uy4 e(Context context, Bundle bundle) {
        Preconditions.checkNotNull(context);
        if (i == null) {
            synchronized (uy4.class) {
                try {
                    if (i == null) {
                        i = new uy4(context, bundle == null ? new Bundle() : new Bundle(bundle));
                    }
                } finally {
                }
            }
        }
        return i;
    }

    public final Map a(String str, String str2, boolean z) {
        dw4 dw4Var = new dw4();
        c(new cy4(this, str, str2, z, dw4Var));
        Bundle bundleF = dw4Var.F(5000L);
        if (bundleF == null || bundleF.size() == 0) {
            return Collections.EMPTY_MAP;
        }
        HashMap map = new HashMap(bundleF.size());
        for (String str3 : bundleF.keySet()) {
            Object obj = bundleF.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                map.put(str3, obj);
            }
        }
        return map;
    }

    public final int b(String str) {
        dw4 dw4Var = new dw4();
        c(new lx4(this, str, dw4Var));
        Integer num = (Integer) dw4.G(dw4Var.F(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final void c(my4 my4Var) {
        this.b.execute(my4Var);
    }

    public final void d(Exception exc, boolean z, boolean z2) {
        this.f |= z;
        if (z) {
            Log.w("FA", "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            c(new tx4(this, exc));
        }
        Log.w("FA", "Error with data collection. Data lost.", exc);
    }

    public final List f(String str, String str2) {
        dw4 dw4Var = new dw4();
        c(new ox4(this, str, str2, dw4Var));
        List list = (List) dw4.G(dw4Var.F(5000L), List.class);
        return list == null ? Collections.EMPTY_LIST : list;
    }

    public final long g() {
        dw4 dw4Var = new dw4();
        c(new by4(this, dw4Var, 2));
        Long l = (Long) dw4.G(dw4Var.F(500L), Long.class);
        if (l != null) {
            return l.longValue();
        }
        long jNextLong = new Random(System.nanoTime() ^ this.a.currentTimeMillis()).nextLong();
        int i2 = this.e + 1;
        this.e = i2;
        return jNextLong + ((long) i2);
    }
}
