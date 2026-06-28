package defpackage;

import android.app.PendingIntent;
import android.content.Context;
import android.content.IntentSender;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k05 {
    public final wc5 a;
    public final Context b;

    public k05(wc5 wc5Var, Context context) {
        new Handler(Looper.getMainLooper());
        this.a = wc5Var;
        this.b = context;
    }

    public static void b(fh fhVar, i6 i6Var, sf5 sf5Var) {
        if (fhVar == null || i6Var == null) {
            return;
        }
        PendingIntent pendingIntent = fhVar.b;
        if ((pendingIntent != null ? pendingIntent : null) == null || fhVar.c) {
            return;
        }
        fhVar.c = true;
        if (pendingIntent == null) {
            pendingIntent = null;
        }
        IntentSender intentSender = pendingIntent.getIntentSender();
        intentSender.getClass();
        i6Var.a(new us1(intentSender, null, 0, 0));
    }

    public final ef5 a() {
        String packageName = this.b.getPackageName();
        sg0 sg0Var = wc5.e;
        wc5 wc5Var = this.a;
        tf5 tf5Var = wc5Var.a;
        if (tf5Var == null) {
            Object[] objArr = {-9};
            sg0Var.getClass();
            if (Log.isLoggable("PlayCore", 6)) {
                Log.e("PlayCore", sg0.c(sg0Var.o, "onError(%d)", objArr));
            }
            return mt1.s(new xr1(-9));
        }
        sg0Var.a("requestUpdateInfo(%s)", packageName);
        pw3 pw3Var = new pw3();
        tf5Var.a().post(new d85(tf5Var, pw3Var, pw3Var, new d85(wc5Var, pw3Var, packageName, pw3Var)));
        return pw3Var.a;
    }
}
