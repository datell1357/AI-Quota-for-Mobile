package defpackage;

import android.view.Choreographer;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mc implements Choreographer.FrameCallback, Runnable {
    public final /* synthetic */ nc n;

    public mc(nc ncVar) {
        this.n = ncVar;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.n.q.removeCallbacks(this);
        nc.r0(this.n);
        nc ncVar = this.n;
        synchronized (ncVar.r) {
            if (ncVar.w) {
                ncVar.w = false;
                ArrayList arrayList = ncVar.t;
                ncVar.t = ncVar.f220u;
                ncVar.f220u = arrayList;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((Choreographer.FrameCallback) arrayList.get(i)).doFrame(j);
                }
                arrayList.clear();
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        nc.r0(this.n);
        nc ncVar = this.n;
        synchronized (ncVar.r) {
            if (ncVar.t.isEmpty()) {
                ncVar.p.removeFrameCallback(this);
                ncVar.w = false;
            }
        }
    }
}
