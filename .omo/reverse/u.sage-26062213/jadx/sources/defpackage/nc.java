package defpackage;

import android.os.Handler;
import android.view.Choreographer;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nc extends ji0 {
    public final Choreographer p;
    public final Handler q;
    public boolean v;
    public boolean w;
    public final qc y;
    public static final nv3 z = new nv3(da.x);
    public static final lc A = new lc(0);
    public final Object r = new Object();
    public final vh s = new vh();
    public ArrayList t = new ArrayList();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ArrayList f220u = new ArrayList();
    public final mc x = new mc(this);

    public nc(Choreographer choreographer, Handler handler) {
        this.p = choreographer;
        this.q = handler;
        this.y = new qc(choreographer, this);
    }

    public static final void r0(nc ncVar) {
        Runnable runnable;
        boolean z2;
        do {
            synchronized (ncVar.r) {
                vh vhVar = ncVar.s;
                runnable = (Runnable) (vhVar.isEmpty() ? null : vhVar.removeFirst());
            }
            while (runnable != null) {
                runnable.run();
                synchronized (ncVar.r) {
                    vh vhVar2 = ncVar.s;
                    runnable = (Runnable) (vhVar2.isEmpty() ? null : vhVar2.removeFirst());
                }
            }
            synchronized (ncVar.r) {
                if (ncVar.s.isEmpty()) {
                    z2 = false;
                    ncVar.v = false;
                } else {
                    z2 = true;
                }
            }
        } while (z2);
    }

    @Override // defpackage.ji0
    public final void n0(hi0 hi0Var, Runnable runnable) {
        synchronized (this.r) {
            this.s.addLast(runnable);
            if (!this.v) {
                this.v = true;
                this.q.post(this.x);
                if (!this.w) {
                    this.w = true;
                    this.p.postFrameCallback(this.x);
                }
            }
        }
    }
}
