package defpackage;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s90 extends p6 {
    public final /* synthetic */ u90 h;

    public s90(u90 u90Var) {
        this.h = u90Var;
    }

    @Override // defpackage.p6
    public final void b(int i, g6 g6Var, Object obj) {
        Bundle bundleExtra;
        int i2;
        g6Var.getClass();
        u90 u90Var = this.h;
        i3 i3VarB = g6Var.b(u90Var, obj);
        if (i3VarB != null) {
            new Handler(Looper.getMainLooper()).post(new qt(i, 1, this, i3VarB));
            return;
        }
        Intent intentA = g6Var.a(u90Var, obj);
        if (intentA.getExtras() != null) {
            Bundle extras = intentA.getExtras();
            extras.getClass();
            if (extras.getClassLoader() == null) {
                intentA.setExtrasClassLoader(u90Var.getClassLoader());
            }
        }
        if (intentA.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
            bundleExtra = intentA.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            intentA.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
        } else {
            bundleExtra = null;
        }
        Bundle bundle = bundleExtra;
        if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(intentA.getAction())) {
            String[] stringArrayExtra = intentA.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            if (stringArrayExtra == null) {
                stringArrayExtra = new String[0];
            }
            k75.J(u90Var, stringArrayExtra, i);
            return;
        }
        if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(intentA.getAction())) {
            u90Var.startActivityForResult(intentA, i, bundle);
            return;
        }
        us1 us1Var = (us1) intentA.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
        try {
            us1Var.getClass();
            i2 = i;
        } catch (IntentSender.SendIntentException e) {
            e = e;
            i2 = i;
        }
        try {
            u90Var.startIntentSenderForResult(us1Var.n, i2, us1Var.o, us1Var.p, us1Var.q, 0, bundle);
        } catch (IntentSender.SendIntentException e2) {
            e = e2;
            new Handler(Looper.getMainLooper()).post(new qt(i2, 2, this, e));
        }
    }
}
