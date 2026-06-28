package defpackage;

import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i8 implements ux, k8, xq0 {
    public final /* synthetic */ j8 n;

    public /* synthetic */ i8(j8 j8Var) {
        this.n = j8Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.xq0
    public void a(n03 n03Var) {
        j8 j8Var = this.n;
        w13 w13Var = w13.H;
        w13Var.e("AnalyticsConnector now available.");
        g8 g8Var = (g8) n03Var.get();
        dh1 dh1Var = new dh1(g8Var);
        int i = 0;
        gw4 gw4Var = new gw4(14, (boolean) (0 == true ? 1 : 0));
        h8 h8Var = (h8) g8Var;
        qv3 qv3VarB = h8Var.b("clx", gw4Var);
        if (qv3VarB == null) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Could not register AnalyticsConnectorListener with Crashlytics origin.", null);
            }
            qv3VarB = h8Var.b("crash", gw4Var);
            if (qv3VarB != null) {
                Log.w("FirebaseCrashlytics", "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.", null);
            }
        }
        if (qv3VarB == null) {
            w13Var.n("Could not register Firebase Analytics listener; a listener is already registered.", null);
            return;
        }
        w13Var.e("Registered Firebase Analytics listener.");
        wu4 wu4Var = new wu4(11, false);
        eh ehVar = new eh(dh1Var);
        synchronized (j8Var) {
            try {
                ArrayList arrayList = (ArrayList) j8Var.a;
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    wu4Var.c((hj0) obj);
                }
                gw4Var.p = wu4Var;
                gw4Var.o = ehVar;
                j8Var.c = wu4Var;
                j8Var.b = ehVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.ux
    public void c(hj0 hj0Var) {
        j8 j8Var = this.n;
        synchronized (j8Var) {
            try {
                if (((ux) j8Var.c) instanceof lu0) {
                    ((ArrayList) j8Var.a).add(hj0Var);
                }
                ((ux) j8Var.c).c(hj0Var);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.k8
    public void j(Bundle bundle) {
        ((k8) this.n.b).j(bundle);
    }
}
