package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import android.util.Log;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sn1 {
    public static final Pattern g = Pattern.compile("[^\\p{Alnum}]");
    public static final String h = Pattern.quote("/");
    public final sg0 a;
    public final Context b;
    public final String c;
    public final n61 d;
    public final bm0 e;
    public jo f;

    public sn1(Context context, String str, n61 n61Var, bm0 bm0Var) {
        if (context == null) {
            k21.f("appContext must not be null");
            throw null;
        }
        if (str == null) {
            k21.f("appIdentifier must not be null");
            throw null;
        }
        this.b = context;
        this.c = str;
        this.d = n61Var;
        this.e = bm0Var;
        this.a = new sg0(2);
    }

    public final synchronized String a(SharedPreferences sharedPreferences, String str) {
        String lowerCase;
        lowerCase = g.matcher(UUID.randomUUID().toString()).replaceAll("").toLowerCase(Locale.US);
        String str2 = "Created new Crashlytics installation ID: " + lowerCase + " for FID: " + str;
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", str2, null);
        }
        sharedPreferences.edit().putString("crashlytics.installation.id", lowerCase).putString("firebase.installation.id", str).apply();
        return lowerCase;
    }

    public final j61 b(boolean z) {
        String str;
        String str2 = null;
        if (Looper.getMainLooper().isCurrentThread()) {
            String str3 = "Must not be called on a main thread, was called on " + Thread.currentThread().getName() + '.';
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", str3, null);
            }
        }
        n61 n61Var = this.d;
        if (z) {
            try {
                str = ((lo) mt1.l(((m61) n61Var).e(), 10000L)).a;
            } catch (Exception e) {
                Log.w("FirebaseCrashlytics", "Error getting Firebase authentication token.", e);
                str = null;
            }
        } else {
            str = null;
        }
        try {
            str2 = (String) mt1.l(((m61) n61Var).c(), 10000L);
        } catch (Exception e2) {
            Log.w("FirebaseCrashlytics", "Error getting Firebase installation id.", e2);
        }
        return new j61(str2, str);
    }

    public final synchronized jo c() {
        String str;
        jo joVar = this.f;
        if (joVar != null && (joVar.b != null || !this.e.a())) {
            return this.f;
        }
        w13 w13Var = w13.H;
        w13Var.m("Determining Crashlytics installation ID...");
        SharedPreferences sharedPreferences = this.b.getSharedPreferences("com.google.firebase.crashlytics", 0);
        String string = sharedPreferences.getString("firebase.installation.id", null);
        w13Var.m("Cached Firebase Installation ID: " + string);
        if (this.e.a()) {
            j61 j61VarB = b(false);
            w13Var.m("Fetched Firebase Installation ID: " + j61VarB.a);
            if (j61VarB.a == null) {
                if (string == null) {
                    str = "SYN_" + UUID.randomUUID().toString();
                } else {
                    str = string;
                }
                j61VarB = new j61(str, null);
            }
            if (Objects.equals(j61VarB.a, string)) {
                this.f = new jo(sharedPreferences.getString("crashlytics.installation.id", null), j61VarB.a, j61VarB.b);
            } else {
                this.f = new jo(a(sharedPreferences, j61VarB.a), j61VarB.a, j61VarB.b);
            }
        } else if (string == null || !string.startsWith("SYN_")) {
            this.f = new jo(a(sharedPreferences, "SYN_" + UUID.randomUUID().toString()), null, null);
        } else {
            this.f = new jo(sharedPreferences.getString("crashlytics.installation.id", null), null, null);
        }
        w13Var.m("Install IDs: " + this.f);
        return this.f;
    }

    public final String d() {
        String str;
        sg0 sg0Var = this.a;
        Context context = this.b;
        synchronized (sg0Var) {
            try {
                if (sg0Var.o == null) {
                    String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                    if (installerPackageName == null) {
                        installerPackageName = "";
                    }
                    sg0Var.o = installerPackageName;
                }
                str = "".equals(sg0Var.o) ? null : sg0Var.o;
            } finally {
            }
        }
        return str;
    }
}
