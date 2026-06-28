package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v74 implements Runnable {
    public final /* synthetic */ ed0 n;
    public final /* synthetic */ hp o;
    public final /* synthetic */ int p;
    public final /* synthetic */ Runnable q;

    public /* synthetic */ v74(ed0 ed0Var, hp hpVar, int i, Runnable runnable) {
        this.n = ed0Var;
        this.o = hpVar;
        this.p = i;
        this.q = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final hp hpVar = this.o;
        final int i = this.p;
        Runnable runnable = this.q;
        final ed0 ed0Var = this.n;
        ob3 ob3Var = (ob3) ed0Var.f;
        try {
            try {
                ob3 ob3Var2 = (ob3) ed0Var.d;
                Objects.requireNonNull(ob3Var2);
                ob3Var.B(new w74(ob3Var2, 1));
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) ((Context) ed0Var.a).getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    ob3Var.B(new mv3() { // from class: x74
                        @Override // defpackage.mv3
                        public final Object b() {
                            ((eh) ed0Var.e).F(hpVar, i + 1, false);
                            return null;
                        }
                    });
                } else {
                    ed0Var.g(hpVar, i);
                }
                runnable.run();
            } catch (lv3 unused) {
                ((eh) ed0Var.e).F(hpVar, i + 1, false);
                runnable.run();
            }
        } catch (Throwable th) {
            runnable.run();
            throw th;
        }
    }
}
