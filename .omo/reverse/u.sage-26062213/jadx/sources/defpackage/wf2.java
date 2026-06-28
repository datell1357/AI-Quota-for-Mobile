package defpackage;

import android.os.Looper;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class wf2 extends c52 {
    @Override // defpackage.c52
    public void h(Object obj) {
        c52.a("setValue");
        this.g++;
        this.e = obj;
        c(null);
    }

    public final void i(Object obj) {
        boolean z;
        synchronized (this.a) {
            z = this.f == c52.k;
            this.f = obj;
        }
        if (z) {
            nh nhVarT = nh.T();
            o9 o9Var = this.j;
            rq0 rq0Var = nhVarT.P;
            if (rq0Var.R == null) {
                synchronized (rq0Var.P) {
                    try {
                        if (rq0Var.R == null) {
                            rq0Var.R = rq0.T(Looper.getMainLooper());
                        }
                    } finally {
                    }
                }
            }
            rq0Var.R.post(o9Var);
        }
    }
}
