package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.cy4;
import defpackage.fx4;
import defpackage.jx4;
import defpackage.m61;
import defpackage.mt1;
import defpackage.n75;
import defpackage.ox4;
import defpackage.uy4;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class FirebaseAnalytics {
    public static volatile FirebaseAnalytics b;
    public final uy4 a;

    public FirebaseAnalytics(uy4 uy4Var) {
        Preconditions.checkNotNull(uy4Var);
        this.a = uy4Var;
    }

    public static FirebaseAnalytics getInstance(Context context) {
        if (b == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (b == null) {
                        b = new FirebaseAnalytics(uy4.e(context, null));
                    }
                } finally {
                }
            }
        }
        return b;
    }

    public static n75 getScionFrontendApiImplementation(Context context, Bundle bundle) {
        uy4 uy4VarE = uy4.e(context, bundle);
        if (uy4VarE == null) {
            return null;
        }
        return new fx4(uy4VarE);
    }

    public final void a(String str, Bundle bundle) {
        uy4 uy4Var = this.a;
        uy4Var.getClass();
        uy4Var.c(new cy4(uy4Var, (String) null, str, bundle, false));
    }

    public String getFirebaseInstanceId() {
        try {
            return (String) mt1.l(m61.d().c(), 30000L);
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        } catch (ExecutionException e2) {
            throw new IllegalStateException(e2.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @Deprecated
    public void setCurrentScreen(Activity activity, String str, String str2) {
        jx4 jx4VarY = jx4.Y(activity);
        uy4 uy4Var = this.a;
        uy4Var.getClass();
        uy4Var.c(new ox4(uy4Var, jx4VarY, str, str2));
    }
}
