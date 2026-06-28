package com.google.android.gms.measurement.api;

import android.content.Context;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.by4;
import defpackage.cy4;
import defpackage.dw4;
import defpackage.py4;
import defpackage.tx4;
import defpackage.uy4;
import defpackage.ww4;
import defpackage.wx4;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class AppMeasurementSdk {
    public final uy4 a;

    public AppMeasurementSdk(uy4 uy4Var) {
        this.a = uy4Var;
    }

    public static AppMeasurementSdk getInstance(Context context) {
        return uy4.e(context, null).c;
    }

    public final void a(ww4 ww4Var) {
        uy4 uy4Var = this.a;
        Preconditions.checkNotNull(ww4Var);
        ArrayList arrayList = uy4Var.d;
        synchronized (arrayList) {
            for (int i = 0; i < arrayList.size(); i++) {
                try {
                    if (ww4Var.equals(((Pair) arrayList.get(i)).first)) {
                        Log.w("FA", "OnEventListener already registered.");
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            py4 py4Var = new py4(ww4Var);
            arrayList.add(new Pair(ww4Var, py4Var));
            if (uy4Var.g != null) {
                try {
                    uy4Var.g.registerOnMeasurementEventListener(py4Var);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w("FA", "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            uy4Var.c(new tx4(uy4Var, py4Var, 3));
        }
    }

    public void beginAdUnitExposure(String str) {
        uy4 uy4Var = this.a;
        uy4Var.c(new wx4(uy4Var, str, 0));
    }

    public void endAdUnitExposure(String str) {
        uy4 uy4Var = this.a;
        uy4Var.c(new wx4(uy4Var, str, 1));
    }

    public long generateEventId() {
        return this.a.g();
    }

    public String getAppInstanceId() {
        dw4 dw4Var = new dw4();
        uy4 uy4Var = this.a;
        uy4Var.c(new by4(uy4Var, dw4Var, 1));
        return (String) dw4.G(dw4Var.F(50L), String.class);
    }

    public String getGmpAppId() {
        dw4 dw4Var = new dw4();
        uy4 uy4Var = this.a;
        uy4Var.c(new by4(uy4Var, dw4Var, 0));
        return (String) dw4.G(dw4Var.F(500L), String.class);
    }

    public void logEvent(String str, String str2, Bundle bundle) {
        uy4 uy4Var = this.a;
        uy4Var.c(new cy4(uy4Var, str, str2, bundle, true));
    }
}
