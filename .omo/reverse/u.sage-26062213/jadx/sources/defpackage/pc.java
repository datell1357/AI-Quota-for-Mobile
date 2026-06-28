package defpackage;

import android.view.Choreographer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pc implements Choreographer.FrameCallback {
    public final /* synthetic */ o20 n;
    public final /* synthetic */ pe1 o;

    public pc(o20 o20Var, qc qcVar, pe1 pe1Var) {
        this.n = o20Var;
        this.o = pe1Var;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        Object f83Var;
        try {
            f83Var = this.o.k(Long.valueOf(j));
        } catch (Throwable th) {
            f83Var = new f83(th);
        }
        this.n.g(f83Var);
    }
}
