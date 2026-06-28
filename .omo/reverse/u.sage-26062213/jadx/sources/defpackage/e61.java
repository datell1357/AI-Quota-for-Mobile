package defpackage;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Trace;
import android.util.Log;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.provider.FirebaseInitProvider;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e61 {
    public static final Object k = new Object();
    public static final di l = new di(0);
    public final Context a;
    public final String b;
    public final q61 c;
    public final ga0 d;
    public final rz1 g;
    public final n03 h;
    public final AtomicBoolean e = new AtomicBoolean(false);
    public final AtomicBoolean f = new AtomicBoolean();
    public final CopyOnWriteArrayList i = new CopyOnWriteArrayList();
    public final CopyOnWriteArrayList j = new CopyOnWriteArrayList();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.util.List] */
    public e61(Context context, String str, q61 q61Var) {
        ?? arrayList;
        int i = 0;
        this.a = (Context) Preconditions.checkNotNull(context);
        this.b = Preconditions.checkNotEmpty(str);
        this.c = (q61) Preconditions.checkNotNull(q61Var);
        ap apVar = FirebaseInitProvider.n;
        Trace.beginSection("Firebase");
        Trace.beginSection("ComponentDiscovery");
        ArrayList arrayList2 = new ArrayList();
        Bundle bundle = null;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                Log.w("ComponentDiscovery", "Context has no PackageManager.");
            } else {
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) ComponentDiscoveryService.class), 128);
                if (serviceInfo == null) {
                    Log.w("ComponentDiscovery", ComponentDiscoveryService.class + " has no service info.");
                } else {
                    bundle = serviceInfo.metaData;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("ComponentDiscovery", "Application info not found.");
        }
        if (bundle == null) {
            Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
            arrayList = Collections.EMPTY_LIST;
        } else {
            arrayList = new ArrayList();
            for (String str2 : bundle.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(bundle.get(str2)) && str2.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str2.substring(31));
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new z90(i, (String) it.next()));
        }
        Trace.endSection();
        Trace.beginSection("Runtime");
        h64 h64Var = h64.n;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        arrayList3.addAll(arrayList2);
        int i2 = 1;
        arrayList3.add(new z90(i2, new FirebaseCommonRegistrar()));
        arrayList3.add(new z90(i2, new ExecutorsRegistrar()));
        arrayList4.add(i90.c(context, Context.class, new Class[0]));
        arrayList4.add(i90.c(this, e61.class, new Class[0]));
        arrayList4.add(i90.c(q61Var, q61.class, new Class[0]));
        qv3 qv3Var = new qv3(19);
        if (w80.D(context) && FirebaseInitProvider.o.get()) {
            arrayList4.add(i90.c(apVar, ap.class, new Class[0]));
        }
        ga0 ga0Var = new ga0(arrayList3, arrayList4, qv3Var);
        this.d = ga0Var;
        Trace.endSection();
        this.g = new rz1(new fa0(2, this, context));
        this.h = ga0Var.g(yo0.class);
        b61 b61Var = new b61(this);
        a();
        if (this.e.get()) {
            BackgroundDetector.getInstance().isInBackground();
        }
        this.i.add(b61Var);
        Trace.endSection();
    }

    public static e61 b() {
        e61 e61Var;
        synchronized (k) {
            try {
                e61Var = (e61) l.get("[DEFAULT]");
                if (e61Var == null) {
                    throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + ProcessUtils.getMyProcessName() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
                }
                ((yo0) e61Var.h.get()).b();
            } catch (Throwable th) {
                throw th;
            }
        }
        return e61Var;
    }

    public static e61 e(Context context) {
        synchronized (k) {
            try {
                if (l.containsKey("[DEFAULT]")) {
                    return b();
                }
                q61 q61VarA = q61.a(context);
                if (q61VarA == null) {
                    Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                    return null;
                }
                return f(context, q61VarA);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static e61 f(Context context, q61 q61Var) {
        e61 e61Var;
        AtomicReference atomicReference = c61.a;
        if (PlatformVersion.isAtLeastIceCreamSandwich() && (context.getApplicationContext() instanceof Application)) {
            Application application = (Application) context.getApplicationContext();
            AtomicReference atomicReference2 = c61.a;
            if (atomicReference2.get() == null) {
                c61 c61Var = new c61();
                while (true) {
                    if (atomicReference2.compareAndSet(null, c61Var)) {
                        BackgroundDetector.initialize(application);
                        BackgroundDetector.getInstance().addListener(c61Var);
                        break;
                    }
                    if (atomicReference2.get() != null) {
                        break;
                    }
                }
            }
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (k) {
            di diVar = l;
            Preconditions.checkState(!diVar.containsKey("[DEFAULT]"), "FirebaseApp name [DEFAULT] already exists!");
            Preconditions.checkNotNull(context, "Application context cannot be null.");
            e61Var = new e61(context, "[DEFAULT]", q61Var);
            diVar.put("[DEFAULT]", e61Var);
        }
        e61Var.d();
        return e61Var;
    }

    public final void a() {
        Preconditions.checkState(!this.f.get(), "FirebaseApp was deleted");
    }

    public final String c() {
        StringBuilder sb = new StringBuilder();
        a();
        sb.append(Base64Utils.encodeUrlSafeNoPadding(this.b.getBytes(Charset.defaultCharset())));
        sb.append("+");
        a();
        sb.append(Base64Utils.encodeUrlSafeNoPadding(this.c.b.getBytes(Charset.defaultCharset())));
        return sb.toString();
    }

    public final void d() {
        HashMap map;
        if (!w80.D(this.a)) {
            StringBuilder sb = new StringBuilder("Device in Direct Boot Mode: postponing initialization of Firebase APIs for app ");
            a();
            sb.append(this.b);
            Log.i("FirebaseApp", sb.toString());
            Context context = this.a;
            AtomicReference atomicReference = d61.b;
            if (atomicReference.get() == null) {
                d61 d61Var = new d61(context);
                while (!atomicReference.compareAndSet(null, d61Var)) {
                    if (atomicReference.get() != null) {
                        return;
                    }
                }
                context.registerReceiver(d61Var, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                return;
            }
            return;
        }
        StringBuilder sb2 = new StringBuilder("Device unlocked: initializing all Firebase APIs for app ");
        a();
        sb2.append(this.b);
        Log.i("FirebaseApp", sb2.toString());
        ga0 ga0Var = this.d;
        a();
        boolean zEquals = "[DEFAULT]".equals(this.b);
        AtomicReference atomicReference2 = (AtomicReference) ga0Var.f;
        Boolean boolValueOf = Boolean.valueOf(zEquals);
        while (true) {
            if (atomicReference2.compareAndSet(null, boolValueOf)) {
                synchronized (ga0Var) {
                    map = new HashMap((HashMap) ga0Var.a);
                }
                ga0Var.j(map, zEquals);
                break;
            } else if (atomicReference2.get() != null) {
                break;
            }
        }
        ((yo0) this.h.get()).b();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof e61)) {
            return false;
        }
        e61 e61Var = (e61) obj;
        e61Var.a();
        return this.b.equals(e61Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return Objects.toStringHelper(this).add("name", this.b).add("options", this.c).toString();
    }
}
