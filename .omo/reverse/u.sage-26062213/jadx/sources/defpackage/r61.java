package defpackage;

import android.util.Log;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r61 implements wt3, eh0 {
    public final /* synthetic */ s61 n;

    public /* synthetic */ r61(s61 s61Var) {
        this.n = s61Var;
    }

    @Override // defpackage.eh0
    public Object then(ow3 ow3Var) {
        boolean z;
        s61 s61Var = this.n;
        if (ow3Var.j()) {
            yc0 yc0Var = s61Var.c;
            synchronized (yc0Var) {
                yc0Var.c = mt1.t(null);
            }
            kd0 kd0Var = yc0Var.b;
            synchronized (kd0Var) {
                kd0Var.a.deleteFile(kd0Var.b);
            }
            ad0 ad0Var = (ad0) ow3Var.g();
            z = true;
            if (ad0Var != null) {
                JSONArray jSONArray = ad0Var.d;
                a61 a61Var = s61Var.a;
                if (a61Var != null) {
                    try {
                        a61Var.c(s61.f(jSONArray));
                    } catch (m2 e) {
                        Log.w("FirebaseRemoteConfig", "Could not update ABT experiments.", e);
                    } catch (JSONException e2) {
                        Log.e("FirebaseRemoteConfig", "Could not parse ABT experiments from the JSON response.", e2);
                    }
                }
                qd1 qd1Var = s61Var.j;
                try {
                    xo xoVarO = ((xh1) qd1Var.p).o(ad0Var);
                    Iterator it = ((Set) qd1Var.r).iterator();
                    while (it.hasNext()) {
                        ((Executor) qd1Var.q).execute(new ba3((kj0) it.next(), xoVarO, 1));
                    }
                } catch (u61 e3) {
                    Log.w("FirebaseRemoteConfig", "Exception publishing RolloutsState to subscribers. Continuing to listen for changes.", e3);
                }
            } else {
                Log.e("FirebaseRemoteConfig", "Activated configs written to disk are null.");
            }
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    @Override // defpackage.wt3
    public ow3 then(Object obj) {
        return this.n.a();
    }
}
