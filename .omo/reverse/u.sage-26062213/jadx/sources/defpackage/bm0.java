package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bm0 {
    public final e61 a;
    public final boolean d;
    public final Boolean e;
    public final Object b = new Object();
    public final pw3 c = new pw3();
    public final pw3 f = new pw3();

    public bm0(e61 e61Var) {
        Boolean boolValueOf;
        PackageManager packageManager;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        this.d = false;
        e61Var.a();
        Context context = e61Var.a;
        this.a = e61Var;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.crashlytics", 0);
        if (sharedPreferences.contains("firebase_crashlytics_collection_enabled")) {
            this.d = false;
            boolValueOf = Boolean.valueOf(sharedPreferences.getBoolean("firebase_crashlytics_collection_enabled", true));
        } else {
            boolValueOf = null;
        }
        if (boolValueOf == null) {
            try {
                packageManager = context.getPackageManager();
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("FirebaseCrashlytics", "Could not read data collection permission from manifest", e);
            }
            Boolean boolValueOf2 = (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_crashlytics_collection_enabled")) ? null : Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled"));
            if (boolValueOf2 == null) {
                this.d = false;
                boolValueOf = null;
            } else {
                this.d = true;
                boolValueOf = Boolean.valueOf(Boolean.TRUE.equals(boolValueOf2));
            }
        }
        this.e = boolValueOf;
        synchronized (this.b) {
            try {
                if (a()) {
                    this.c.d(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized boolean a() {
        boolean zBooleanValue;
        boolean z;
        Boolean bool = this.e;
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        } else {
            try {
                e61 e61Var = this.a;
                e61Var.a();
                cm0 cm0Var = (cm0) e61Var.g.get();
                synchronized (cm0Var) {
                    z = cm0Var.a;
                }
                zBooleanValue = z;
            } catch (IllegalStateException unused) {
                zBooleanValue = false;
            }
        }
        String strR = xw1.r("Crashlytics automatic data collection ", zBooleanValue ? "ENABLED" : "DISABLED", " by ", this.e == null ? "global Firebase setting" : this.d ? "firebase_crashlytics_collection_enabled manifest flag" : "API", ".");
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", strR, null);
        }
        return zBooleanValue;
    }
}
